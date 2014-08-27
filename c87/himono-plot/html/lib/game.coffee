main = (game) ->

  page = (idx) ->

    I = texts.length
    idx = Math.max idx, 0
    idx = Math.min idx, I - 1

    t = texts[idx]
    t = '...' if t is ''

    game.box.innerHTML = t
    game.box.style.color = do random_color

  page 0
  idx = 0
  game._element.addEventListener 'click', (e) ->
    ++idx
    page idx

window.main = main
