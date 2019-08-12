# 「ぐーちょきぱー」のハッシュ配列
# 定数にする時は大文字にしなければいけない？
Values ={
  1 => 'ぐー',
  2 => 'ちょき',
  3 => 'ぱー'
}

# 定数が変更されないようにするおまじないかな？使えって書いてあった
Values.freeze

# プレイヤーの処理
def player

  get = gets
  getNum = get.to_i

  puts "Player : " + Values[getNum]

  return getNum
end

# コンピューターの処理
def enemy
  r = rand(3) + 1

  puts 'コンピューター  : ' + Values[r]

  return r
end

# 判定部分
# todo : 処理が冗長
def judge(enemy,player)
  if enemy == player
    puts '== あいこ =='
    return true
  elsif enemy == 1 && player == 2
    puts  '-- コンピューターの勝ち --'
    return false
  elsif enemy == 1 && player == 3
    puts  '++ 私の勝ち ++'
    return false
  elsif enemy == 2 && player == 1
    puts  '++ 私の勝ち ++'
    return false
  elsif enemy == 2 && player == 3
    puts  '-- コンピューターの勝ち --'
    return false
  elsif enemy == 3 && player == 1
    puts  '-- コンピューターの勝ち --'
    return false
  elsif enemy == 3 && player == 2
    puts  '++ 私の勝ち ++'
    return false
  end
end

class Main

  while true

    puts '### じゃんけん ###'

    # 配列の列挙で入力してもらう値のアナウンス
    Values.each{|key,value|
      puts "#{key} : #{value}"
    }
    puts '== 数字を入力してください =='

    playerNum = player
    enemyNum = enemy

    # ループを止めるかを判定
    if !judge(enemyNum,playerNum)
      break;
    end

  end

end