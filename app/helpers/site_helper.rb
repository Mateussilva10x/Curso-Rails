module SiteHelper
  def msg_jumbotron
    case params[:action]
    when 'index'
      "Ultimas perguntas cadastradas"
    when 'questions'
      "Resultados para: \"#{params[:term]}\""
    when 'subject'
      "Resultados para: \"#{params[:subject]}\""
    end
  end
end
