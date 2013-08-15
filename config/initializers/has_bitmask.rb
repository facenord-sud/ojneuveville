# -*- encoding : utf-8 -*-
class <<ActiveRecord::Base
  def has_bit_mask (name, array)
    define_method "#{name}=" do |values|
      if values.is_a? String
        values = [values]
      end
      self.bit_mask = (values & array).map { |r| 2**array.index(r) }.inject(0, :+)
    end
    define_method "#{name}" do
      array.reject { |value|((bit_mask || 0) & 2**array.index(value)).zero?}
    end

    define_method "has_#{name}?" do |value|
      eval("#{name}").each do |r|
        return true if r == value
      end
      false
    end

    define_method "#{name}_are_empty?" do
      false
      true if self.bit_mask == 0 or eval("#{name}").empty?
    end

    #TODO: ajouter les méthodes de types rights<<(value) et rights>>(value)
    #define_method "#{name}<<" do |value|
      #array = eval "#{name}"
      #array2 = array<<value
      #puts array2.inspect
      #eval "self.#{name}=[\"ojien\", \"admin\"]"
    #end
  end
end
