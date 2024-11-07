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
    @list_of_items = Item.all

    render({ :template => "item_templates/backdoor_template" })
  end
end
