
feature 'User enters a decimal number' do
  scenario 'User is told what number they entered' do
    visit('/')
    fill_in :enter_num, with: 3
    click_on "Convert"
    expect(page).to have_content "3"
  end
end
