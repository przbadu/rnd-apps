require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # Uncomment to use chrome driver
  # driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  # Uncomment to use headless chrome driver
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end
