class HomesController < ApplicationController
  def index
  @title = "STUDENT MANAGEMENT SYSTEM"
  @username = "admin"
  @password = "admin"
  end

  def registration
    @title = "WELCOME TO STUDENT MANAGEMENT SYSTEM"
  end
end
