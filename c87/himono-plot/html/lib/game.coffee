main = (game) ->

  page = (idx, first=false) ->

    I = texts.length
    idx = Math.max idx, 0
    idx = Math.min idx, I - 1

    t = texts[idx]
    t = '...' if t is ''

    do game.popScene if not first

    scene = new Scene
    game.pushScene scene
    label = new Label t
    label.color = do random_color
    label.moveTo 20, (H * 0.8 | 0)
    scene.addChild label

    scene.addEventListener 'touchstart', (e) ->
      page idx + 1

  page 0, true

window.main = main
