#
# A component is a class that we attach to a dom object. It does not touch
# anything outside of its dom object. We use the same css component selectors
# that are used for styling to initialize the component classes.
#

class HelpComponent

  constructor: (@el) ->
    @el.find("[data-toggle]").click (e) =>
      e.preventDefault()
      @el.find("[data-target]").toggle()

$ -> 
  $(".component.help").each (i, el) ->
    new HelpComponent($(el))
