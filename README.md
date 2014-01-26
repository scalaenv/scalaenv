# scalaenv

Groom your app’s Scala environment with scalaenv like [rbenv](https://github.com/sstephenson/rbenv) :)

### Installation

1. `git clone` scalaenv into `~/.scalaenv`.

    ~~~ sh
    $ git clone git@github.com:mazgi/scalaenv.git ~/.scalaenv
    ~~~

2. Add `~/.scalaenv/bin` to your `$PATH` for access to the `scalaenv` command.

    ~~~ sh
    $ echo 'export PATH="${HOME}/.scalaenv/bin:${PATH}"' >> ~/.zshrc
    ~~~

3. Add `scalaenv init` to your shell to enable shims.  
   (You need autocompletion? Just a little longer...)

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

    _Same as in previous step, use `~/.bash_profile` for Bash._

5. Download scala archive and extract into `~/.scalaenv/versions/`.

    ~~~ sh
    $ curl -LO http://www.scala-lang.org/files/archive/scala-2.10.3.tgz
    $ tar xf scala-2.10.3.tgz -C ~/.scalaenv/versions/
    ~~~

    _It is only way at present._

### Version History

**0.0.1** (Jan 28, 2014)

* Initial public release.

