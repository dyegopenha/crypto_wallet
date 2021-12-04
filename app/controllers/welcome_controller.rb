class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails [COOKIE]"
    session[:curso] = "Curso de Ruby on Rails [SESSION]"
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
  end
end
