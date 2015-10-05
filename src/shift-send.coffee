ReturnValue = require 'nanocyte-component-return-value'

class ShiftSend extends ReturnValue
  onEnvelope: (envelope) =>
    { data } = envelope

    message = data[0]
    return message if message?

module.exports = ShiftSend
