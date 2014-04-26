RSpec::Matchers.define :be_readable do
  match do |file|
    file.readable?(@by_whom)
  end

  chain :by do |by_whom|
    @by_whom = by_whom
  end
end
