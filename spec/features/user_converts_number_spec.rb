
feature 'Number is converted to roman numeral' do
  scenario 'User can enter a number and see the converted numeral' do
    visit('/')
    fill_in :number, with: 3
    click_on 'convert'
    expect(page).to have_content 'III'
  end
end
