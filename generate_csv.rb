# frozen_string_literal: true

require 'csv'
require 'date'
require 'securerandom'

# Configuration
NUM_ROWS = 1_000_000 # Adjust this number for more or fewer rows
OUTPUT_FILE = 'devices.csv'

# Sample data arrays for randomized values
MODELS = %w[ModelA ModelB ModelC].freeze
SALE_STATUSES = %w[sold in_stock returned].freeze

CSV.open(OUTPUT_FILE, 'w', write_headers: true,
                           headers: %w[serial_number model firmware_version manufactured_date sale_status]) do |csv|
  NUM_ROWS.times do |i|
    serial_number = "SN#{format('%06d', i + 1)}" # e.g., SN000001, SN000002, ...
    model = MODELS.sample
    # Random firmware version: major between 1 and 3, minor between 0 and 9.
    firmware_version = "#{rand(1..3)}.#{rand(0..9)}"
    # Random manufactured_date within the last 1000 days.
    manufactured_date = (Date.today - rand(0..1000)).to_s
    sale_status = SALE_STATUSES.sample

    csv << [serial_number, model, firmware_version, manufactured_date, sale_status]
  end
end

puts "Generated #{NUM_ROWS} rows in #{OUTPUT_FILE}"
