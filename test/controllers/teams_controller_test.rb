require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post teams_url, params: { team: { advisor: @team.advisor, contents_of_store: @team.contents_of_store, is_commercial_purpose: @team.is_commercial_purpose, number_of_people: @team.number_of_people, team_name: @team.team_name, user_id: @team.user_id } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show team" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :success
  end

  test "should update team" do
    patch team_url(@team), params: { team: { advisor: @team.advisor, contents_of_store: @team.contents_of_store, is_commercial_purpose: @team.is_commercial_purpose, number_of_people: @team.number_of_people, team_name: @team.team_name, user_id: @team.user_id } }
    assert_redirected_to team_url(@team)
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end
