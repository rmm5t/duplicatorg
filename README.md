DuplicatorG is a minimal command line client for
[ReplicatorG](http://replicat.org/). This was built as an experiment to see
whether I could automate my [MakerBot](http://www.makerbot.com/) builds.  This
uses the core ReplicatorG libraries and leverages them via JRuby. If you'd like
a more Ruby-centric approach, try
[RublicatorG](https://github.com/tbuser/RublicatorG).

## Setup

First, install [jruby](http://jruby.org/).

```bash
$ rbenv install jruby-1.6.5
```

or

```bash
$ rvm install jruby
```

Next, we need to compile the ReplicatorG libraries

```bash
$ build.sh
```

This will sync and update the ReplicatorG submodule, then compile it.  It
assumes that you already have Java and associated build tools installed.

## Usage

Once everything is setup and assuming you have a serial connection with your
machine, you can now build any object that sits on the machine's SD card.

```bash
$ duplicatorg [object.s3g]
```

This assumes that you've already configured your build machine with ReplicatorG
once before and that you already have object designs on the SD card of the
machine.

## Notes

DuplicatorG relies on several libraries from the ReplicatorG project. For
example, [RXTX](http://rxtx.qbang.org/wiki/index.php/Main_Page) is required for
serial communication with your machine. The RXTX libraries provided do not work
in 64 bit mode; they must be run in 32 bit mode.  DuplicatorG handles this by
setting `JAVA_OPTS=-d32` prior to launching jruby.

## Author

[Ryan McGeary](http://ryan.mcgeary.org) ([@rmm5t](http://twitter.com/rmm5t))

## License

DuplicatorG is not associated with ReplicatorG and implies no license for
ReplicatorG itself.

[MIT License](http://www.opensource.org/licenses/mit-license.php)

Copyright (c) 2012, Ryan McGeary (ryan -[at]- mcgeary -[dot]- org)
