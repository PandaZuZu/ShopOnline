class HomeController < ApplicationController
  def index
    @msg = params[:msg]

    #item views
    if params[:itemsPerPage] == nil
      @itemsPerPage = 2
      @itemDivClass = 'col-md-4'
    else
      @itemsPerPage = params[:itemsPerPage].to_i
      if @itemsPerPage == 2
        @itemDivClass = 'col-md-4'
      else
        @itemDivClass = 'col-md-2'
      end
    end
  end
end
