# This branch is no longer maintained

**Check out [mtgrosser/rszr](https://github.com/mtgrosser/rszr) for a replacement.**




imforger
========

Description
-----------

Imforger
[short for Image Forger, because we are making copies of images]

This class relies on the Imlib2 library to quickly convert between different file
types, scaling and compressing on the way.

Features
--------

Tested on Linux and Mac with Ruby 1.9/2.0.

Imlib2 drops the ICC profile and XMP tags when it creates the new image.
I have been using exiftool to copy the ICC profile and XMP tags over.
This is still much faster than ImageMagick et al.

Installation
------------

In your Gemfile:

```ruby
gem 'imforger', github: 'mtgrosser/imforger'
```

Usage
-----

```ruby
require 'imforger'

# Convert
Imforger.new(input_file_path).to_file(output_file_path)

# Resize
Imforger.new(input_file_path).to_file(output_file_path, :width => 100, :height => 100)

# Resize w/max width and conversion
Imforger.new(input_file_path).to_file(output_file_path, 
                                      :maxwidth => 1000,
                                      :maxheight => 1000,
                                      :format => 'tif')
```

See the test file for other examples.

Requirements
------------

Imlib2

Speed
-----

The purpose of this gem is to scale images and save them out quickly.  ImageMagick was too slow and used too much memory.  [I didn't even bother frobnicating with RMagick.]  I include a benchmark that I used in the benchmark dir.  Results belew.  I also compared to the NetPBM library for good measure.

```bash
$ ruby benchmark/benchmark.rb

                  user     system      total        real
ImageMagick   0.000000   0.010000   1.710000 (  0.729113)
NetPBM        0.000000   0.000000   0.700000 (  0.391043)
Imforger      0.310000   0.010000   0.320000 (  0.321695)
```

Changing the input file size and format showed similar results: Imforger is roughly
twice as fast as calling out ImageMagick in realtime on a dual-core laptop, and also
noticeably faster than NetPBM.  I don't include memory usage numbers
here, but anecdotally I did notice significantly less RAM usage with Imforger vs
ImageMagick.

OS X Installation
-----------------

You have to make sure `gem` finds the required libaries and the correspondent includes.

On 10.6.8 this approach, although not especially clean, did it:

```bash
cd /usr/local/lib
ln -s /usr/X11/lib/libfreetype.6.dylib
ln -s /usr/X11/lib/libX11.dylib
ln -s /usr/X11/lib/libXext.dylib

cd /usr/local/include
ln -s  ln -s /usr/X11/include/freetype2/freetype
ln -s /usr/X11/include/X11
```

License
-------

See LICENSE
