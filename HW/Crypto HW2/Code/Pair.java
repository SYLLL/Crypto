public class Pair{
    char c;
    double freq;
    
    public Pair(char cha, double fre) {
    	c = cha;
    	freq = fre;
    }

    public int compareTo(Pair p2) {
        return Double.compare(p2.freq, this.freq);
    }

}