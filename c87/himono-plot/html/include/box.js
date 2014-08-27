function make_box(obj, className) {
  var D = document.createElement('div');
  D.className = className;
  var ES = document.getElementById('enchant-stage');
  ES.appendChild(D);
  D.style.position = 'absolute';
  obj.box = D;
}
