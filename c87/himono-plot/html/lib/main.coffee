###
# main って名前ダサいけど
# ページ送るとかそういうメイン
###

main = (game, pages) ->

  I = pages.length
  idx = if location.search then +(location.search.split '?')[1] else 0

  next = ->
    ++idx
    do page

  page = ->
    idx = Math.max idx, 0
    idx = Math.min idx, I - 1
    p = pages[idx]

    if p.text?
      game.box.innerHTML = p.text
      game.box.style.color = do random_color
      game.box.style.display = 'block'

    if p.bg?
      game.ctx.drawImage cache[p.bg], 0, 0, W, H

  do page

  game._element.addEventListener 'click', (e) ->
    x = e.clientX
    y = e.clientY
    console.log "#{e.clientX}, #{e.clientY}" if console?.log? # DEBUG

    do next if y > 35
