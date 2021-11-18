import axios from 'axios'

export default function fetchGames(startPos, tableControls, setFetchState, setGames) {

        setFetchState(p => ({...p, loading: true}))


        let url = `http://127.0.0.1:8000/api/games`;

        let {popular, newGames, free, price, genre, releaseDate} = tableControls;


        if(!!price) {
            url += '?price' + price
        }




        axios.get(url)
        .then(res => {
            setFetchState(p => ({...p, loading: false}))
            setGames(p => [...p, ...res.data.data])
        })
}
