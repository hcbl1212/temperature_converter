Gem::Specification.new do |s|
    s.name        = 'temperature_converter'
    s.version     = '0.0.1'
    s.date        = '2017-11-11'
    s.summary     = 'Converts temperatures from one scale to another.'
    s.description = 'A temperature converter that takes a temperature from one scale and converts it to another.'
    s.authors     = ['Brian Ludwig, Jr.']
    s.email       = 'bsludwig@svsu.edu'
    s.files       = [
                      'lib/temperature_converter.rb', 'lib/temperature_converter/celsius_strategy.rb',
                      'lib/temperature_converter/fahrenheit_strategy.rb', 'lib/temperature_converter/kelvin_strategy.rb',
                      'lib/temperature_converter/strategy_interface.rb'
                    ]
    s.homepage    = 'http://rubygems.org/gems/temperature_converter'
    s.license     = 'MIT'
    s.metadata    = { 'source_code_uri' => 'https://github.com/hcbl1212/temperature_converter' }
end
