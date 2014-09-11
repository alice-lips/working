###
# define Colos
###

random_color = ->
  list = [
    '#702020'
    'black'
    '#007070'
    'blue'
    'green'
  ]
  list[list.length * Math.random() | 0]

