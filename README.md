# Income Tax: A simple command line application

A rudimentary command line tool for the calculation of income tax.

---
### User stories

```
As a User
Because I must calculate the correct tax rate
I would like a program that can do this for me

As a User
Because tax brackets vary by country and are liable to change
I would like to be able to customise my brackets
```

---
### Procedure

#### Installation (Assuming prior knowledge of command line and Ruby environment)
- Fork and pull this repository
- Run 'bundle install' within the directory
- Run 'rspec' to be sure the code passes the tests

#### Example command set
*The following corresponds to UK income tax. Feel free to*
*adjust the number and properties of brackets according to country*

*Open 'irb' while in the root directory and run each of the following commands:*

```
require './lib/operator.rb'

require './lib/bracket.rb'

basic_rate = Bracket.new(floor: 12500.0, ceiling: 50000.0, rate: 0.2)

higher_rate = Bracket.new(floor: 50000.0, ceiling: 150000.0, rate: 0.4)

additional_rate = Bracket.new(floor: 150000.0, rate: 0.45)

uk_tax_brackets = [basic_rate, higher_rate, additional_rate]

Operator.calculate(brackets: uk_tax_brackets,amount: 12000.0)
=> 0
Operator.calculate(brackets: uk_tax_brackets,amount: 20000.0)
=> 1500.0
Operator.calculate(brackets: uk_tax_brackets,amount: 100000.0)
=> 27500.0
Operator.calculate(brackets: uk_tax_brackets,amount: 200000.0)
=> 70000.0
```


*From these examples results should (hopefully!) be as follows:*

|Income(£)| Tax(£)       |
|---------|--------------|
| 12000   | 0            |
| 20000   | 1500         |
| 100000  | 27500        |
| 200000   | 70000        |

---

### Some final words

I hope this code proves interesting to review and play around with.

As a junior software developer I enjoy to build interesting projects
such as this and hope to continue to learn and improve in the process.
