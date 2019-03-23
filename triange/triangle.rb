class Triangle

  def judgement(argv)
    #配列の引数が３つの場合のみ判定する
    if argv.length == 3
      args = argv.map {|n| n.to_i }
      a = args[0]
      b = args[1]
      c = args[2]
      # 0が含まれていれば、
      if (a * b * c == 0)
        return '引数の中に０が含まれています'
      # 3辺が全て等しければ正三角形
      elsif (a == b && b == c)
        return '正三角形ですね！'
      # 2辺が等しく、かつ2辺を足した数が残り1辺の数より小さければ二等辺三角形
      elsif(a == b || b == c || a == c) && (a + b > c && b + c > a && a + c > b)
        return '二等辺三角形ですね！'
      # 3辺それぞれについて2辺を足した数が残り1辺の数より小さければ不等辺三角形
      elsif (a + b > c && b + c > a && a + c > b)
        return '不等辺三角形ですね！'
      else
        return '三角形じゃないです＞＜'
      end
    else
      return '引数が正しくありません'
    end
  end

  def output(text)
    p text
  end
end

triangle = Triangle.new
text = triangle.judgement(ARGV)
triangle.output(text)
