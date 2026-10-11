# VibeWare app publication rules

Apply these rules to applications created by Umberto Giacobbi. Other authors must adapt authorship, links and privacy statements to their own projects. Each repository owns its implementation, license and verification evidence.

## Main window footer

Provide a discreet, centered navigation row: **About {AppName} · Terms · Privacy**. About opens the application's About window. Terms and Privacy open the supplied HTTPS pages in the default browser only after the user clicks them.

Keep **This is VibeWare · Manifesto** on one line. Use the canonical [VibeWare manifesto](https://umbertogiacobbi.biz/vibeware/manifesto). Do not describe the app as made by an unspecified collective or turn the footer into an advertisement. Allow a separate row on narrow windows; never clip links.

## About window

Show the product name, installed version, a short explanation of its purpose and the following disclosure, adapted to the actual app:

> I created this software with AI assistance. I define its purpose, guide the implementation, and take responsibility for checking functionality, performance, and security.

Use **This is VibeWare** as the disclosure heading. Explain in the first person that VibeWare is my initiative, and invite readers to read the manifesto to understand what it means and why I created it. This states responsibility; it does not claim that every release has passed all checks.

Keep these three links: **{AppName} on GitHub · VibeWare on GitHub · umbertogiacobbi.biz**. Use a recognizable GitHub icon for repository links, a website icon for the personal site and a document icon for the manifesto. Avoid literal outward arrows. Include any required third-party icon license notices.

Add a centered **Terms · Privacy** row and an accessible Close button. Links must remain readable with display scaling and keyboard navigation.

## Canonical links

- Manifesto: https://umbertogiacobbi.biz/vibeware/manifesto
- VibeWare repository: https://github.com/umbertotechnopreneur/VibeWare
- Personal site: https://umbertogiacobbi.biz
- Terms: https://umbertogiacobbi.biz/terms/
- Privacy: https://umbertogiacobbi.biz/privacy/
- Application repository: use that application's actual repository URL.

## Release and Store checks

1. Check that privacy and terms explicitly cover the product before Store submission. Document its real permissions, local storage and external services; do not copy another app's data claims.
2. Keep the app's license and third-party notices available. Terms must not silently replace the repository license.
3. Describe native technology, memory, performance and disk space accurately. State optimization priorities and ongoing work; publish numerical claims only with measurements and context.
4. Keep local test signing separate from Microsoft Store identity. Verify the packaged manifest's identity, publisher, architecture and version against Partner Center.
5. Provide current screenshots, listing copy and certification instructions. Label test results accurately: compilation, installation, native UI, audio behavior, clean machine and certification are distinct checks.
6. When an installer is requested, build the package, stop the running app, install it, verify version and deployment status, then restart with sensitive capture off. Explicit compile-only instructions take precedence. Manage virtual machines only when separately authorized.
7. Record shared conventions in each repository's AGENTS.md or release guidance; a central template does not automatically update other repositories.

## Discord release message

Prepare a short message containing the app's purpose, what changed, download or Store link, repository, manifesto, Terms and Privacy, plus relevant test limitations. Keep private paths, credentials and runtime data out of the message. Publish to Discord only when explicitly requested; preparing this template does not authorize sending messages.
