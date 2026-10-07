param(
    [string]$ProjectRoot = (Split-Path -Parent $PSScriptRoot)
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing
$ffmpeg = (Get-Command ffmpeg -ErrorAction Stop).Source
$assetDirectory = Join-Path $ProjectRoot 'press-kit\assets\boot'
$frameDirectory = Join-Path $ProjectRoot 'tmp\floppy-animation'
[void][System.IO.Directory]::CreateDirectory($frameDirectory)
$logo = [System.Drawing.Image]::FromFile((Join-Path $ProjectRoot 'Branding\vibeware-logo.png'))
$slot = [System.Drawing.Image]::FromFile((Join-Path $assetDirectory 'vibeware-slot-imagegen.png'))

# Crop actual artwork bounds, excluding the transparent margins of both sources.
$diskSource = [System.Drawing.Rectangle]::new(326, 220, 616, 590)
$slotSource = [System.Drawing.Rectangle]::new(616, 356, 543, 164)
$slotDestination = [System.Drawing.Rectangle]::new(96, 72, 128, 39)
# The opening (not the wider outer bezel) spans exactly the disk's width.
$diskX = 107
$diskWidth = 106
$diskHeight = 102
# Hide the disk inside the dark opening, above the white lower bezel.
$insertionLine = 94
$frameCount = 42
$frameRate = 12

try {
    for ($frame = 0; $frame -lt $frameCount; $frame++) {
        # Hold outside, insert over 24 frames, then hold with the disk fully hidden.
        $progress = [Math]::Clamp(($frame - 6) / 24.0, 0.0, 1.0)
        $diskY = [int][Math]::Round(116 - (116 + $diskHeight - $insertionLine) * $progress)
        $canvas = [System.Drawing.Bitmap]::new(320, 240, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
        $graphics = [System.Drawing.Graphics]::FromImage($canvas)
        try {
            $graphics.Clear([System.Drawing.Color]::Transparent)
            $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::NearestNeighbor
            $graphics.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::Half
            $graphics.CompositingMode = [System.Drawing.Drawing2D.CompositingMode]::SourceOver

            # Draw the reader first: the approaching disk passes in front of its lower bezel.
            $graphics.DrawImage($slot, $slotDestination, $slotSource, [System.Drawing.GraphicsUnit]::Pixel)
            # Only the part entering the dark opening disappears.
            $graphics.SetClip([System.Drawing.Rectangle]::new(0, $insertionLine, 320, 240 - $insertionLine))
            $diskDestination = [System.Drawing.Rectangle]::new($diskX, $diskY, $diskWidth, $diskHeight)
            $graphics.DrawImage($logo, $diskDestination, $diskSource, [System.Drawing.GraphicsUnit]::Pixel)
            $graphics.ResetClip()
            $canvas.Save((Join-Path $frameDirectory ('frame-{0:D3}.png' -f $frame)), [System.Drawing.Imaging.ImageFormat]::Png)
        } finally {
            $graphics.Dispose()
            $canvas.Dispose()
        }
    }
} finally {
    $logo.Dispose()
    $slot.Dispose()
}

$output = Join-Path $assetDirectory 'vibeware-floppy-insert-transparent.gif'
# Full frames avoid stale pixels from the previous disk position on transparent players.
& $ffmpeg -hide_banner -loglevel error -y -framerate $frameRate -i (Join-Path $frameDirectory 'frame-%03d.png') -frames:v $frameCount -filter_complex '[0:v]split[a][b];[a]palettegen=reserve_transparent=1:stats_mode=full[p];[b][p]paletteuse=dither=none:alpha_threshold=128' -gifflags 0 -loop 0 $output
if ($LASTEXITCODE -ne 0) { throw 'FFmpeg could not encode the floppy animation.' }
Write-Output "Created $output ($frameCount frames, opening and disk width $diskWidth px)."
