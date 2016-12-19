# get all unread faxes
faxes = interfax.inbound.all(
  unreadOnly: true
)

faxes.each do |fax|
  # save the fax image
  image = fax.image
  image.save("#{fax.messageId}.#{image.extension}")
  # # mark as read
  fax.mark(read: true)
end
