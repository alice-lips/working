function make_box(obj, className) {
  var D = document.createElement('div');
  D.className = className;
  D.style.position = 'absolute';

  var pad = 10;
  D.style.width = (W - pad - pad) + 'px';
  D.style.margin = 0;
  D.style.padding = pad + 'px';

  var ES = document.getElementById('enchant-stage');
  ES.appendChild(D);
  obj.box = D;
}
