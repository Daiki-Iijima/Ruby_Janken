class Main
  # じゃんけん

  while true

    puts '== じゃんけん =='

    get = gets
    getNum = get.to_i

    if getNum  == 1
      puts 'ぐー'
    elsif getNum  == 2
      puts 'ちょき'
    elsif getNum  == 3
      puts 'ぱー'
    end

    r = rand(3) + 1

    if r == 1
      puts 'ぐー'
    elsif r == 2
      puts 'ちょき'
    elsif r == 3
      puts 'ぱー'
    end

    if r == getNum
      puts '== あいこ =='
    elsif r == 1 && getNum == 2
      puts  '-- コンピューターの勝ち --'
      break
    elsif r == 1 && getNum == 3
      puts  '++ 私の勝ち ++'
      break
    elsif r == 2 && getNum == 1
      puts  '++ 私の勝ち ++'
      break
    elsif r == 2 && getNum == 3
      puts  '-- コンピューターの勝ち --'
      break
    elsif r == 3 && getNum == 1
      puts  '-- コンピューターの勝ち --'
      break
    elsif r == 3 && getNum == 2
      puts  '++ 私の勝ち ++'
      break
    end
  end
end