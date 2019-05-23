require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "creating a Team" do
    visit teams_url
    click_on "New Team"

    fill_in "Advisor", with: @team.advisor
    fill_in "Contents of store", with: @team.contents_of_store
    check "Is commercial purpose" if @team.is_commercial_purpose
    fill_in "Number of people", with: @team.number_of_people
    fill_in "Team name", with: @team.team_name
    fill_in "User", with: @team.user_id
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "updating a Team" do
    visit teams_url
    click_on "Edit", match: :first

    fill_in "Advisor", with: @team.advisor
    fill_in "Contents of store", with: @team.contents_of_store
    check "Is commercial purpose" if @team.is_commercial_purpose
    fill_in "Number of people", with: @team.number_of_people
    fill_in "Team name", with: @team.team_name
    fill_in "User", with: @team.user_id
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "destroying a Team" do
    visit teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team was successfully destroyed"
  end
end
