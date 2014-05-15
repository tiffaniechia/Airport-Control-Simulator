##Airport Control - OOP Test
The goal of this test was to demonstrate our grasp of Object Oriented Programming. The aim was to create a ruby application that would control the flow of planes at an airport that has a fixed capacity.


A weather extension was included such that planes can only land and take off under sunny conditions.

This task was set by [Antony Denyer](https://github.com/antonydenyer)

##Stack:
- Ruby
- TDD - RSpec

## 

# Feedback- [Antony Denyer](https://github.com/antonydenyer)

```
def park(plane, weather)
  raise "Not allowed to land twice" if !plane.flying?
  raise "Airport is full" if full?
  raise "Not allowed to land if stormy" if weather.stormy?
  @planes << plane
  plane.land
end
```

What would happen if the plane didn't land? Could someone else ask the plane to take off before it landed?

The weather doesn't need to be an actuall instance of Weather it could just be a double. It would make your tests clearer to always stub the weather. This will stop your tests from passing accidentally.

What would happen if you moved the weather to the constructor?

```
def initialize(weather)
...
def park(plane)

```

Notice how the park method becomes simpler.

# PASS
