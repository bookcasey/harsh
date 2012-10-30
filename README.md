# Harsh

Compass extension for randomly generated CSS3 gradients with harsh color stops

## Installation

From the command line:

    sudo gem install harsh

Installing into your project:

    # Edit config.rb and add:
    require "harsh"

    # Import the extension into your sass or scss file
    @import "harsh"

## Arguments

    # Mixin for backgrounds
    +harsh($color, $background, $transparency, $number-of-gradients, $angle, $nuance, $nuance-strength) 

    # Mixin for text (only works in webkit)
    +harsh-text($color, $transparency, $number-of-gradients, $angle, $nuance, $nuance-strength, $background) 

### color

The color of the gradients. Pass any color, a list of colors separated by spaces, or `random` for random colors.

### background

Appends a color at the end of the gradients, pass `false` to omit.

### transparency

Sets opacity of each gradient—use `0` for opaque, `1` for completely transparent.

### number-of-gradients

Sets number of gradients. Passing a list to `$color` overrides.

### angle

Sets angle of gradients. Pass `random` for random angles, start and stop points (`25% 75%`), degrees (`45deg`), or CSS keywords like `top`, `right`, or `bottom left`.

### nuance

Boolean. When passing one color, saturates, desaturates, lightens, and darkens by a random amount. 

### nuance-strength

Sets maximum percent colors will be changed by `nuance`. `0` will result in no change, `100` will result in a large change.




