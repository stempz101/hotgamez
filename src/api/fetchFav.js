import axios from 'axios'

export default function fetchFav(favstartPos, favtableControls, favsetFetchState, favsetGames) {

    favsetFetchState(p => ({...p, loading: true}))

    axios.get("http://127.0.0.1:8000/api/favorites",{withCredentials : true, headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'}})
        .then(res => {
            favsetFetchState(p => ({...p, loading: false}))
            favsetGames(p => [...p, ...res.data.data])
        })
}
