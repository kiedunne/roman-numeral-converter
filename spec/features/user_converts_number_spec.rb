
feature 'Decimal number is converted to roman numeral' do
  scenario 'User can see the converted numeral' do
    visit('/')
    fill_in :enter_num, with: 3
    click_on "Convert"
    expect(page).to have_content "III"
  end
end
