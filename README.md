Temperature Converter is a simple solution to convert temperatures from one scale to another.

# Installation
Add `gem temperature_conversion_bl` to your `Gemfile` and then run `bundle install` or run `gem install temperature_conversion_bl`.

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
  temp_converter.convert_temperature('fahrenheit', 32)
```
# Report Bug Or Request And Enhancement.
Just open up an issue in this repo to report a bug or submit a feature request.

# Want To Contribute?
Just clone the repository, create a new branch, make your changes, and submit a Pull Request.
  * run test before submitting a pull request `rake test`
  * new featues must have corresponding tests to validate the changes

# License
MIT License.
