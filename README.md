# sglavoie/homebrew-tap

Homebrew casks for apps by Sébastien Lavoie.

```sh
brew install --cask sglavoie/tap/<cask>
```

| Cask | App |
| --- | --- |
| `deps-merger` | [deps-merger](https://github.com/sglavoie/deps-merger): a CLI that merges safe Dependabot pull requests across your repositories (installs `gh`) |
| `launchgrid` | [LaunchGrid](https://launchgrid.sglavoie.com/): a full-screen app grid for macOS 14+ |
| `sloppy-paste` | [Sloppy Paste](https://github.com/sglavoie/AI-Sloppy-Paste): searchable text snippets with tags and placeholder forms for macOS 15+ (includes `sloppyctl`) |

`brew upgrade --cask <cask>` installs new releases and `brew uninstall --cask <cask>` removes one.

- `launchgrid`: uninstalling keeps your layout and settings; add `--zap` to delete those too.
- `sloppy-paste`: uninstalling keeps snippets, drafts, and settings; add `--zap` to delete those too.

Each cask is updated by its app's release process:

| Cask | Updated by |
| --- | --- |
| `deps-merger` | GoReleaser in the [deps-merger](https://github.com/sglavoie/deps-merger) repository |
| `launchgrid` | `just publish` in the [LaunchGrid](https://github.com/sglavoie/LaunchGrid) repository |
| `sloppy-paste` | `just publish` in the [Sloppy Paste](https://github.com/sglavoie/AI-Sloppy-Paste) repository |
