random_color = ->
  list = [
    'red'
    'black'
    'aqua'
    'blue'
    'green'
  ]
  list[list.length * Math.random() | 0]

# export
window.random_color = random_color
