
feature 'User can convert another number' do
  scenario 'User can see button to convert another number' do
    visit('/')
    fill_in :number, with: 3
    click_on 'convert'
    expect(page).to have_button 'convert again'
  end
end
