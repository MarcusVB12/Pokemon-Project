import { LightningElement,api} from 'lwc';
import getPokemonCallout from '@salesforce/apex/PokemonService.getPokemonCallout';

const DELAY = 600;

export default class PokemonInfo extends LightningElement {
    searchPokemon = '';
    @api wrapperPokemon;
a
    error;

    handleKeyChange(event){
        this.searchPokemon = event.target.value;
    }
    handleSearch(){      
        getPokemonCallout({searchPokemon: this.searchPokemon })
        .then((result) =>{
            this.wrapperPokemon = result;
            this.handlep(result.stats);
            this.error = undefined; 
        })
        .catch((error)=>{
            console.log('error' + error);
            this.error = error;
            this.wrapperPokemon = undefined;
        });
    }

    handlep(a){
        for(let b of a){
            console.log('cc' + b.base_stat);
            console.log('cc' + b.stat.name);
        }
    }
}
