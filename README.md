scalaenv
====

[![Build Status](https://travis-ci.org/scalaenv/scalaenv.svg?branch=master)](https://travis-ci.org/scalaenv/scalaenv)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-7-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

Groom your app's Scala environment with scalaenv like [rbenv](https://github.com/sstephenson/rbenv) :)

Do you need [**sbt**](http://www.scala-sbt.org) version management?
Please refer to [**sbtenv**](https://github.com/sbtenv/sbtenv) in the case of use **sbt**.

### Installation

#### Basic GitHub Checkout

1. `git clone` scalaenv into `~/.scalaenv`.

    ~~~ sh
    $ git clone git://github.com/scalaenv/scalaenv.git ~/.scalaenv
    ~~~

2. Add `~/.scalaenv/bin` to your `$PATH` for access to the `scalaenv` command.

    ~~~ sh
    $ echo 'export PATH="${HOME}/.scalaenv/bin:${PATH}"' >> ~/.zshrc
    ~~~

3. Add `scalaenv init` to your shell to enable shims and autocompletion.

    ~~~ sh
    $ echo 'eval "$(scalaenv init -)"' >> ~/.zshrc
    ~~~

    **Bash note**: Modify your `~/.bash_profile` file instead of `~/.zshrc`.

4. Restart your shell so that PATH changes take effect. (Opening a new
   terminal tab will usually do it.) Now check if scalaenv was set up:

    ~~~ sh
    $ type scalaenv
    #=> "scalaenv is a shell function"
    ~~~

    *Same as in previous step, use `~/.bash_profile` for Bash.*

5. Install each version of scala.

    ~~~ sh
    $ scalaenv install scala-2.10.3
    ~~~

    If show all available version, please use the following command:

    ~~~ sh
    $ scalaenv install -l
    All available versions:
      scala-2.10.1
      scala-2.10.2
      scala-2.10.3
      ...
    ~~~

    If want to install manually, please download scala archive and extract into `~/.scalaenv/versions/`.

    ~~~ sh
    $ curl -LO http://www.scala-lang.org/files/archive/scala-2.10.3.tgz
    $ tar xf scala-2.10.3.tgz -C ~/.scalaenv/versions/
    ~~~

#### Homebrew on macOS

As an alternative to installation via GitHub checkout, you can install scalaenv using the [Homebrew package manager](http://brew.sh) on macOS.

~~~ sh
$ brew update
$ brew install scalaenv
~~~

Or, if you would like to install the latest development release:

~~~sh
$ brew install --HEAD scalaenv
~~~

To upgrade HEAD package use `--fetch-HEAD` option:

~~~sh
$ brew upgrade --fetch-HEAD scalaenv
~~~

### Version History

**0.1.4** (June, 18, 2019)
  - Added new archive (**2.13.0**)

**0.1.3** (Mar, 26, 2019)
  - Added new archives (**2.12.7**, **2.12.8**, **2.13.0-RC1**)
  - Fix the bug in `scalaenv install -l

**0.1.2** (Sep, 10, 2018)
  - fix `scalaenv install -l`
  - [diff](https://github.com/scalaenv/scalaenv/compare/version/0.1.1...version/0.1.2)

**0.1.1** (Sep 9, 2018)
  - Fix #59
  - [diff](https://github.com/scalaenv/scalaenv/compare/version/0.1.0...version/0.1.1)

**0.1.0** (Nov 12, 2017)

  - Added `scala-2.10.7` and `scala-2.11.12`

**0.0.16** (Oct 21, 2017)

  - Added `scala-2.12.4`

**0.0.15** (Aug 17, 2017)

  - Implemented `scalaenv uninstall`
  - Enhanced `scalaenv install`
    - Added usage for `scalaenv install`
    - Added completions for  `scalaenv install`
    - etc...
  - Added new scala archives (**2.12.3** and **2.13.0-M2**)

**0.0.14** (Jul 28, 2017)
  * Added **dotty-0.2.0-RC1**
  * Supported for fish shell :tada:
    * https://github.com/scalaenv/scalaenv/pull/44

**0.0.13** (Jun 25, 2017)
  * dotty support :tada:
    ~~~sh
    scalaenv install dotty-0.1.2-RC1
    scalaenv global dotty-0.1.2-RC1-bin-SNAPSHOT
    scalaenv rehash
    dotr
    ~~~

**0.0.12** (Apr 24, 2017)
  * Added **Scala 2.11.9** - **Scala 2.11.11** , **Scala 2.12.2** - **Scala 2.13.0-M1**.
    Thanks to @Kaioru..

**0.0.11** (Feb 03, 2017)
  * Added **Scala 2.12.1**.
    Thanks to @3tty0n.

**0.0.10** (Dec 05, 2016)

  * Added **Scala 2.11.8**, **Scala 2.12.0-M4** - **2.12.0**.
    Thanks to @odd, @3tty0n

**0.0.9** (Jan 06, 2016)

  * Added **Scala 2.12.0-M3** and more Scala 2.10 versions.
    Thanks to @joprice

**0.0.8** (Aug 25, 2015)

  * Added **Scala 2.11.5** - **Scala 2.11.7**, **Scala 2.12.0-M1** - **2.12.0-M2**
    Many thanks to @alexanderscott, @tdstein, @rwinzhang

**0.0.7** (Nov 19, 2014)

  * Added recipes for **Scala 2.11.1** - **Scala 2.11.4** by @zaneli
  * Fixed a bug when run `versions` subcommand.

**0.0.6** (Apr 18, 2014)

  * Added recipes for **Scala 2.11.0** to *scala-install* built-in plugin.

**0.0.5** (Apr 16, 2014)

  * Added recipes for **Scala 2.10.4** and **Scala 2.11.0-RCx** to *scala-install* built-in plugin.
  * Added recipes for *old versions* to *scala-install* built-in plugin.

**0.0.4** (Mar 25, 2014)

  * Improved installation instruction by *scala-install* built-in plugin.

**0.0.3** (Mar 14, 2014)

  * Added [Travis CI](https://travis-ci.org) status badge on README.
  * Fixed a bug when run `rehash` subcommand.
  * Fixed version string.

**0.0.2** (Mar 04, 2014)

  * Added completions for `Z shell` and `Bash`.

**0.0.1** (Jan 28, 2014)

  * Initial public release.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://mazgi.github.io/"><img src="https://avatars2.githubusercontent.com/u/194222?v=4" width="100px;" alt=""/><br /><sub><b>Matsuki, Hidenori</b></sub></a><br /><a href="#maintenance-mazgi" title="Maintenance">🚧</a></td>
    <td align="center"><a href="https://3tty0n.github.io"><img src="https://avatars2.githubusercontent.com/u/8289812?v=4" width="100px;" alt=""/><br /><sub><b>Yusuke Izawa</b></sub></a><br /><a href="https://github.com/scalaenv/scalaenv/commits?author=3tty0n" title="Tests">⚠️</a> <a href="#maintenance-3tty0n" title="Maintenance">🚧</a> <a href="https://github.com/scalaenv/scalaenv/commits?author=3tty0n" title="Code">💻</a></td>
    <td align="center"><a href="https://www.zaneli.com/"><img src="https://avatars2.githubusercontent.com/u/379820?v=4" width="100px;" alt=""/><br /><sub><b>Shunsuke Otani</b></sub></a><br /><a href="https://github.com/scalaenv/scalaenv/commits?author=zaneli" title="Code">💻</a> <a href="#maintenance-zaneli" title="Maintenance">🚧</a></td>
    <td align="center"><a href="https://ehrns.com"><img src="https://avatars2.githubusercontent.com/u/2118299?v=4" width="100px;" alt=""/><br /><sub><b>Alex Ehrnschwender</b></sub></a><br /><a href="https://github.com/scalaenv/scalaenv/commits?author=alexanderscott" title="Code">💻</a></td>
    <td align="center"><a href="http://taylorsteinberg.com"><img src="https://avatars0.githubusercontent.com/u/6015574?v=4" width="100px;" alt=""/><br /><sub><b>Taylor Steinberg</b></sub></a><br /><a href="https://github.com/scalaenv/scalaenv/commits?author=tdstein" title="Code">💻</a></td>
    <td align="center"><a href="https://www.linkedin.com/in/rwinzhang/"><img src="https://avatars2.githubusercontent.com/u/1652090?v=4" width="100px;" alt=""/><br /><sub><b>Erwin Zhang</b></sub></a><br /><a href="https://github.com/scalaenv/scalaenv/commits?author=rwinzhang" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/joprice"><img src="https://avatars1.githubusercontent.com/u/2175555?v=4" width="100px;" alt=""/><br /><sub><b>Joseph Price</b></sub></a><br /><a href="https://github.com/scalaenv/scalaenv/commits?author=joprice" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
