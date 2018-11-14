feature 'Testing infrastructure' do

  scenario 'returns Jack and Jill' do
    sign_in_and_play
    expect(page).to have_content "Jack v Jill"
  end
  scenario 'returns Jill: 100 HP' do
    sign_in_and_play
    expect(page).to have_content "Jill: 100 HP"
  end
end
