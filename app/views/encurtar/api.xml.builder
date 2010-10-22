#TODO Terminar esse Motor de Busca para o Firefox
xml.instruct! :xml, :version => "1.0"
xml.item {
  xml.title "Xml Leve.Me"
  xml.error 0
  xml.errormessage "OK"
  xml.created_at @link.created_at
  xml.source "site"
  xml.date Time.now  
  xml.id @link.atalho
  xml.url @link.url.href
  xml.migre "#{$URL_ROOT}/#{@link.atalho}"
  xml.category "free"
}
