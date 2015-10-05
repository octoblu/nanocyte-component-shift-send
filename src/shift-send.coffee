ReturnValue = require 'nanocyte-component-return-value'

class ShiftSend extends ReturnValue
  onEnvelope: (envelope) =>
    { data } = envelope

    sendMessage = data[0] if data?
    return sendMessage if sendMessage?

module.exports = ShiftSend
