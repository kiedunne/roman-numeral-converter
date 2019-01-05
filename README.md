
# Roman Numerals Converter

![Screenshot](app_view.png)

Deployed at https://roman-numeral-converter-kie.herokuapp.com
A simple roman numerals converter app made to practice TDD principles and deployment. 

### Local Setup

```
git clone https://github.com/kiedunne/roman-numerals-converter
bundle install
rackup config.rb
open localhost:4567 in any web browser
```

### Testing

```
run rspec
```

### Coverage

![Screenshot](coverage.png)

### User Stories:

```
As a user,
So I can know what roman numeral represents my decimal number,
I want to convert my number to a roman numeral.
```

```
As a user,
So I can know the characters for each roman numeral,
I want to see a table with decimal and roman characters.
```

### Technology:

* Ruby
* RSpec
* Capybara
* Rubocop
* SimpleCov
* Heroku
* Travis CI
