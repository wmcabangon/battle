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

feature 'Can attack player' do
  scenario 'Player 1 can attack player 2' do
    sign_in_and_play
    click_link
    expect(page).to have_content 'Will attacked Wes'
  end
end
