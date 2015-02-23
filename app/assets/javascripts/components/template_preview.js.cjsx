window.TemplatePreview = React.createClass
  displayName: 'TemplatePreview'

  getInitialState: ->
    selectedValue: 1 # figure out how to set this better than hardcoded

  propTypes:
    first_name : React.PropTypes.string

  render: ->
    templates = this.props.templates
    console.log this.state
    console.log this.props
    <div>
      <h2>{this.props.first_name} {this.props.last_name}</h2>
      <p>{this.props.about}</p>
      <p>{this.state.selectedValue}</p>
      <br/>
      <select value={this.state.selectedValue}, onChange={this.handleChange}>
        {templates.map (template) ->
          <option value={template.id}, key={template.id}>{template.name}</option>}
      </select>
    </div>

  handleChange: (event) ->
    @setState {selectedValue: event.target.value}
