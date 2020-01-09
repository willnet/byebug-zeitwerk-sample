# README

```ruby
./bin/setup
./bin/rails s
```

1. access localhost:3000
2. reference `A::B` in terminal
3. NameError like following

```
[1, 6] in /Users/willnet/.ghq/github.com/willnet/byebug-zeitwerk-sample/app/controllers/welcome_controller.rb
   1: class WelcomeController < ApplicationController
   2:   def index
   3:     byebug
   4:     # A::B
=> 5:   end
   6: end
(byebug) A::B
*** NameError Exception: uninitialized constant A::B
```

