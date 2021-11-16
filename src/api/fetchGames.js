import axios from 'axios'

export default function fetchGames(startPos, tableControls, setFetchState, setGames) {
        let dboutput = Array(25).fill({image : "https://steamcdn-a.akamaihd.net/steam/apps/866800/capsule_616x353.jpg?t=1579804618", game : "The walking dead", price : "69"})
    
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


        setTimeout(() => {
            setFetchState(p => ({...p, loading: false}))
            startPos === 0 ? setGames(dboutput) : setGames(p => [...p, ...dboutput])
        }, 1000);

        /*
        axios.get(url)
        .then(res => {
            setFetchState(p => ({...p, loading: false}))
            setGames(p => [...p, ...dboutput])
        })
        */
}
