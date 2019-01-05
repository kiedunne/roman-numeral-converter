
feature 'User enters a decimal number' do
  scenario 'User is told what number they entered' do
    visit('/')
    fill_in :number, with: "3"
    click_on 'convert'
    expect(find_field('number').value).to eq "3"
  end
end
