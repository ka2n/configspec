RSpec::Matchers.define :be_writable do
  match do |file|
    file.writable?(@by_whom)
  end

  chain :by do |by_whom|
    @by_whom = by_whom
  end
end
