# Agent instructions

## Scope and orientation

This is Umberto Giacobbi's VibeWare brand repository. It holds the manifesto,
brand artwork, press kit, asset provenance and source-header proposal. The
portable Photo Organizer is maintained in a separate workspace; an Ai-Toolbox
handover does not authorize importing that application here.

Read `README.md`, `PROJECT-CONTEXT.md` and the documents relevant to the
requested change before editing. For artwork, press assets, distribution and
reuse, also read `PRESS-KIT.md` and `LICENSE`.

Speak with the owner in Italian. Write repository documentation in English
unless the owner requests another language.

## Working practice

- Inspect Git status first and preserve existing tracked and untracked work.
- Make focused changes within the user's request. Do not manufacture feature
  requests, migrate another project or process media archives from a handover.
- Keep private inventories, source-media descriptions, logs, credentials and
  application runtime data out of this public repository.
- Do not install dependencies, rebuild media or start the external application
  merely to initialize or edit documentation.
- Validate Markdown links and review the final diff for documentation changes.
  Regenerate assets only when the requested work requires it, and inspect the
  resulting media before claiming the change is complete.
- Report current checks separately from historical reports and unresolved
  runtime, installation, hardware or publishing checks.
- When adding or modifying functions, put one separate comment line above the
  function for each parameter and each applicable exception; explain non-obvious
  behavior inside the function.
- If delivering a requested commit, documentation-only work can be committed
  directly with `[skip ci]`; code changes use a pull request. Follow the user's
  explicit delivery scope and do not infer publication from local changes.

## Brand and asset constraints

- Preserve the spelling **VibeWare**, creator **Umberto Giacobbi**, and primary
  tagline: `VibeWare = Human intent, AI, and plenty of tokens ;-)`.
- The approved source is `Branding/vibeware-logo.png`. Preserve its original
  pixels, colors, dimensions and transparent canvas. Derivatives must remain
  identifiable as derivatives.
- Follow 1980s computing, lo-fi and pixel art, without neon effects. Archived
  alternatives and wordmark candidates do not replace the approved floppy.
- Preserve the transparent floppy animation's centered insertion, foreground
  placement over the lower white bezel and progressive masking inside the dark
  slot. Its rebuild script is `tools/Build-FloppyAnimation.ps1`.
- Keep third-party motion references local unless redistribution rights are
  established. Do not describe raster assets as SVG or vector masters.
- Do not imply universal AI usage, human review, endorsement or verified quality.

## Publication and related software

The canonical manifesto URL is
`https://umbertogiacobbi.biz/vibeware/manifesto`, supplied by the owner. Use it
in documentation and source-header templates. Accept this address as given;
do not check its availability unless the owner requests verification.
The source-header text remains a proposal until explicitly applied to a named
project.

The repository's MIT materials do not establish redistribution rights for the
separate application's icons, fonts, models or other dependencies. Check the
application's own license and attribution before packaging it.

For Photo Organizer work, read its own README, applicable agent instructions
and the owner's dated handover in that workspace. Preserve the current
no-build/no-restart boundary until the owner requests work that changes it.
Original cleanup requires the application's exact persisted preview,
verification and confirmation workflow; never substitute permanent deletion.
