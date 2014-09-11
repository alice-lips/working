###
# load images
###

# cache[filename] = new Image
cache = []

# after load all `imges`, call `cont`
load_img = (ctx, imgs, cont) ->
  N = imgs.length
  cx = 0
  for img in imgs
    i = new Image
    i.onload = -> ++cx
    i.src = img
    cache[img] = i
  
  rec = ->
    if N is cx
      do cont
    else
      draw_load ctx, cx/N
      setTimeout rec, 50

  do rec
