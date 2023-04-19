var app = new Vue({
    el:'#app',
    data : {
        list_jadwal : ''
    },

    mounted() {
        let url = 'http://127.0.0.1:8000/jadwal_imsak/'
        fetch(url)
            .then(response => response.json())
            .then(data => {
                this.list_jadwal = data
            })
    }
})