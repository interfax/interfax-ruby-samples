# get all recent faxes
faxes = interfax.outbound.all

# cancel all processing faxes
faxes.each do |fax|
  fax.cancel if fax.status < 0
end
