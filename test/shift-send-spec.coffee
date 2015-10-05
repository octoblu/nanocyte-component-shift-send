ReturnValue = require 'nanocyte-component-return-value'
ShiftSend = require '../src/shift-send'

describe 'ShiftSend', ->
  beforeEach ->
    @sut = new ShiftSend

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope containing array, should return first object', ->
      beforeEach ->
        @envelope =
          message: "blah"
          data: ['test1', 'test2', 'test3']
      it 'should return the first message', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal 'test1'
    describe 'when called with an envelope with empty array', ->
      beforeEach ->
        @envelope =
          message: "blah"
          data: []
      it 'shouldnt return the message', ->
        expect(@sut.onEnvelope(@envelope)).to.be.null
    describe 'when called with a null data property', ->
      beforeEach ->
        @envelope =
          message: "blah"
          data: null
      it 'shouldnt return the message', ->
        expect(@sut.onEnvelope(@envelope)).to.be.null
