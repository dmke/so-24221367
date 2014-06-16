#= require jquery
#= require jquery_ujs
#= require_self

$(document).on 'ajax:success', 'a.rand', (status,data,xhr)->
  $(".random").text data.count
  return
