require '../caesar'

describe "#caesar_cipher" do
  it "returns ciphered text with lowercase alphabets" do
    expect(caesar_cipher('hello', 1)).to eql('ifmmp')
  end

  it "returns ciphered text with mix upper and lower alphabets" do
    expect(caesar_cipher('HeLlO', 1)).to eql('IfMmP')
  end

  it "returns ciphered text with white spaces" do
    expect(caesar_cipher('a b c d e', 2)).to eql('c d e f g')
  end

  it "returns cipherd text with non-alphabets" do
    expect(caesar_cipher('!he,llo?12', 1)).to eql('!if,mmp?12')
  end

  it "returns correct ciphered text when ciphering went over Z letter" do
    expect(caesar_cipher('Zebra', 1)).to eql('Afcsb')
  end
end
