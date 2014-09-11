window.newGame = (W, H, images, musics, pages) ->

  game = makeDOM W, H
  load_img game.ctx, images, ->
    game.ctx.clearRect 0, 0, W, H
    main game, pages

