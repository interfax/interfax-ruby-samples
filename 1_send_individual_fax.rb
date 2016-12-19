# send a single fax
fax = interfax.deliver(
  # a valid fax number
  faxNumber: "+11111111112",
  # a path to an InterFAX
  # compatible file
  file: 'path/to/fax.pdf'
)
