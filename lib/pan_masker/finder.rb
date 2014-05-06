class Pan_masker::Finder
  def self.find_and_mask_pan(data,cardType)
    cardType = cardType.capitalize
    case cardType
      when 'DEFAULT'
        extractedPans = data.scan(/[\d][0-9]{11,18}/)
      when 'VERVE'
        extractedPans = data.scan(/[\d][0-9]{18}$/)
      when 'MASTERCARD'
        extractedPans = data.scan(/[\d][0-9]{15}$/)
      when 'VISA'
        extractedPans = data.scan(/[\d][0-9]{12}$|[\d][0-9]{15}$/)
      when 'MAESTRO'
        extractedPans = data.scan(/[\d][0-9]{11}$|[\d][0-9]{18}$/)
      when 'CHINAUNIONPAY'
        extractedPans = data.scan(/[\d][0-9]{18}$|[\d][0-9]{15}$/)
      else
        extractedPans = data.scan(/[\d][0-9]{11,18}/)
    end

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