# saketh-kowtha/homebrew-tap

Homebrew tap for [lazyhub](https://github.com/saketh-kowtha/lazyhub) — a lazygit-style GitHub TUI.

## Install

```bash
brew tap saketh-kowtha/tap
brew install lazyhub
```

Or in one command:

```bash
brew install saketh-kowtha/tap/lazyhub
```

## Update

```bash
brew update
brew upgrade lazyhub
```

## Uninstall

```bash
brew uninstall lazyhub
brew untap saketh-kowtha/tap
```

## How this tap is maintained

The `Formula/lazyhub.rb` file is updated automatically by the `release.yml` workflow on the [lazyhub repo](https://github.com/saketh-kowtha/lazyhub) whenever a new version tag is pushed. The workflow:

1. Publishes the new version to npm
2. Waits for the tarball to be available on the npm CDN
3. Computes the SHA256 of the tarball
4. Updates this `Formula/lazyhub.rb` with the new URL, SHA, and version
5. Commits and pushes to this repo

The push uses a `TAP_TOKEN` secret (a fine-grained personal access token with `Contents: read+write` permission on this repo). If the token is missing, the release workflow logs a warning and continues — npm publish still succeeds.

## License

MIT — same as lazyhub itself.
