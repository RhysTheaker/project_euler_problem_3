require_relative '../lib/problem3'

describe 'problem3' do

  before(:all) do
    @problem = Problem3.new
  end

  it "should return an integer" do
    expect(@problem.num_factors(100)).to be_kind_of Integer
  end

  it "should return the largest prime factor" do
    expect(@problem.num_factors(100)).to eq 5
    expect(@problem.num_factors(87678)).to eq 4871
  end

  it "should store the factors for a given input" do
    @problem.num_factors(100)
    expect(@problem.factor_array).to be_kind_of Array
    expect(@problem.factor_array[0]).to be_kind_of Integer
    expect(@problem.factor_array.length).to be_kind_of Integer
    expect(@problem.factor_array[0]).to eq 1
    expect(@problem.factor_array[1]).to eq 2
    expect(@problem.factor_array[2]).to eq 4
    expect(@problem.factor_array[7]).to eq 50
  end

  it "should store the factors for a given input" do
    @problem.num_factors(100)
    expect(@problem.prime_array).to be_kind_of Array
    expect(@problem.prime_array[0]).to be_kind_of Integer
    expect(@problem.prime_array.length).to be_kind_of Integer
    expect(@problem.prime_array[0]).to eq 2
    expect(@problem.prime_array[1]).to eq 5
  end

end
