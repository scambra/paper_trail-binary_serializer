module PaperTrailBinarySerializer
  class Base64 < ActiveModel::Type::Binary
    def serialize(val)
      ::Base64.encode64(val) if val
    end
    def deserialize(val)
      ::Base64.decode64(val) if val
    end
  end
end
