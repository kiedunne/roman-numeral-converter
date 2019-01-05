
feature 'User can see conversion table' do
  scenario 'User can see table' do
    visit('/table')
    expect(page).to have_content 'I'
    expect(page).to have_content 'M'
  end
end
