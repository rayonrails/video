require 'test_helper'

class ClipsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Clip.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Clip.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Clip.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to clip_url(assigns(:clip))
  end

  def test_edit
    get :edit, :id => Clip.first
    assert_template 'edit'
  end

  def test_update_invalid
    Clip.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Clip.first
    assert_template 'edit'
  end

  def test_update_valid
    Clip.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Clip.first
    assert_redirected_to clip_url(assigns(:clip))
  end

  def test_destroy
    clip = Clip.first
    delete :destroy, :id => clip
    assert_redirected_to clips_url
    assert !Clip.exists?(clip.id)
  end
end
