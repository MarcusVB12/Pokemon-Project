public with sharing class PokemonWrapper {

    public class PokemonDetailWrapper {
        public SpritesWrapper sprites;
        public List<StatsWrapper> stats;
    }

    public class SpritesWrapper {
        public string front_default;
        public OtherWrapper other;

    }
    public class OtherWrapper {
        public DreamWorldWrapper dream_world;
    }

    public class DreamWorldWrapper {
        public string front_default;
    }

    public class StatsWrapper {
        public integer base_stat;
        public StatWrapper stat;
    }
    public class StatWrapper {
        public string name;
    }

}
