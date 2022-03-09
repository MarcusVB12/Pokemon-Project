public with sharing class PokemonWrapper {

    public class PokemonDetailWrapper {
        @AuraEnabled
        public SpritesWrapper sprites;
        @AuraEnabled
        public SpeciesWrapper species;
        @AuraEnabled
        public List<StatsWrapper> stats;
        @AuraEnabled
        public Erro erro;
    }
    public class SpeciesWrapper{
        @AuraEnabled
        public string name;
    }

    public class SpritesWrapper {
        @AuraEnabled
        public string front_default;
        @AuraEnabled
        public OtherWrapper other;

    }
    public class OtherWrapper {
        @AuraEnabled
        public DreamWorldWrapper dream_world;
    }

    public class DreamWorldWrapper {
        @AuraEnabled
        public string front_default;
    }

    public class StatsWrapper {
        @AuraEnabled
        public integer base_stat;
        @AuraEnabled
        public StatWrapper stat;
    }
    public class StatWrapper {
        @AuraEnabled
        public string name;
    }
    public class Erro{
        @AuraEnabled
        public string erro;
    }
}
