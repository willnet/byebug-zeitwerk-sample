# README

1. git clone https://github.com/willnet/byebug-zeitwerk-sample.git
1. cd byebug-zeitwerk-sample
1. `./bin/setup`
1. `./bin/rails s`
1. visit localhost:3000
1. reference `A::B` in brakepoint
1. NameError like following

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

edit `app/controllers/welcome_controller.rb` like following, and revisit localhost:3000

```ruby
class WelcomeController < ApplicationController
  def index
    A::B
  end
end
```

it works!
