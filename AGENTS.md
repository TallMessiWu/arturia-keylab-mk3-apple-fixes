# Development guide

## Scope

Community fixes for Arturia KeyLab mk3 49/61/88 on Logic Pro and MainStage.
`profiles/logic` and `profiles/mainstage` are separate variants installed into the same
user MIDI Device Profiles location. Never combine their mappings or install both variants together.
Do not install on the developer's computer or change DAW preferences as part of a source-only task.

## Repository layout

- `profiles/<host>/KeyLab <model> mk3.device/config.lua`: editable source.
- `downloads/`: tested DMGs and SHA-256 checksums, linked directly from the README.
- `tests/check_profiles.py`: Lua 5.2 regression checks using Lupa.
- `scripts/verify_packages.py`: compares source with a mounted package.
- `README.md`: default English guide; `README.zh-CN.md`: matching Chinese guide.
- `.agents/skills/gitmoji-commit/SKILL.md`: project-local Chinese commit workflow.

## Editing

1. Read the affected source and current documentation before making changes.
2. Preserve upstream copyright headers. Do not claim an open-source license for upstream files.
3. Apply shared fixes to all three models, preserving model-specific ports/metadata.
4. Keep `action_mainstage`, `action_mainstagecs` and `action_mainstagecreatorstudio` aligned.
5. Verify Logic command IDs in the actual target host; numeric IDs are not a compatibility guarantee.
6. MainStage targets depend on concert layouts. Do not turn a personal manual assignment into a
   claimed universal default. Keep main-encoder GUI behavior distinct between the two hosts.
7. First-use Arturia mode entry is an unresolved observation. Do not force DAW mode or disable
   plug-in handshakes without evidence and a test of intentional Arturia-mode entry/exit.
8. Never publish MIDI captures, personal concerts/projects, preferences, disassembly, credentials
   or machine-specific paths. Keep diagnostics out of the repository.

## Validation

Create `.venv`, install `requirements-dev.txt`, then run `.venv/bin/python tests/check_profiles.py`.
Use `lupa.lua52`; the upstream Lua code is not validated against Lua 5.5.
Run `git diff --check`. Update both READMEs if user-visible behavior or tested scope changes.
Separate static checks, mocked callback tests, and real hardware observations in reports.
Do not claim 49/61 or perpetual-app hardware compatibility solely from equivalent source.

## Packaging

Keep the original installer app together with all three `.device` folders in a staging directory.
Do not modify/re-sign the upstream app or add privileges. Replace only the intended profiles.
On macOS, use `hdiutil create -srcfolder <staging> -volname 'KeyLab mk3 Scripts' -format UDZO <output.dmg>`.
Mount the new image read-only and run:

```sh
python3 scripts/verify_packages.py logic /path/to/mounted/image
# or: mainstage
```

Confirm the installer app is present and the three packaged scripts exactly match source.
Replace only the corresponding `downloads/KeyLab-mk3-<Host>-Fixed.dmg`, regenerate SHA256SUMS,
and verify it. Do not leave source and download packages at different revisions.
Keep the source/download review focused on the intended fix; test actual installation separately
when installer behavior changes. The current installer binaries are retained upstream artifacts,
not a fully source-reproducible installer implementation.

## Git workflow

This public repository is `TallMessiWu/arturia-keylab-mk3-apple-fixes`, default branch `main`.
Use the local gitmoji-commit skill for commits/pushes. Commit subject/body use Chinese prose with
technical identifiers unchanged; README defaults to English. Initial publication may use `main`;
subsequent substantial changes should use topic branches unless the user requests otherwise.
Only push to this exact repository. No force-push, history rewriting or automatic upstream writes.
Report actual validation, commit SHA, remote branch and ahead/behind state.
