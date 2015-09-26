class TypeController < ApplicationController
  def index
#    @type = params[:type]
    @type = 1
    case @type
    when @type == "1"
    @text = "タイプ1でーす"
    when @type == "2"
    @text = "タイプ2でーす"
    when @type == "3"
    @text = "タイプ3でーす"
    when @type == "4"
    @text = "タイプ4でーす"
    when @type == "5"
    @text = "タイプ5でーす"
    when @type == "6"
    @text = "タイプ6でーす"
    when @type == "7"
    @text = "タイプ7でーす"
    when @type == "8"
    @text = "タイプ8でーす"
    when @type == "9"
    @text = "タイプ9でーす"
    when @type == "10"
    @text = "タイプ10でーす"
    else
    @text = "タイプ11でーす"
  end
end
