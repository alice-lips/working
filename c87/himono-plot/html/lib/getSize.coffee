
if window.innerWidth
  W = window.innerWidth
  H = window.innerHeight
else if document.body.clientWidth
  W = document.body.clientWidth
  H = document.body.clientHeight
else
  W = 640
  H = 480

H = Math.min H, (W * 480 / 640) | 0
W = Math.min W, (H * 640 / 480) | 0

# margin
H = H - 20
W = W - 20

window.H = H
window.W = W

