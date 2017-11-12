Temperature Converter is a simple solution to convert temperatures from one scale to another.
# Installation
Add `gem temperature_conversion` to your `Gemfile` and then run `bundle install` or run `gem install temperature_conversion`.


# Supported Scales
  * Kelvin
  * Fahrenheit
  * Celsius

# Usage
To use the gem you must require it in the file you need it via `require 'temperature_conversion'`.

## Conversion Process
```ruby
  # When creating a new TemperatureConverter object it takes one arguemnt which is the scale you will be
  # converting from. In this example all of the temperatures will be converted from Celsius.
  # The argument must me in lower case.
  temp_converter = TemperatureConverter.new('celsius')

  # To convert a temperature to another scale just call the convert temperature method on TemperatureConverter object.
  # The first arguement is the scale you will be converting to and the second arguement is the temperature that needs to 
  # converted into the new scale.
  temp_convere.convert_temperature('fahrenheit', 32)
```
