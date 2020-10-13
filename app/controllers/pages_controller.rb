class PagesController < ApplicationController
  def home
    @time = Time.now.strftime("%H:%M")
    @date = Date.today.strftime("%B #{Date.today.day.ordinalize} %Y")

  end

  def about
  end

  def contact
    # => <ActionController::Parameters {"member"=>"Ben", "controller"=>"pages", "action"=>"contact"} permitted: false>
    search = params[:member] # member comes from the name of the input form of my form html code.
    @members = ["Ben", "Rebecca", "Katherine", "Alex", "Celine", "Lucien"]
    if search.present? # Tells if the search is there
      @members = @members.select { |name| name.start_with?(search) }
      # @members = @members.select { |name| name.downcase == search.downcase }
    end
  end
end
