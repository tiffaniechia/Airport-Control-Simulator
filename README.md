Writing a software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.

# Feedback

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
