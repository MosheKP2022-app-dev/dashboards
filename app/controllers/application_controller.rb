class ApplicationController < ActionController::Base

  def first_currency

    @currency_url = "https://api.exchangerate.host/symbols"
      
    @raw_json_string = open(@currency_url).read

    @parsed_json = JSON.parse(@raw_json_string)

    @symbols = @parsed_json.fetch("symbols")

    @currency_hash = @symbols.keys

    render({ :template=> "currency_templates/convert_first_currency.html.erb"})
 
  end

  def second_currency

    @currency_url = "https://api.exchangerate.host/symbols"
      
    @raw_json_string = open(@currency_url).read

    @parsed_json = JSON.parse(@raw_json_string)

    @symbols = @parsed_json.fetch("symbols")

    @currency_hash = @symbols.keys

    @first_currency = params.fetch("currency")

    render({ :template=> "currency_templates/convert_second_currency.html.erb"})

 end

 def conversion

  @first_currency = params.fetch("currency1")
  @second_currency = params.fetch("currency2")

 @conversion_url = "https://api.exchangerate.host/convert?from=#{@first_currency}&to=#{@second_currency}"
      
 @raw_json_string2 = open(@conversion_url).read

 @parsed_json2 = JSON.parse(@raw_json_string2).fetch("info").fetch("rate")

 #@symbols = @parsed_json.fetch("symbols")

 #@currency_hash = @symbols.keys


 @conversion_url = "https://api.exchangerate.host/convert?from @first_currency=&to=@second_currency"

 render({ :template=> "currency_templates/final_conversion.html.erb"})
end

end
