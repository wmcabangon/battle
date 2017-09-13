feature 'Can see hit points' do
  scenario 'Player 1 has HP' do
    sign_in_and_play
    expect(page).to have_content 'Will: 100HP'
  end
  scenario 'Player 2 has HP' do
    sign_in_and_play
    expect(page).to have_content 'Wes: 100HP'
  end
end
