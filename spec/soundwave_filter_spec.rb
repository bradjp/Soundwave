require 'soundwave_filter'

describe '#soundwave_filter' do
  context 'inputs outside given limits, defaults used' do
    it 'returns inputs inside limits' do
      expect(soundwave_filter([100])).to eq([100])
    end
    it 'amends inputs below limits' do
      expect(soundwave_filter([1])).to eq([40])
    end
    it 'amends inputs above limits' do
      expect(soundwave_filter([1010])).to eq([1000])
    end
    it 'amends inputs above and below limits' do
      expect(soundwave_filter([1010])).to eq([1000])
    end
  end
end