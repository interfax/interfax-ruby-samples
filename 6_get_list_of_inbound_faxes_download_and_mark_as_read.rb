# get all unread faxes
faxes = interfax.inbound.all(
  unreadOnly: true
)

faxes.each do |fax|
  # save the fax image
  fax.image.save("#{fax.messageId}.tiff")
  # # mark as read
  fax.mark(read: true)
end
