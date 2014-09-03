main = (game) ->

  page = (idx) ->

    I = texts.length
    idx = Math.max idx, 0
    idx = Math.min idx, I - 1

    t = texts[idx]

    if t.image?
      console.log t.image if console?.log
      game.ctx.drawImage t.image, 0, 0, W, H
    else
      t = '...' if t is ''
      game.box.innerHTML = t
      game.box.style.color = do random_color

  game.ctx.clearRect 0, 0, W, H
  page 0
  idx = 0
  game._element.addEventListener 'click', (e) ->
    ++idx
    page idx

window.main = main
