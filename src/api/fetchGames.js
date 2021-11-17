import axios from 'axios'

export default function fetchGames(startPos, tableControls, setFetchState, setGames) {

        setFetchState(p => ({...p, loading: true}))


        let url = `https://jsonplaceholder.typicode.com/todos/?startpos=${startPos}&endpos=${startPos + 25}`;

        let {popular, newGames, free, price, genre, releaseDate} = tableControls;

        if(popular) {
            url += '&popular=true'
        }
        if(newGames) {
            url += '&newGames=true'
        }
        if(free) {
            url += '&free=true'
        }
        if(!!price) {
            url += '&price=' + price
        }
        if(!!genre) {
            url += '&genre=' + genre
        }
        if(!!releaseDate) {
            url += '&releaseDate=' + releaseDate
        }



        axios.get("http://127.0.0.1:8000/api/games")
        .then(res => {
            setFetchState(p => ({...p, loading: false}))
            setGames(p => [...p, ...res.data.data])
        })
}
