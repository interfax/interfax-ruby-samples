# This sample lives at https://github.com/interfax/interfax-ruby-samples/edit/master/1_send_individual_fax.rb
# Find more Ruby code samples at https://github.com/interfax/interfax-ruby/samples
# Find a discussion of this sample at https://www.interfax.net/en/dev/ruby/send-individual-fax

# send a single fax
fax = interfax.deliver(
  # a valid fax number
  faxNumber: "+11111111112",
  # a path to an InterFAX
  # compatible file
  file: 'path/to/fax.pdf'
)
