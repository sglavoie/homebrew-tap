# sglavoie/homebrew-tap

Homebrew casks for apps by Sébastien Lavoie.

```sh
brew install --cask sglavoie/tap/<cask>
```

| Cask | App |
| --- | --- |
| `deps-merger` | [deps-merger](https://github.com/sglavoie/deps-merger): a CLI that merges safe Dependabot pull requests across your repositories (installs `gh`) |
| `launchgrid` | [LaunchGrid](https://launchgrid.sglavoie.com/): a full-screen app grid for macOS 14+ |

`brew upgrade --cask <cask>` installs new releases and `brew uninstall --cask <cask>` removes one.

- `launchgrid`: uninstalling keeps your layout and settings; add `--zap` to delete those too.

Each cask is updated by its app's release process:

| Cask | Updated by |
| --- | --- |
| `deps-merger` | GoReleaser in the [deps-merger](https://github.com/sglavoie/deps-merger) repository |
| `launchgrid` | `just publish` in the [LaunchGrid](https://github.com/sglavoie/LaunchGrid) repository |
