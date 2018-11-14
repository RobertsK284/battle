feature 'Testing infrastructure' do

  scenario 'returns Jack and Jill' do
    visit('/')
    fill_in 'player_1', with: 'Jack'
    fill_in 'player_2', with: 'Jill'
    click_button "Submit"
    expect(page).to have_content "Jack v Jill"
  end
  scenario 'returns Jill: 100 HP' do
    visit('/')
    fill_in 'player_1', with: 'Jack'
    fill_in 'player_2', with: 'Jill'
    click_button "Submit"
    expect(page).to have_content "Jill: 100 HP"
  end
end
