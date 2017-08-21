new Vue({
  el: '#app',
  data: {
    locale: locale
  },
  methods: {
    humanizeURL: function (url) {
      return url
      .replace(/^https?:\/\//, '')
      .replace(/\/$/, '')
    }
  }
})

