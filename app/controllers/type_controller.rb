class TypeController < ApplicationController
  def index
#    @type = params[:type]
    @type = 2 
    case @type
    when 1
    @text = "タイプ1でーす"
    when 2
    @text = "タイプ2でーす"
    when 3
    @text = "タイプ3でーす"
    when 4
    @text = "タイプ4でーす"
    when 5
    @text = "タイプ5でーす"
    when 6
    @text = "タイプ6でーす"
    when 7
    @text = "タイプ7でーす"
    when 8
    @text = "タイプ8でーす"
    when 9
    @text = "タイプ9でーす"
    when 10
    @text = "タイプ10でーす"
    else
    @text = "タイプ11でーす"
    end
  end
end
