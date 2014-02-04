class Pan_masker
  def self.mask(data)
    maskedData = Finder.find_and_mask_pan(data.to_s)
    maskedData
  end
end

require 'pan_masker/finder'