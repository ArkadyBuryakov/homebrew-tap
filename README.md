# ArkadyBuryakov Homebrew Tap

## What is Homebrew?

Package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install arkadyburyakov/tap/name
```

You can also only add the tap which makes formulae within it
available in search results (`brew search` output):

```sh
brew tap arkadyburyakov/tap
```

Note: to clone the tap via SSH you will need to use:

```sh
brew tap arkadyburyakov/tap https://github.com/arkadyburyakov/homebrew-tap
```

While you may search across taps, it is necessary to always use
fully qualified name (incl. the `arkadyburyakov/tap/` prefix)
when refering to formulae in external taps such as this one
outside of search.

## What packages are available?

With the following commands, you can install the latest generally available (GA) version of each product:
```sh
# Formulae
brew install arkadyburyakov/tap/workforest
```

Prereleases (including as alpha's, beta's, and release candidates) will not be available in this tap.


## License

This tap is licensed under the [MIT License](LICENSE).

Portions of this README are adapted from hashicorp/homebrew-tap, © 2020 HashiCorp, Inc., used under the Mozilla Public License 2.0.
