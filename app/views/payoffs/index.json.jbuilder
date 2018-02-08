json.array!(@payoffs) do |payoff|
  json.extract! payoff, :id, :result_no, :generate_no, :e_no, :mob, :payoff, :attack, :support, :defense, :destroy, :selling, :income, :spending, :profit, :loss
  json.url payoff_url(payoff, format: :json)
end
