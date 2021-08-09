RSpec.describe Hash do
  describe "#slim_down" do
    let(:hash) {
      {
        number: 1,
        small: Faker::Lorem.characters(number: 499),
        large: Faker::Lorem.characters(number: 20000),
        nest: {
          "hoge": Faker::Lorem.characters(number: 25000),
          nest: {
            hoge: Faker::Lorem.characters(number: 25000)
          },
          fuge: nil,
        },
        array: [
          111,
          Faker::Lorem.characters(number: 499),
          Faker::Lorem.characters(number: 25000),
          {
            small: Faker::Lorem.characters(number: 499),
            large: Faker::Lorem.characters(number: 25000),
            nest: {
              hoge: Faker::Lorem.characters(number: 25000)
            },
          },
        ],
      }.slim_down
    }

    it "保持しているStringを最大長500にまでカットしたHashを返す" do
      expect(hash[:number].class).to eq Integer
      expect(hash[:small].length).to eq 499
      expect(hash[:large].length).to eq 500

      expect(hash[:nest][:hoge].length).to eq 500
      expect(hash[:nest][:nest][:hoge].length).to eq 500
      expect(hash[:nest][:fuge]).to eq nil

      expect(hash[:array][0]).to eq 111
      expect(hash[:array][1].length).to eq 499
      expect(hash[:array][2].length).to eq 500

      expect(hash[:array][3][:small].length).to eq 499
      expect(hash[:array][3][:large].length).to eq 500
      expect(hash[:array][3][:nest][:hoge].length).to eq 500
    end
  end
end
