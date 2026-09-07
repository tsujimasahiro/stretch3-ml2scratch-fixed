# Stretch3 ML2Scratch 修正版

授業で使用するための Stretch3 派生版です。

## 修正内容

ML2Scratch の画像分類で、各ラベルの確信度を比較する際に最大値が更新されず、最大確信度ではないラベルが選択される問題を修正しています。

```diff
 if (confidences[label] > topConfidence) {
+    topConfidence = confidences[label];
     topConfidenceLabel = label;
 }
```

また、ステージ画像を学習する場合は、MobileNet の画像特徴に学習対象スプライトの
`x`・`y` 座標を加えます。MobileNet が小さな位置変化を同じものとして扱いやすい問題を
補い、迷路の場所ごとに上下左右を区別しやすくしています。カメラ画像の学習方法は変更しません。

ステージ画像には Scratch 本体の renderer canvas を明示的に使用し、画面構成によって
別の canvas が選ばれる問題も防いでいます。

公開サイトは GitHub Pages から利用します。

## 出典とライセンス

- [Stretch3](https://github.com/stretch3/stretch3.github.io)
- [ML2Scratch](https://github.com/champierre/ml2scratch)

元プロジェクトと同じく GNU Affero General Public License v3.0 の条件に従います。詳細は `LICENSE` を参照してください。
