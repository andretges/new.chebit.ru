#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require_tree .

$ ->
  $('[rel*="dropdown"]').dropdown()
  $('[rel*="tooltip"]').tooltip()
  $('[rel*="popover"]').popover()
  # $('#main').scrollspy()
  # $('.navbar').affix()
