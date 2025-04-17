require 'paper_trail_binary_serializer/base64'
require 'paper_trail_binary_serializer/version'

PaperTrail::AttributeSerializers::AttributeSerializerFactory.module_eval do
  orig_for = method(:for)
  define_singleton_method :for do |klass, attr|
    serializer = orig_for.call(klass, attr)
    if serializer.is_a?(ActiveModel::Type::Binary)
      PaperTrailBinarySerializer::Base64.new(**serializer.instance_values.symbolize_keys)
    else
      serializer
    end
  end
end
