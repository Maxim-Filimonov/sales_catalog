class GroupsController < ApplicationController
  def show
    @group = Group.find params[:id]
    @products = @group.products
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: { group: @group, products:@products }}
    end
  end
end
