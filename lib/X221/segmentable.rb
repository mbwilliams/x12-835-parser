module X221
  module Segmentable
    SEGMENT_TERMINATOR = '~'
    ELEMENT_DELIMITER  = '*'

    SEGMENT_NAMES = {
      isa: 'Interchange Control Header',
      iea: 'Interchange Control Trailer',
      gs:  'Functional Group Header',
      ge:  'Functional Group Trailer',
      st:  'Transaction Set Header',
      se:  'Transaction Set Trailer',
      bpr: 'Beginning Segment for Payment Order/Remittance Advice',
      trn: 'Trace',
      cur: 'Currency',
      ref: 'Reference Information',
      dtm: 'Date/Time Reference',
      n1:  'Party Identification',
      n3:  'Party Location',
      n4:  'Geographic Location',
      per: 'Administrative Communications Contact',
      rdm: 'Remittance Delivery Method',
      lx:  'Transaction Set Line Number',
      ts3: 'Transaction Statistics',
      ts2: 'Transaction Supplemental Statistics',
      clp: 'Claim Level Data',
      cas: 'Claims Adjustment',
      mia: 'Medicare Inpatient Adjudication',
      moa: 'Medicare Outpatient Adjudication',
      amt: 'Monetary Amount Information',
      qty: 'Quantity Information',
      svc: 'Service Information',
      lq:  'Industry Code Identification',
      plb: 'Provider Level Adjustment',
    }

    def self.cleanse_raw_data(raw_data)
      raw_data.sub(SEGMENT_TERMINATOR, '').gsub(/[^\S ]/, '')
    end

    def self.build_data_elements(cleansed_raw_data)
      cleansed_raw_data.split(ELEMENT_DELIMITER)
    end
  end
end
