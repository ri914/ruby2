loop do
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
user_hand = gets.to_i
puts "ホイ!"

computer_hand = rand(3)
hands = ["グー","チョキ","パー"]
puts "-------------"
puts "あなた:#{hands[user_hand]}を出しました"
puts "相手:#{hands[computer_hand]}を出しました"

case [user_hand,computer_hand]
when [0,1],[1,2],[2,0]
    case_pattern = "userwin"
when [0,0],[1,1],[2,2]
    case_pattern = "repeat"
    puts "-------------"
    puts "あいこで..."
when [3,0],[3,1],[3,2]
    puts "あなたの負けです"
when [1,0],[2,1],[0,2]
    case_pattern = "computerwin"
else
    puts "0~3の数字を入力してください"
end

if case_pattern == "userwin"
    puts "-------------"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    user_finger = gets.to_i
    puts "ホイ!"

    computer_finger = rand(4)
    finger = ["上","下","左","右"]
    puts "-------------"
    puts "あなた:#{finger[user_finger]}"
    puts "相手:#{finger[computer_finger]}"
    case [user_finger,computer_finger]
    when [0,0],[1,1],[2,2],[3,3]
        puts "あなたの勝ちです"
        break
    when [0,1],[0,2],[0,3],[1,0],[1,2],[1,3],[2,0],[2,1],[2,3],[3,0],[3,1],[3,2]
    else
        puts "0~3の数字を入力してください"
    end
elsif case_pattern == "computerwin"
    puts "-------------"
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    user_finger = gets.to_i
    puts "ホイ!"

    computer_finger = rand(4)
    finger = ["上","下","左","右"]
    puts "-------------"
    puts "あなた:#{finger[user_finger]}"
    puts "相手:#{finger[computer_finger]}"
    case [user_finger,computer_finger]
    when [0,0],[1,1],[2,2],[3,3]
        puts "あなたの負けです"
        break
    when [0,1],[0,2],[0,3],[1,0],[1,2],[1,3],[2,0],[2,1],[2,3],[3,0],[3,1],[3,2]
    else
        "0~3の数字を入力してください"
    end
end
end
        