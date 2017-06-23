var Event = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    comment: React.PropTypes.text
  },
  render: function() {
    var event = this.props.event;
    return(
      <tr>
        <td>{event.name}</td>
        <td>{event.comment}</td>
      </tr>
    )
  }
});