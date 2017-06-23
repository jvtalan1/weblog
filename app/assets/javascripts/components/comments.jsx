var CommentsForm = React.createClass({
  propTypes: {
    commenter: React.PropTypes.string,
    body: React.propTypes.text
  },

  getInitialState: function() {
    return {
      commenter: '',
      body: ''
    }
  },

  handleAdd: function(e) {
    e.preventDefault();
    var self = this;
    if (this.validForm()) {
      $.ajax({
        url: 'api/events',
        method: 'POST',
        data: { event: self.state },
        success: function(data) {
          self.props.handleAdd(data);
          self.setState(self.getInitialState());
        },
        error: function(xhr, status, error) {
          alert('Cannot add a new comment: ', error);
        }
      })
    } else {
      alert('Please fill all fields.');
    }
  },

  validForm: function() {
    if (this.state.name && this.state.comment) {
      return true;
    } else {
      return false;
    }
  },

  handleChange: function(e) {
    var input_name = e.target.name;
    var value = e.target.value;
    this.setState({ [input_name] : value });
  },

  render: function() {
    return(
      <form className="form-inline" onSubmit={this.handleAdd}>
        <div className="form-group">
          <input type="text"
                 className="form-control"
                 name="commenter"
                 placeholder="Name"
                 ref="commenter"
                 value={this.state.commenter}
                 onChange={this.handleChange} />
        </div>
        <div className="form-group">
          <input type="text"
                 className="form-control"
                 name="body"
                 placeholder="Comment"
                 ref="body"
                 value={this.state.body}
                 onChange={this.handleChange} />
        </div>
        <button type="submit" className="btn btn-primary">Post Comment</button>
      </form>
    )
  }
});