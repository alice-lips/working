newGame = (W, H, images) ->
  game = {}
  game._element = document.getElementById 'stage'

  game._element.style.width  = W + 'px'
  game._element.style.height = H + 'px'

  game.canvas = document.createElement 'canvas'
  game.ctx = game.canvas.getContext '2d'
  game.canvas.width = W
  game.canvas.height= H

  game.box = document.createElement 'div'
  game.box.className = 'box'
  game.box.style.width = (W - 20) + 'px'
  game.box.style.minWidth = (W - 20) + 'px' # fuck the css
  game.box.style.maxWidth = (W - 20) + 'px'

  game._element.appendChild game.canvas
  game._element.appendChild game.box

  game

window.newGame = newGame
