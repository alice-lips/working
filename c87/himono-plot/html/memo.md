# tools/seisho2pages

ひもの清書 > lib/pages.js

```javascript
window.images = []
window.musics = []
window.pages = [
  {text: "", speaker: "", cg: "", bg: "", se: "", bgm: ""},
  {cg: "", bg: "", se: "", bgm: ""},
  {change:"blackout"},
];
```

## pages list

ありうるパターン

- text のページ
- cg のページ
- blackout

初め2パターンには共通おまけとして、

- bg
- se か bgm のどちらか

がある．
無い場合には false を入れる

### 挙動

- text のページ
    bgがあれば背景表示
    テキストボックスを `display = block` にして、テキストを表示
    speaker 要素を見て、あれば立ち絵を表示
- cg のページ
    `bg` は無視して、テキストボックスを `display = none` にして、CGだけ表示

- `when bgm`
    `bgm` は `last_bgm` と比較して、同じなら何もしない．それはつまり
    相変わらずループで鳴らし続けることを意味する．
    最後に `last_bgm = bgm` する
- `when se`
    ループしない音を鳴らす
    `last_bgm = false` する


# lib/vnc.coffee

## lib/vnc.coffee:newGame(width, height, window.images, window.musics, window.pages)

### lib/dom.coffee:makeDOM
### main
### load
### save

