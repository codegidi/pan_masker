class Pan_masker
  def self.mask(*args)
    if args.size == 1
      Pan_masker.maskStart(args[0],'default')
    elsif args.size == 2
      Pan_masker.maskStart(args[0],args[1])
    else
      Pan_masker.maskStart(args[0],'default')
    end
  end

  def self.maskStart(data,cardType)
    maskedData = Finder.find_and_mask_pan(data.to_s,cardType.to_s)
    maskedData
  end
end

require 'pan_masker/finder'