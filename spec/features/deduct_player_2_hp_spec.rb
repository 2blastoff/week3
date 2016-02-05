require 'capybara/rspec'
require 'capybara/dsl'

feature "Deducting HP" do
  scenario "player 2 is attacked" do
    sign_in_and_play
    click_button('Attack Mittens')
    expect(page).to have_content "Mittens: 80HP"
  end
  scenario "player 1 is attacked" do
    sign_in_and_play
    first_turn
    click_button('Attack Dave')
    expect(page).to have_content "Dave: 80HP"
  end

end
