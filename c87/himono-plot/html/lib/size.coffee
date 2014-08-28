window.set_size = ->

  if window.innerWidth
    W = window.innerWidth
    H = window.innerHeight
  else if document.body.clientWidth
    W = document.body.clientWidth
    H = document.body.clientHeight
  else
    W = 660
    H = 500

# margin
  H = H - 20
  W = W - 20

  for i in [0 .. 10]
    H = Math.min H, (W * 480 / 640) | 0
    W = Math.min W, (H * 640 / 480) | 0

  console.log W, H if console?.log?

  window.H = H
  window.W = W

