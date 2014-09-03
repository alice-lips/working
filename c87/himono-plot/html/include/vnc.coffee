newGame = (W, H, cont) ->

  game = {}
  game._element = document.getElementById 'stage'

  game._element.style.width  = W + 'px'
  game._element.style.height = H + 'px'

  game.canvas = document.createElement 'canvas'
  game.canvas.innerHTML = 'canvas element require more modern browser (Chrome, Firefox)'
  game.ctx = game.canvas.getContext '2d'
  game.canvas.width = W
  game.canvas.height= H

  # draw the `loading`
  game.ctx.fillText 'loading', 300, 200
  game.ctx.beginPath()
  game.ctx.rect 250, 210, 140, 10
  game.ctx.stroke()
  game.ctx.beginPath()
  game.ctx.rect 252, 212, 40, 6
  game.ctx.fill()

  game.box = document.createElement 'div'
  game.box.className = 'box'
  game.box.style.width = (W - 10) + 'px'
  game.box.style.minWidth = (W - 10) + 'px' # fuck the css
  game.box.style.maxWidth = (W - 10) + 'px'

  game._element.appendChild game.canvas
  game._element.appendChild game.box

  rec = ->
    if window.image_count.loaded * 2 >= window.image_count.total
      if console?.log
        console.log 'game start'
        console.log window.image_count
      cont game
    else
      setTimeout rec, 100
  do rec

  game

window.newGame = newGame
