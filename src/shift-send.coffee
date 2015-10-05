ReturnValue = require 'nanocyte-component-return-value'

class ShiftSend extends ReturnValue
  onEnvelope: (envelope) =>
    { data } = envelope

    return data[0] if data?[0]?
    return null

module.exports = ShiftSend
