class Pan_masker::Finder
  def self.find_and_mask_pan(data)
    extractedPans = data.scan(/[\d][0-9]{18}|[\d][0-9]{15}/)

    if extractedPans.any?
      arrayLength = extractedPans.count
      count = 0
      begin
        currentPan = extractedPans[count]
        maskedPan = Masker.mask_pan(currentPan)
        data = data.gsub(currentPan, maskedPan)
        count += 1
      end while count < arrayLength
      data
    else
      data
    end
  end
end

require 'pan_masker/masker'

