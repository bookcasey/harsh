# [Harsh](https://bookcasey.github.io/harsh)

Deprecated: Harsh (like Compass) is no longer supported.

Compass extension for randomly generated CSS3 gradients with harsh color stops—like magical diamonds.

<img src="./docs/images/example.png" width="300px" height="200px">

You can find a bunch of examples [here](https://bookcasey.github.io/harsh).

## Installation

From the command line:

    (sudo) gem install harsh

Installing into your project:

    # Edit config.rb and add:
    require "harsh"

    # Import the extension into your sass or scss file
    @import "harsh"
    
Please note that if you are using a GUI app like [Compass.app](https://github.com/handlino/CompassApp/wiki/Use-Compass-Extensions) or [Codekit](http://incident57.com/codekit/help.php#help-compass) installing extensions may be done differently.

## Arguments

    # Mixin for backgrounds
    @include harsh($color, $background, $transparency, $number-of-gradients, $angle, $nuance, $nuance-strength) 

    # Mixin for text (only works in webkit)
    @include harsh-text($color, $transparency, $number-of-gradients, $angle, $nuance, $nuance-strength, $background) 

### color

The color of the gradients. Pass any color, a list of colors separated by spaces, or `random` for random colors.

### background

Appends a color at the end of the gradients, pass `false` to omit.

### transparency

Sets opacity of each gradient—use `0` for opaque, `1` for completely transparent.

### number-of-gradients

Sets number of gradients. Passing a list of colors overrides.

### angle

Sets angle of gradients. Pass `random` for random angles, start and stop points (`25% 75%`), degrees (`45deg`), or CSS keywords like `top`, `right`, or `bottom left`.

### nuance

Boolean. When passing one color, saturates, desaturates, lightens, and darkens by a random amount. 

### nuance-strength

Sets maximum percent colors will be changed by `nuance`. `0` will result in no change.

<img src="./docs/images/example_nuance_0.png" width="300px" height="200px">

`100` will result in a large change.

<img src="./docs/images/example_nuance_100.png" width="300px" height="200px">

## Tips

To make this a full-page background, make sure to set the `width` and `height` of `html` and `body` to `100%`:

    html, body {
      height: 100%;
      width: 100%;
    }
    
    body {
      @include harsh();
      //background-attachment: fixed;
      //background-repeat: no-repeat;
    }

## [Examples](https://bookcasey.github.io/harsh)

    .random
      @include harsh()
    
    .background-color
      @include harsh(white, rgb(200,50,50), .95)
    
    .bright
      @include harsh(random, white, .05)
    
    .dull
      @include harsh($transparency: .95)

    .specify-colors
      @include harsh(#FF0000 blue rgb(50,200,50))
    
    .horizontal
      @include harsh($angle: top)
    
    .angled
      @include harsh($angle: -32deg)
    
    .nuance
      @include harsh(salmon, $nuance-strength: 50)


