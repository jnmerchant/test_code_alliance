class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:software]
end
