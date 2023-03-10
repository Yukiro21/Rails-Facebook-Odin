require 'spec_helper'

RSpec.describe 'devise/sessions/new.html.erb' do

  before do
    view.stub(:resource).and_return(User.new)
    view.stub(:resource_name).and_return(:user)
    view.stub(:devise_mapping).and_return(Devise.mappings[:user])
  end

    it 'displays "facebook" in the navbar' do
      render
      expect(rendered).to have_text('facebook')
      expect(rendered).to have_text('Log in')
      expect(rendered).to have_text('External Logins')
      expect(rendered).to_not have_text('Create a New Account')
    end

end
