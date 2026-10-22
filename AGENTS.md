# AGENTS.md

Personal GNU Guix channel. The repo root is the channel root (see `.guix-channel` at the repo root); there is no CI, lint, or test suite — a successful `guix build` is the verification step.

## Layout

- Module names mirror directory paths: `(channel-5 packages st)` → `channel-5/packages/st.scm`.
- `channel-5/packages/` — package definitions (`st`, `dwm`, `clefd`, `nomad`).
- `channel-5/packages/clefd-crates.scm` — generated Rust crate sources for `clefd`, exposing a `cargo-inputs` lookup consumed by `channel-5/packages/clefd.scm`. Keep this split: the main package file delegates all crate inputs via `cargo-inputs 'clefd #:module '(channel-5 packages clefd-crates)`.
- `channel-5/home/services/clefd.scm` — a Guix home shepherd service wrapping the `clefd` package.

## Building / verifying

This channel is registered in `~/.config/guix/channels.scm` (pulled from codeberg), but `guix pull` won't see local edits — test uncommitted changes by pointing `-L` at this checkout (`~/git/channel-5`):

```
guix build -L ~/git/channel-5 clefd
guix build -L ~/git/channel-5 st
guix build -L ~/git/channel-5 dwm
guix build -L ~/git/channel-5 nomad
guix build -L ~/git/channel-5 opencode
```

`-L` goes before the package name and must point to the repo root — the directory containing `.guix-channel` — not the inner `channel-5/` module directory. The rest of the load path still comes from the pulled channel, so only modules defined here resolve locally.

## Gotchas

- `sha256` base32 hashes must be exact. Most of this repo's commit history is churn from `Hash mismatch.` → `Fixed hash.` cycles; prefer re-generating the hash (`guix hash -rx` on a fresh checkout, or `guix download` for tarball origins) before committing a bumped origin.
- Sources pin exact upstream commits/tags — both the pinned commit and the sha256 must change together in a single edit. Tarball origins (`dwm`, `st`) embed the commit id in the URL; update both URL and base32.
- Custom-built packages not in Guix upstream use `#:tests? #f`. That's deliberate for `st`, `dwm`, `clefd` (and `nomad`); it is not an invitation to add a test phase unless the upstream build supports it.
- `opencode` packages the v2 per-platform npm artifact (`@opencode/cli-linux-x64`, a Bun single-file executable built from the matching git tag; upstream is https://github.com/anomalyco/opencode, formerly sst/opencode, and Bun isn't packaged in Guix, so no source build). Bump it by changing `version` + the sha256 together (regenerate with `guix download` on the registry tarball URL). Keep `#:strip-binaries? #f` (stripping corrupts the Bun payload) and `#:validate-runpath? #f` (the loader is found via the patched ELF interpreter). It declares `x86_64-linux` only; other targets live in parallel `@opencode/cli-<target>` npm packages.
- `nomad` packages the prebuilt `nomad_<version>_linux_amd64.zip` release binary (upstream is BUSL-1.1, nonfree to Guix's `licenses.scm`, so a local `license:busl-1.1` is defined inline in the package file). 
- The `prefix license:` import and `license:expat` for personal packages is convention here (history records a `mit → expat` correction).
- Generated `clefd-crates.scm` entries carry `;; TODO REVIEW: Check bundled sources.` markers on vendored-sys crates — leaving them is fine for now, but regenerate/readjust the whole block after any Cargo.toml change upstream.
