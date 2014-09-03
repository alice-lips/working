main = (game) ->

  idx = 0

  next = ->
    ++idx
    do page

  page = ->

    I = texts.length
    idx = Math.max idx, 0
    idx = Math.min idx, I - 1

    t = texts[idx]

    if t.image?
      console.log t.image if console?.log
      game.ctx.drawImage t.image, 0, 0, W, H
      game.box.style.display = 'none'
      do next

    else if (do t.trim) is ''
      game.box.style.display = 'none'

    else
      game.box.innerHTML = t
      game.box.style.color = do random_color
      game.box.style.display = 'block'

    idx + 1

  # entry
  game.ctx.clearRect 0, 0, W, H
  do page
  game._element.addEventListener 'click', (e) ->
    do next

window.main = main
