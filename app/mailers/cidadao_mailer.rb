class CidadaoMailer < ApplicationMailer
  default from: 'igorscheidegger@gmail.com'

  def email_cadastro
    @cidadao = params[:cidadao]
    mail(to: @cidadao.email, subject: 'Munícipes - Cadastro Realizado')
  end

  def email_cadastro_atualizado
    @cidadao = params[:cidadao]
    mail(to: @cidadao.email, subject: 'Munícipes - Cadastro Atualizado')
  end
end
