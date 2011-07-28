require 'test_helper'

class ChannelsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Channel.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Channel.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Channel.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to channel_url(assigns(:channel))
  end

  def test_edit
    get :edit, :id => Channel.first
    assert_template 'edit'
  end

  def test_update_invalid
    Channel.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Channel.first
    assert_template 'edit'
  end

  def test_update_valid
    Channel.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Channel.first
    assert_redirected_to channel_url(assigns(:channel))
  end

  def test_destroy
    channel = Channel.first
    delete :destroy, :id => channel
    assert_redirected_to channels_url
    assert !Channel.exists?(channel.id)
  end
end
