# PaperTrailBinarySerializer

This gem is an extension to paper_trail gem https://github.com/paper-trail-gem/paper_trail. That means you need to install `paper_trail` gem. This gem will add one serializer used on columns with type `:binary`, encoding the content with base64 to prevent errors when generating JSON.

