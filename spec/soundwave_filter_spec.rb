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
      expect(soundwave_filter([1, 100, 1010])).to eq([40, 100, 1000])
    end
  end
  context 'inputs contain nil' do
    it 'throws an error when input is nil' do
      expect{ soundwave_filter([nil]) }.to raise_error('Soundwave contains invalid data')
    end
    it 'throws an error when input contains nil' do
      expect{ soundwave_filter([1, nil]) }.to raise_error('Soundwave contains invalid data')
    end
    it 'throws an error when inputs are outside defined limits' do
      expect{ soundwave_filter([-44,001, 1]) }.to raise_error('Soundwave outside limits.')
    end
  end
end