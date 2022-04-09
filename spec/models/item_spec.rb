require 'rails_helper'

RSpec.describe Item, type: :model do

  describe 'associations' do
	  it {should have_many :invoice_items}
    it {should belong_to :merchant}
  end

  describe 'validations' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:unit_price)}
    it { should validate_numericality_of(:unit_price).only_integer }
    it {should validate_numericality_of(:unit_price).is_greater_than(0)}
  end

end