window.image_count =
  loaded: 0
  total: 0

# construct the background image
window.image = (src) ->
  img = new Image
  window.image_count.total++
  img.src = src
  img.onload = -> window.image_count.loaded++
  { image: img }

