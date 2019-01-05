
feature 'User converts two numbers' do
  scenario 'User converts two numbers' do
    visit('/')
    fill_in :number, with: 3
    click_on "convert"
    expect(page).to have_content 'III'
    fill_in :number, with: 10
    click_on 'convert again'
    expect(page).to have_content 'X'
    expect(page).not_to have_content 'III'
  end
end
