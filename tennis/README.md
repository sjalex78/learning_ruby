## Sarah's Notes
have your implementation file  eg tennis.rb in a lib folder

##### How to make a test using RSPEC
  make director (CMD line: mkdir name)
  bundle init
  go into gem file
  remove rails and change to rspec
  bundle
  rspec --init
  open spec directory
  spec/tennis_spec.rb

```ruby
RSpec.describe Tennis do
  it "what it does" do
    expect(method).to eq "expected outcome"
  end
end
```
  eq is an equality match but there are [others](https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers).

  note: method may need to be a class.method eg Tennis.score

  In command line run rspec to run test


in the test file you can
    add the class Tennis; end above the RSpec blocks


    or

    require 'tennis' at top
