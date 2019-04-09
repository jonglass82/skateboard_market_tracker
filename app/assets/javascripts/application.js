// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require Chart.bundle
//= require chartkick
//= require_tree 

  data: function() {
    return {
      title: "",
      body: "",
      image: ""
    };
  },
  created: function() {},
  methods: {
    setFile: function(event) {
      if (event.target.files.length > 0) {
        this.image = event.target.files[0];
      }
    },
    submit: function() {
      var formData = new FormData();
      formData.append("title", this.title);
      formData.append("body", this.body);
      formData.append("image", this.image);

      axios.post("http://localhost:3000/api/posts", formData).then(response => {
        this.title = "";
        this.body = "";
        this.$refs.fileInput.value = "";
      });
    }
  },
