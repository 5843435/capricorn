class RakutenController < ApplicationController
  def search
    RakutenWebService.configuration do |c|
      c.application_id = ENV["APPID"]
      c.affiliate_id = ENV["AFID"]
    end
    result = RakutenWebService::Ichiba::Item.search(:keyword => params[:jan])
    render json: result
  end
end
