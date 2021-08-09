RSpec.describe String do
  describe "#slim_down" do
    let(:small_string) { Faker::Lorem.characters(number: 499) }
    let(:large_string) { Faker::Lorem.characters(number: 10000) }

    it "文字長を最大長500にまでカットした文字列を返す" do
      expect(small_string.slim_down.length).to eq 499
      expect(large_string.slim_down.length).to eq 500
    end
  end
end
