# homebrew-lotar

Custom Homebrew tap for the [Lotar](https://github.com/localtaskrepo/lotar) CLI.

## Usage

```bash
brew tap localtaskrepo/lotar
brew install lotar
```

Once a release is tagged, Homebrew will download the matching macOS binary from the
[GitHub Releases](https://github.com/localtaskrepo/lotar/releases) page and place it in your PATH.

## Updating the Formula

1. Publish a new `vX.Y.Z` release from the main repository.
2. Copy the sha256 values for the `lotar-vX.Y.Z-macos-arm64.tar.gz` and
   `lotar-vX.Y.Z-macos-x64.tar.gz` assets.
3. Edit `Formula/lotar.rb` with the new version, URLs, and checksums.
4. Commit the change and push to `main`.

Future automation can update this formula from the primary release workflow, but manual updates
are sufficient to get started.
