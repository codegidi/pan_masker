class Pan_masker::Finder::Masker
  def self.mask_pan(pan)
    panLenght = pan.length
    firstSix = pan[0..5]
    lastFour = pan[panLenght-4..panLenght]

    panLenghtToBeMasked = panLenght - 10
    count = 1
    mask  = '*'
    begin
      mask = mask + '*'
      count += 1
    end  while count < panLenghtToBeMasked
    maskedPan =  firstSix + mask + lastFour
    maskedPan
  end
end

