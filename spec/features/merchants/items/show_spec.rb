require 'rails_helper'

RSpec.describe 'merchants items show page', type: :feature do
  before (:each) do
    @merchant1 = Merchant.create!(name: "Klein, Rempel and Jones")
    @merchant2 = Merchant.create!(name: "Williamson Group")

    @item1 = @merchant1.items.create!(name: "Item Ea Voluptatum", description: "A thing that does things", unit_price: 7654)
    @item2 = @merchant1.items.create!(name: "Item Quo Magnam", description: "A thing that does nothing", unit_price: 10099)
    @item3 = @merchant1.items.create!(name: "Item Voluptatem Sint", description: "A thing that does everything", unit_price: 8790)
    @item4 = @merchant2.items.create!(name: "Item Rerum Est", description: "A thing that barks", unit_price: 3455)
    @item5 = @merchant2.items.create!(name: "Item Itaque Consequatur", description: "A thing that makes noise", unit_price: 7900)
  end

  it 'shows item details' do
    visit "/merchants/#{@merchant1.id}/items/#{@item1.id}"
    
    expect(page).to have_content(@item1.name)
    expect(page).to have_content(@item1.description)
    expect(page).to have_content(@item1.selling_price)
    expect(page).not_to have_content(@item4.name)
    expect(page).not_to have_content(@item5.selling_price)
  end
end
