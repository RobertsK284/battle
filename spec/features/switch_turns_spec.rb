require 'game'

feature 'testing' do

  describe 'Switch turns' do
    context 'viewing the current turn' do
      scenario 'at the start of the game' do
        sign_in_and_play
        expect(page).to have_content "Jack's turn"
      end

      scenario 'after player_1 attacks' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'Return to page'
        expect(page).not_to have_content "Jack's turn"
        expect(page).to have_content "Jill's turn"
      end
    end
  end
end
