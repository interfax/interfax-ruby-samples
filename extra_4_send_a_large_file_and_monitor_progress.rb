# read the file to send
file = File.open('test.pdf', 'rb')

# create a new InterFAX Document
document = interfax.documents.create(
  'test.pdf',
  file.size
)

# upload each chunk
cursor = 0
while !file.eof?
  chunk = file.read(500)
  next_cursor = cursor + chunk.length
  # upload a specific chunk
  document.upload(cursor, next_cursor-1, chunk)
  cursor = next_cursor
end

# send the fax
interfax.outbound.deliver(
  # a valid fax number
  faxNumber: "+11111111112",
  # the document URI
  file: document.uri
)
