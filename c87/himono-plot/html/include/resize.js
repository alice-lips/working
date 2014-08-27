function resize_ctrl(game) {
  var ES = document.getElementById('enchant-stage');
  var C = document.createElement('div');
  C.innerHTML = '[↖]';
  C.style.position = 'absolute';
  C.style.right = 0;
  C.style.bottom = 0;
  C.style.cursor = 'move';
  C.draggable="true";

  var client = {}
  C.addEventListener('mousedown', function (e) {
    client.x = e.clientX;
    client.y = e.clientY;
    console.log(client);
  });

  C.addEventListener('mouseup', function (e) {
    var dW = e.clientX - client.x;
    var dH = e.clientH - client.y;
    W += dW;
    H += dH;
    game.width = W;
    game.height = H;
  });

  ES.appendChild(C);

}
