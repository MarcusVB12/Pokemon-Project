import { LightningElement,wire} from 'lwc';
import getPokemonCallout from '@salesforce/apex/PokemonService.getPokemonCallout';

const DELAY = 600;

export default class PokemonInfo extends LightningElement {
    searchPokemon = '';
    wrapperPokemon;
    image;
    error;

    handleKeyChange(event){
        this.searchPokemon = event.target.value;
    }
    handleSearch(){      
        getPokemonCallout({searchPokemon: this.searchPokemon })
        .then((result) =>{
            this.wrapperPokemon = result;
            this.image = result.sprites.other.dream_world;
            this.error = undefined;
        })
        .catch((error)=>{
            console.log('error' + error);
            this.error = error;
            this.wrapperPokemon = undefined;
        });
    } 
}
