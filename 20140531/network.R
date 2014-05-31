# 〜Rを使ってネットワーク図を描いてみる〜【初心者向け】

library('sna')

dat <- matrix(c(0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0), nrow=4)

# 無向グラフ
gplot(dat, gmode='graph', displaylabel=TRUE)
# 有向グラフ
gplot(dat, gmode='digraph', displaylabel=TRUE)

# ノードの大きさ，色，配置を変更
gplot(dat, gmode='graph', mode='kamadakawai', displaylabels=T,
      vertex.cex=3, vertex.col='white', label.pos=5)
gplot(dat, gmode='graph', mode='random', displaylabels=T,
      vertex.cex=3, vertex.col='black', label.col='white', label.pos=5)
