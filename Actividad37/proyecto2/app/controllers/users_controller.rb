class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
end
