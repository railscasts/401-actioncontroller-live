# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
source = new EventSource('/messages/events')
source.addEventListener 'messages.create', (e) ->
  message = $.parseJSON(e.data).message
  $('#chat').append($('<li>').text("#{message.name}: #{message.content}"))
