# homebrew-lotar

Custom Homebrew tap for the [Lotar](https://github.com/localtaskrepo/lotar) and [autospec](https://github.com/localtaskrepo/autospec) CLIs.

## Usage

```bash
brew tap localtaskrepo/lotar
brew trust localtaskrepo/lotar
brew install lotar
brew install autospec
```

Homebrew 6 and newer refuse formulae from third-party taps until you trust them, so `brew trust` is
needed once per machine. Older Homebrew has no `brew trust` command; skip that line.

Homebrew downloads the prebuilt binary from the matching GitHub release and puts it on your PATH:

- lotar: macOS (Apple Silicon and Intel) and Linux (x64 and arm64, static builds that run on any
  distribution). Releases: [localtaskrepo/lotar](https://github.com/localtaskrepo/lotar/releases)
- autospec: macOS (Apple Silicon and Intel). Releases:
  [localtaskrepo/autospec](https://github.com/localtaskrepo/autospec/releases)

Upgrade with `brew upgrade lotar` or `brew upgrade autospec`.

## Updating the Formulae

The formulae are updated automatically: each project's release workflow rewrites its file in `Formula/`
with the new version, URLs, and checksums and pushes the commit to `main`. Change a formula in the
release workflow of its project (for lotar, `.github/workflows/release.yml`), not here, or the next
release overwrites the edit.
