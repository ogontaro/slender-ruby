RSpec.describe Object do
  describe "#slim_down" do
    let(:object) { Object.new }
    subject { object.slim_down }

    it "何もしない。slim_downのインターフェースを定義。" do
      is_expected.to eq object
    end
  end
end
