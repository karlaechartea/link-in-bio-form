class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end


  def display_form
    @list_of_items = Item.all

    render({ :template => "item_templates/backdoor_template" })
  end

  def new_form
    item = Item.new
    item.link_url =params.fetch("link_url")
    item.link_description =params.fetch("link_description")
    item.thumbnail_url =params.fetch("thumbnail_url")

    item.save

    redirect_to("/")
  end
end
