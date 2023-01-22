require 'gratitudes'

RSpec.describe Gratitudes do
  context "initially" do
  it "takes single gratitude and adds to statement" do
  gratitudes = Gratitudes.new
  gratitudes.add("daylight")
  result = gratitudes.format
  expect(result).to eq "Be grateful for: daylight"
end
end

it "adds gratitude, as output to a list following the statement" do
  gratitudes = Gratitudes.new
  gratitudes.add("daylight")
  gratitudes.add("birds")
  result = gratitudes.format
  expect(result).to eq "Be grateful for: daylight, birds"
end

context "given gratitude" do
  it "interpolates gratitudes in list" do
    gratitudes = Gratitudes.new
    gratitudes.add("daylight")
    gratitudes.add("birds")
    gratitudes.add("sunshine")
    expect(gratitudes.format).to eq "Be grateful for: daylight, birds, sunshine"
end
end
end



