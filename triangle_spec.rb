require_relative 'triangle'

RSpec.describe Triangle do
  let!(:triangle) { Triangle.new }

  describe "引数の中に0が含まれています" do
    specify { expect(triangle.judgement([0, 3, 3])).to eq "引数の中に０が含まれています" }
    specify { expect(triangle.judgement([0, 0, 3])).to eq "引数の中に０が含まれています" }
    specify { expect(triangle.judgement([0, 0, 0])).to eq "引数の中に０が含まれています" }
  end

  describe "正三角形" do
    specify { expect(triangle.judgement([3, 3, 3])).to eq "正三角形ですね！" }
  end

  describe "二等辺三角形" do
    specify { expect(triangle.judgement([3, 3, 2])).to eq "二等辺三角形ですね！" }
    specify { expect(triangle.judgement([3, 2, 3])).to eq "二等辺三角形ですね！" }
    specify { expect(triangle.judgement([2, 3, 3])).to eq "二等辺三角形ですね！" }
  end

  describe "不等辺三角形" do
    # 2 + 3 > 4 OK
    specify { expect(triangle.judgement([2, 3, 4])).to eq "不等辺三角形ですね！" }
    specify { expect(triangle.judgement([2, 4, 3])).to eq "不等辺三角形ですね！" }
    specify { expect(triangle.judgement([3, 2, 4])).to eq "不等辺三角形ですね！" }
    specify { expect(triangle.judgement([3, 4, 2])).to eq "不等辺三角形ですね！" }
    specify { expect(triangle.judgement([4, 2, 3])).to eq "不等辺三角形ですね！" }
    specify { expect(triangle.judgement([4, 3, 2])).to eq "不等辺三角形ですね！" }
  end

  describe "三角形ではない" do
    # 2 + 3 <= 5 NG
    specify { expect(triangle.judgement([2, 3, 5])).to eq "三角形じゃないです＞＜" }
    specify { expect(triangle.judgement([2, 5, 3])).to eq "三角形じゃないです＞＜" }
    specify { expect(triangle.judgement([3, 2, 5])).to eq "三角形じゃないです＞＜" }
    specify { expect(triangle.judgement([3, 5, 2])).to eq "三角形じゃないです＞＜" }
    specify { expect(triangle.judgement([5, 2, 3])).to eq "三角形じゃないです＞＜" }
    specify { expect(triangle.judgement([5, 3, 2])).to eq "三角形じゃないです＞＜" }

    # 3, 3, 6 NG
    specify { expect(triangle.judgement([3, 3, 6])).to eq "三角形じゃないです＞＜" }
    specify { expect(triangle.judgement([3, 6, 3])).to eq "三角形じゃないです＞＜" }
    specify { expect(triangle.judgement([6, 3, 3])).to eq "三角形じゃないです＞＜" }
  end

  describe "引数が正しくありません" do
    specify { expect(triangle.judgement([3])).to eq "引数が正しくありません" }
    specify { expect(triangle.judgement([3, 3])).to eq "引数が正しくありません" }
  end

end
