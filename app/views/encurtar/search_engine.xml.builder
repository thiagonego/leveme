#TODO Terminar esse Motor de Busca para o Firefox

xml.OpenSearchDescription {
  xml.ShortName "MuralMap"
  xml.Description "MuralMap Imóveis"
  xml.InputEncoding "UTF-8"
#  xml.Image
  xml.Url({:type => "text/html", :method => "GET", :template => "http://localhost:3000"}) do |params|
    xml.params(:name => "searchName", :value => "{searchTerms}")
    xml.params(:name => "searchmode", :value => "2")
  end
}