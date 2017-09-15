feature 'game over ' do
  context 'when player 2 reaches 0 hp' do
    before do
      sign_in_and_play
      18.times { attack_and_confirm }
    end
    scenario 'player 2 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Wes loses!'
    end
  end
end
