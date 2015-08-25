scalaenv
====

[![Build Status](https://travis-ci.org/mazgi/scalaenv.png?branch=master)](https://travis-ci.org/mazgi/scalaenv)

Groom your app's Scala environment with scalaenv like [rbenv](https://github.com/sstephenson/rbenv) :)

Do you need [**sbt**](http://www.scala-sbt.org) and [**Play Framework**](http://www.playframework.com) version management?  
Please refer to [**sbtenv**](https://github.com/mazgi/sbtenv) in the case of use **sbt**, and [**playenv**](https://github.com/mazgi/playenv) in the case of use **Play Framework**.

### Installation

1. `git clone` scalaenv into `~/.scalaenv`.

    ~~~ sh
    $ git clone git://github.com/mazgi/scalaenv.git ~/.scalaenv
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

### Version History

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

