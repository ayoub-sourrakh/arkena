# frozen_string_literal: true

require 'rails_helper'
include Rails.application.routes.url_helpers

RSpec.describe 'User Authentication', type: :request do
  describe 'User sign up' do
    it 'creates a new user successfully' do
      post user_registration_path, params: {
        user: {
          email: 'test@example.com',
          password: 'password123',
          password_confirmation: 'password123'
        }
      }
      expect(response).to redirect_to(root_path)
      follow_redirect!
      expect(response.body).to include('Welcome! You have signed up successfully.')
    end
  end

  describe 'User sign in' do
    let!(:user) { User.create!(email: 'login@example.com', password: 'password123') }

    it 'signs in the user successfully' do
      post user_session_path, params: {
        user: {
          email: user.email,
          password: 'password123'
        }
      }
      expect(response).to redirect_to(root_path)
      follow_redirect!
      expect(response.body).to include('Signed in successfully.')
    end
  end
end
