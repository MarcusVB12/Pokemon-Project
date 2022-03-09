public with sharing class PokemonService {
    
    @AuraEnabled(cacheable=true)
    public static PokemonWrapper.PokemonDetailWrapper getPokemonCallout(String searchPokemon){
        
        return PokemonCallout.getPokemonCallout(searchPokemon);  
    }

}
