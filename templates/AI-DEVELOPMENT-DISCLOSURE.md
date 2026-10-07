# AI development disclosure

> A VibeWare template for describing how AI contributed to a software project, how people guided the work and what was actually checked.

<!-- Replace every bracketed field. Remove sections that do not apply. Describe only work and checks that can be supported by evidence. -->

## Project and scope

- **Project:** [Project name]
- **Repository:** [Repository URL]
- **Maintainer:** [Name or team]
- **Disclosure date:** [Date]
- **Applies to:** [Release, version, branch, commit or other defined scope]

## Human intent

[Describe the problem, the intended outcome and the main constraints defined by the people responsible for the project.]

The following decisions remained under human direction:

- [Product goals and priorities]
- [Architecture and design decisions]
- [Security, privacy or licensing requirements]
- [Acceptance criteria]

## AI execution

AI contributed to the following work:

- [Code generation or modification]
- [Tests or test design]
- [Documentation]
- [Analysis, debugging or review]
- [Other contribution]

| Tool or service | Model or version, if known | Role in the project | Scope of use |
| --- | --- | --- | --- |
| [Tool] | [Model or version] | [What it did] | [Files, components or tasks] |

## Human review and responsibility

[Explain who reviewed the AI-produced work, how they evaluated it and who accepted the final result.]

The people responsible for the project retained control over what entered the codebase and remain accountable for the released work.

## Checks performed

Mark only checks completed for the scope named above and link to evidence where it is available.

- [ ] Human code review
- [ ] Build or compilation
- [ ] Automated tests
- [ ] Manual or exploratory tests
- [ ] Static analysis or linting
- [ ] Security review
- [ ] Privacy or data-handling review
- [ ] Dependency and license review
- [ ] Performance or resource checks
- [ ] Accessibility review

**Evidence:** [Pull requests, test reports, CI runs, validation records or reproducible commands]

## Known limitations and unverified areas

- [Known limitation]
- [Behavior, environment or platform not yet verified]
- [Risk that still requires follow-up]

## Disclosure statement

This project was developed with AI under human direction. This disclosure records the known AI contribution, human review and completed checks for the stated scope. It should be updated when the project, tools or available evidence materially change.

Learn more in the [VibeWare manifesto](https://umbertogiacobbi.biz/vibeware/manifesto).
