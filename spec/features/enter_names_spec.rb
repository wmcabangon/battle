feature 'Players fill in names' do
  scenario 'name submit' do
    sign_in_and_play
    expect(page).to have_content 'Will vs Wes'
  end
end
