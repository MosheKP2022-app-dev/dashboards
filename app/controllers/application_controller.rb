class ApplicationController < ActionController::Base

  def currency_pairs

    @currency_url = "https://api.exchangerate.host/symbols"
      
    @raw_json_string = open(@currency_url).read

    @parsed_json = JSON.parse(@raw_json_string)

    @symbols = @parsed_json.fetch("symbols")

    @currency_hash = @symbols.keys

    render({ :template=> "currency_templates/convert_first_currency.html.erb"})
 
  end
end
