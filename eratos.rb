class Eratos

  def extractPrimes(n)
    # 2~t の配列を用意する
    numbers = (2..n).to_a
    # 素数を入れる配列を用意する
    primes = []
    # 1. 先頭の数字を取り出す (nの平方根まで)
    while
      top = numbers.shift
      break if !top
    # 2. 取り出した先頭の数字を素数の配列に追加
      primes.push(top)
    # 3. 取り出した先頭の数字の倍数があれば、配列から削除 (倍数がなくなるまで繰り返し)
      numbers.each do |x|
        numbers.delete(x) if x % top == 0
      end
    end
    # 4. 素数の配列を出力する
    return primes
  end

  def output (primes)
    puts primes
  end
end

eratos = Eratos.new
primes = eratos.extractPrimes(ARGV[0].to_i)
eratos.output(primes)
