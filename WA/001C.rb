# -*- coding: utf-8 -*-
# エイトクイーン。
# "Q" = クイーン
# "!" = 置ける場所
# "." = 置けない場所

require 'pp'

def change_status board,pos_x,pos_y,vec_x,vec_y
  # ある場所から端まで、特定方向に"."を置き続ける

  if pos_x >= 8 || pos_y >= 8 || pos_x < 0 || pos_y < 0
    # 盤面の範囲外になったら終わる
    return board
  end

  if board[pos_x][pos_y] == "!"
    board[pos_x][pos_y] = "."
  end

  change_status(board,(pos_x + vec_x),(pos_y + vec_y),vec_x,vec_y)
end

def set_queen board,pos_x,pos_y
  # クイーンを置く。8方向は置けないようにする
  if board[pos_x][pos_y] == ("Q"||".")
    puts "No Answer"
    exit
  end

  if pos_x < 0 || pos_y < 0
    return
  end

  board[pos_x][pos_y] = "Q"

  # 8方向を"."に
  board = change_status(board,pos_x,pos_y,-1,-1)
  board = change_status(board,pos_x,pos_y,-1,0)
  board = change_status(board,pos_x,pos_y,-1,1)
  board = change_status(board,pos_x,pos_y,0,-1)
  board = change_status(board,pos_x,pos_y,0,1)
  board = change_status(board,pos_x,pos_y,1,-1)
  board = change_status(board,pos_x,pos_y,1,0)
  change_status(board,pos_x,pos_y,1,1)

end

def get_weight board,pos_x,pos_y

  all_weight = 0
  # 8方向の重みをチェック
  all_weight += weight(board,pos_x,pos_y,-1,-1)
  all_weight += weight(board,pos_x,pos_y,-1,0)
  all_weight += weight(board,pos_x,pos_y,-1,1)
  all_weight += weight(board,pos_x,pos_y,0,-1)
  all_weight += weight(board,pos_x,pos_y,0,1)
  all_weight += weight(board,pos_x,pos_y,1,-1)
  all_weight += weight(board,pos_x,pos_y,1,0)
  all_weight += weight(board,pos_x,pos_y,1,1)
end

def weight board,pos_x,pos_y,vec_x,vec_y
  if pos_x >= 8 || pos_y >= 8 || pos_x < 0 || pos_y < 0
    return 0
  end

  if board[pos_x][pos_y] == "!"
    return(weight(board,(pos_x + vec_x),(pos_y + vec_y),vec_x,vec_y) + 1 )
  else
    return(weight(board,(pos_x + vec_x),(pos_y + vec_y),vec_x,vec_y))
  end
end

def queen_num board
  num = 0
  board.each do |b|
    num += 1 if(b.include? "Q")
  end
  num
end


def show board
  # 表示
  board.each do |s|
    puts s.join("")
  end
end

# main
board = Array.new(8).map!{Array.new(8,"!")}


# 入力処理
8.times do |line|
  index = gets.chomp.index "Q"
  if index
    set_queen board,line,index
  end
end

# 一番"!"を消す数が少ないところに置く
count = 0
while (count += 1) < 8
  min_weight = [999,-1,-1]
  8.times do |x|
    8.times do |y|
      if board[x][y] == "!"
        weight = get_weight(board,x,y)
        if min_weight[0] >= weight
          min_weight[0] = weight
          min_weight[1] = x
          min_weight[2] = y
        end
      end
    end
  end
  set_queen board,min_weight[1],min_weight[2]
end

if queen_num(board) != 8
  # 8回ループ回して駄目だったら一応"No Answer"
  puts "No Answer"
  exit
end


show board
