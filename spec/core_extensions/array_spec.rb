RSpec.describe Array do
  describe "#slim_down" do
    let(:array) {
      [
        111,
        Faker::Lorem.characters(number: 499),
        Faker::Lorem.characters(number: 25000),
        [
          111,
          Faker::Lorem.characters(number: 499),
          Faker::Lorem.characters(number: 25000),
        ],
        {
          "small": Faker::Lorem.characters(number: 499),
          "large": Faker::Lorem.characters(number: 25000),
        }
      ].slim_down
    }

    it "保持しているStringを最大長500にまでカットする配列を返す" do
      expect(array[0]).to eq 111
      expect(array[1].length).to eq 499
      expect(array[2].length).to eq 500

      expect(array[3][0]).to eq 111
      expect(array[3][1].length).to eq 499
      expect(array[3][2].length).to eq 500

      expect(array[4][:small].length).to eq 499
      expect(array[4][:large].length).to eq 500
    end
  end
end
