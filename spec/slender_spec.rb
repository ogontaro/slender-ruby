RSpec.describe Slender do
  describe ".configure" do
    it "initialize config" do
      described_class.configure do |config|
        config.max_string_length = 1000
      end
      expect(described_class.max_string_length).to eq(1000)
    end
  end
end
