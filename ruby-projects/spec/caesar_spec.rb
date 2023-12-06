require './caesar-cipher/caesar'

describe "#caesar_ciper" do
  it "ciphers string with a given number" do
  expect(caesar_ciper("Hello", 6)).to eql("Nkrru")
  end
end
