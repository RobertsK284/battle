require 'game'

feature 'Testing infrastructure' do

  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Jack v Jill"
  end

  scenario "returns Player 2's hit_points" do
    sign_in_and_play
    expect(page).to have_content "Jill: 100 HP"
  end

  scenario "returns Player 1's hit_points" do
    sign_in_and_play
    expect(page).to have_content "Jack: 100 HP"
  end

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
  scenario 'attacks Jill and returns confirmation' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Jack attacked Jill"
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button("Attack")
    click_button("Return to page")
    expect(page).not_to have_content 'Jill: 100 HP'
    expect(page).to have_content 'Jill: 90 HP'
  end

# As Player 1,
# So I can lose a game of Battle
# I want Player 2 to attack me, and I want to get a confirmation
  scenario 'Jill attacks Jack and returns confirmation' do
    sign_in_and_play
    click_button("Attack")
    click_button("Return to page")
    click_button("Attack")
    expect(page).to have_content "Jill attacked Jack"
  end

  scenario 'attacks Jill and goes back to home page' do
    sign_in_and_play
    click_button("Attack")
    click_button("Return to page")
    expect(page).to have_content "Jill: 90 HP"
  end
end
