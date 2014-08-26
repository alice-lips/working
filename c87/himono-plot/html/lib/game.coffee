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
    margin = 20
    label.moveTo margin, H - margin - 30 # TODO: ここはたぶん、描画した後に計算しなおすのが一番いい
    label._width = W - margin - margin
    scene.addChild label
    window._ = label

    scene.addEventListener 'touchstart', (e) ->
      page idx + 1

  page 0, true

window.main = main
