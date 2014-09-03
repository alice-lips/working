window.image_count =
  loaded: 0
  total: 0

inc_load = -> ++window.image_count.loaded

# construct the background image
window.image = (src) ->
  img = new Image
  img.src = src
  img.onload = inc_load
  { image: img }

