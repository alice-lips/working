draw_load = (ctx, p) ->

  width = 140
  height = 10
  padding = 2

  label = 'loading'
  metrix = ctx.measureText label
  ctx.fillText label, W/2 - metrix.width/2, H/2 - 10

  ctx.beginPath()
  ctx.rect W/2 - width/2, H/2 - height/2, width, height
  ctx.stroke()

  ctx.beginPath()
  ctx.rect W/2 - width/2 + padding, H/2 - height/2 + padding, (width - padding * 2) * p, height - padding * 2
  ctx.fill()

