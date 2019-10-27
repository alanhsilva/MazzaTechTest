Dado("que o usuário possua um CEP {string}") do |varCEP|
  @request = HTTParty.get("https://viacep.com.br/ws/#{varCEP}/json/")
end

Então("deve ser possível receber todos dados de endereço do utilizando o CEP") do
  expect(@request.response.code).to eql "200"
  puts @request.to_s
end

Então("deve ser possível trazer o número do IBGE do endereço") do
  expect(@request.response.code).to eql "200"
  puts @request["ibge"].to_s
end

Então("o usuário deve receber a resposta {int}, que siginifca bad request") do |varCodRequest|
  expect(@request.response.code).to eql varCodRequest.to_s
  puts @request.to_s
end
