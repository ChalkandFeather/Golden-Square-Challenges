require "gratitudes_class"

RSpec.describe Gratitudes do
  it "adds and provides a list of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("your dog")
    gratitudes.add("nice people")
    expect(gratitudes.format).to eq "Be grateful for: your dog, nice people"
  end
end