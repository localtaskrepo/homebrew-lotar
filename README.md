# homebrew-lotar

Custom Homebrew tap for the [Lotar](https://github.com/localtaskrepo/lotar) and [autospec](https://github.com/localtaskrepo/autospec) CLIs.

## Usage

```bash
brew tap localtaskrepo/lotar
brew install lotar
brew install autospec
```

Once a release is tagged, Homebrew will download the matching macOS binary from the
corresponding GitHub Releases page and place it in your PATH.

- lotar releases: [localtaskrepo/lotar](https://github.com/localtaskrepo/lotar/releases)
- autospec releases: [localtaskrepo/autospec](https://github.com/localtaskrepo/autospec/releases)

## Updating the Formula

1. Publish a new `vX.Y.Z` release from the main repository.
2. Copy the sha256 values for the relevant macOS assets.
3. Edit the matching formula in `Formula/` with the new version, URLs, and checksums.
4. Commit the change and push to `main`.

Future automation can update this formula from the primary release workflow, but manual updates
are sufficient to get started.
