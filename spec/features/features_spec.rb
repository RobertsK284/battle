require 'game'

feature 'Testing infrastructure' do

  scenario 'returns Jill: 100 HP' do
    sign_in_and_play
    expect(page).to have_content "Jill: 100 HP"
  end

  scenario 'attacks Jill and returns confirmation' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Jack attacked Jill!"
  end

  scenario 'attacks Jill and goes back to home page' do
    sign_in_and_play
    click_button("Attack")
    click_button("Return to page")
    expect(page).to have_content "Jill: 90 HP"
  end
end
