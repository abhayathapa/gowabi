require 'rails_helper'

RSpec.describe Shop, type: :model do
  subject do
    described_class.new(name: 'Shop 1',
                        latitude: 0.13736717e2,
                        longitude: 0.100526186e3,
                        category: Category.create("name": 'Nails', "color": 'green'))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a model' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
