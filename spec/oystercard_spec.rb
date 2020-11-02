require 'oystercard'
describe Oystercard do

  it "must exist" do
    expect(subject).to be_an_instance_of(Oystercard)
  end

  it "must have a default balance of £0" do
    expect(subject.balance).to eq(0)
  end

  it "responds to top_up method" do
    expect(subject).to respond_to(:top_up)
  end

  it "can add currency to the balance" do
    expect{subject.top_up(10)}.to change {subject.balance}.from(0).to(10)
  end

end


#1 OysterCard class must exist (each oystercard is an instance of this class)

#2 OysterCard must be able to accept currency

    # does this just mean there needs to exist a variable to store the £££ ?

#3 User must be able to add money to the OysterCard

    # create method .top_up which adds desired balance to an instance variable

#4 OysterCard must have a balance cap e.g. maximum possible balance

#5 When customer takes a trip, fare must be deducted from OysterCard

#6 Customer must be able to 'tap in' and 'tap out'

    # def tap_in and def tap_out

#7 OysterCard should warn user if balance drops below minimum single fare

    # raise_error if  @balance < 1.80

#8 Fare must be deducted upon 'tap out'

    #deduct fare from balance in tap_out method

#9 OysterCard must store journey starting station

    #the station variabe passed in as an argument must be stored

#10 Customer can view all previous trips

    # hmmm ?? this implies a more advanced storage system

#11 OysterCard must 'know' what zone a station is in

#12 Penalty must be incurred if user fails to tap in or out

    # how would the system know? - maybe if you don't pass the station argument?
    # or if tap_out is not called with X hours of tap_in being called?
    # how do we make the program count  !?

#13 System must calculate and charge the correct fare

    # confirm starting zone, confirm destination zone, charge accordingly
    # add figure to @fare variable
    # deduct from balance

# Mental Sketch of Program
#
# I see this looking something like:
#
# OysterCard.tap_in(station)
#
# Oystercard.tap_out(station)
#
# upon tap out, fare is calculated and deducted from balance
#
# OysterCard.top_up(amount) can add balance to an OysterCard
