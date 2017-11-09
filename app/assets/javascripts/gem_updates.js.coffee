$(document).on 'change', '#gem_version', ->
  $(@).trigger("submit.rails")
