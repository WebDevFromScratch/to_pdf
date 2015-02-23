window.Counter = React.createClass
  displayName: 'Counter'

  getInitialState: ->
    count: 0

  render: ->
    <div>
      <span className='count'>{this.state.count}</span>
      <button onClick={this.increaseCounter}>'+1'</button>
      <button onClick={this.decreaseCounter}>'-1'</button>
    </div>

  increaseCounter: ->
    @setState count: @state.count + 1

  decreaseCounter: ->
    @setState count: @state.count - 1
