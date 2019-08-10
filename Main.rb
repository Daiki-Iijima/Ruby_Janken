# プレイヤーの処理
def player
  get = gets
  getNum = get.to_i

  if getNum  == 1
    puts 'ぐー'
  elsif getNum  == 2
    puts 'ちょき'
  elsif getNum  == 3
    puts 'ぱー'
  end

  return getNum
end

# コンピューターの処理
def enemy
  r = rand(3) + 1

  if r == 1
    puts 'ぐー'
  elsif r == 2
    puts 'ちょき'
  elsif r == 3
    puts 'ぱー'
  end

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

    puts '== じゃんけん =='

    playerNum = player
    enemyNum = enemy

    # ループを止めるかを判定
    if !judge(enemyNum,playerNum)
      break;
    end

  end

end