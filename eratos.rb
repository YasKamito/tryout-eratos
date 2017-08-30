class Eratos
  def self.show_prime(max_num)
    array_prime = []
    array_except = []

    if max_num == 0 then
        return "usage: eratos.rb max_num"
    end

    # ステップ１：2からパラメータ値までをループ
    for search_num in 2..max_num do
        # 除外リストに乗っている数は飛ばす
        if array_except.include?(search_num) then
            next
        end
        
        # ステップ２：探索リスト先頭の数を素数リストに追加
        array_prime << search_num

        # ステップ３：素数の倍数を除外リストに追加
        screen_out = search_num * search_num
        while screen_out <= max_num do
            array_except << screen_out
            screen_out += search_num
        end
    end

    # ステップ４：素数リストをアウトプット
    return array_prime
  end

end

p Eratos.show_prime(ARGV[0].to_i)

