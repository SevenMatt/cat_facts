class CatFactsController < ApplicationController #=> Cria um controller chamado CatFactsController que herda do ApplicationControler. Todo controller Rails precisa herdar dele.
  include HTTParty #=> Adiciona funcionalidade da gem HTTParty, que permite fazer requisições HTTP facilmente.
  base_uri 'https://catfact.ninja' #=> Define a URL base do API, para que possamos chamar endpoints relativos ('/fact').

  def index #=> Define a ação index do controller. Em Rails, cada ação normalmente corresponde a uma página ou uma resposta.
    response = self.class.get('/fact') #=> Faz a requisição GET para https://catfact.ninja/fact e retorna um JSON com um fato de gato
   @cat_fact = response.success? && response['fact'].present? ? response['fact'] : "Erro ao buscar fato" #=> @cat_fact -> variável de instância usada na viw. response.success? -> checa se a requisição foi bem sucedida. response['fact'] -> extrai o fato do JSON. Se algo der errado, mostra "Erro ao buscar fato".
  end
end