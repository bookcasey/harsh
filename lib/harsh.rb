require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('harsh', :path => extension_path)

module Sass::Script::Functions
  def random(type = Sass::Script::String.new("number"), max = Sass::Script::Number.new(100)) ## https://gist.github.com/1561650 Chris E.
    if type.value == "color"
      Sass::Script::Color.new(:red => rand(255), :green => rand(255), :blue => rand(255))
    else
      Sass::Script::Number.new(rand(max.value), max.numerator_units, max.denominator_units)
    end
  end
end