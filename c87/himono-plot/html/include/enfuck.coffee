newGame = (W, H, images) ->
  game = {}
  game._element = document.getElementById('enchant-stage')
  game._element.innerHTML = 'loading ######========  '
  game._element.style.width  = W + 'px'
  game._element.style.height = H + 'px'

  game.canvas = document.createElement('canvas')
  game.ctx = game.canvas.getContext('2d')
  game.canvas.width = W
  game.canvas.height= H

  game

window.newGame = newGame
