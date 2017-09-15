feature 'Can attack player' do
  scenario 'Player 1 can attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Will attacked Wes'
  end
  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Wes: 100HP'
    expect(page).to have_content 'Wes: 90HP'
  end
  scenario 'reduce player 1 HP by 10' do
    sign_in_and_play
    2.times { attack_and_confirm }
    expect(page).not_to have_content 'Will: 100HP'
    expect(page).to have_content 'Will: 90HP'
  end
end
