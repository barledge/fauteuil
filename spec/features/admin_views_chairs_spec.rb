require "rails_helper"

feature "admin visits chairs page to delete chair" do

  scenario "Admin visits chair page" do

    user = FactoryGirl.create(:user, role: "admin")

    chair = FactoryGirl.create(:chair)

    login_as(user)

    visit chair_path(chair.id)

    click_button "Delete Chair"

    expect(page).to have_content("Chair was deleted")
  end

end
