# ライブラリの読み込み
library('ggplot2')


#####################################
# ラーメン店のデータを使う
#####################################

# データの読み込み
data.path = '/Users/amacbee/Dropbox/github/tokyorgirls/20140712/ramen_prices.txt'
data.frame <- read.table(data.path, header=TRUE, sep=',')

# データの中身を確認する
head(data.frame)

# ラーメンの値段の平均
mean(data.frame$Price)

# ラーメンの値段のヒストグラム(bin=100)
ggplot(data.frame, aes(x=data.frame$Price)) + geom_histogram(binwidth=100)


#####################################
# 1組のテストのデータを使う
#####################################

# データの読み込み
data.path = '/Users/amacbee/Dropbox/github/tokyorgirls/20140712/test_scores_1.txt'
data.frame <- read.table(data.path, header=TRUE, sep=',')

# 1組のテストの平均点
mean(data.frame$Score)

# 1組のテストの点数のヒストグラム
ggplot(data.frame, aes(x=data.frame$Score)) + geom_histogram(binwidth=5)


#####################################
# 2組のテストのデータを使う
#####################################

# データの読み込み
data.path = '/Users/amacbee/Dropbox/github/tokyorgirls/20140712/test_scores_2.txt'
data.frame <- read.table(data.path, header=TRUE, sep=',')

# 2組のテストの平均点
mean(data.frame$Score)

# 2組のテストの点数のヒストグラム
ggplot(data.frame, aes(x=data.frame$Score)) + geom_histogram(binwidth=5)


#####################################
# 身体のデータを使う
#####################################

# データの読み込み
data.path = '/Users/amacbee/Dropbox/github/tokyorgirls/20140712/body_data.txt'
data.frame <- read.table(data.path, header=TRUE, sep=',')

# 平均身長
mean(data.frame$Height)

# 身長のヒストグラム(binwidth=5, 0.001, 1)
ggplot(data.frame, aes(x=data.frame$Height)) + geom_histogram(binwidth=5)
ggplot(data.frame, aes(x=data.frame$Height)) + geom_histogram(binwidth=0.001)
ggplot(data.frame, aes(x=data.frame$Height)) + geom_histogram(binwidth=1)


#####################################
# おまけ
#####################################

# 身長の密度プロット
ggplot(data.frame, aes(x=data.frame$Height)) + geom_density()

# 男女で分けた身長の密度プロット
ggplot(data.frame, aes(x=data.frame$Height, fill=data.frame$Gender)) + geom_density()
