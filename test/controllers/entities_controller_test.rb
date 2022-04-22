require 'test_helper'

class EntitiesControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
    @entity = entities(:one)
  end

  test "should get index" do
    get :index, params: { group_id: @group }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { group_id: @group }
    assert_response :success
  end

  test "should create entity" do
    assert_difference('Entity.count') do
      post :create, params: { group_id: @group, entity: @entity.attributes }
    end

    assert_redirected_to group_entity_path(@group, Entity.last)
  end

  test "should show entity" do
    get :show, params: { group_id: @group, id: @entity }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { group_id: @group, id: @entity }
    assert_response :success
  end

  test "should update entity" do
    put :update, params: { group_id: @group, id: @entity, entity: @entity.attributes }
    assert_redirected_to group_entity_path(@group, Entity.last)
  end

  test "should destroy entity" do
    assert_difference('Entity.count', -1) do
      delete :destroy, params: { group_id: @group, id: @entity }
    end

    assert_redirected_to group_entities_path(@group)
  end
end
