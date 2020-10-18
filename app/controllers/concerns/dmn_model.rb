require 'httparty'

class DmnModel
  class << self
    def execute(violation)
      resp = HTTParty.post(
        'http://0.0.0.0:8080/traffic-violation',
        body: to_dmn(violation).to_json,
        headers: { 'Content-Type': 'application/json', 'Accept': 'application/json' },
        basic_auth: { username: 'kieserver', password: 'kieserver1!' }).to_h
      resp.to_h
    end

    private

    def to_dmn(violation)
      driver = violation.driver
      {
        'Driver': {
          'Name': driver.name,
          'Points': driver.points,
          'Age': driver.age,
        },
        'Violation': {
          'Type': violation.violation_type,
          'Speed Limit': violation.speed_limit,
          'Actual Speed': violation.actual_speed,
        },
      }
    end
  end
end
