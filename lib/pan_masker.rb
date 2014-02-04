class Pan_masker
  def self.mask(data)
    maskedData = Finder.find_and_mask_pan(data)
    maskedData
  end
end

require 'pan_masker/finder'