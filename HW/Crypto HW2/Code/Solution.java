import java.util.*;

public class Solution {
    List<Pair> rel = new ArrayList<Pair>();
    List<Pair> eng = new ArrayList<Pair>();

    rel.add(new Pair('a',0.0327));
    rel.add(new Pair('b',0.0100));
    rel.add(new Pair('c',0.0190));
    rel.add(new Pair('d',0.1132));
    rel.add(new Pair('e',0.0627));
    rel.add(new Pair('f',0.0820));
    rel.add(new Pair('g',0.0635));
    rel.add(new Pair('h',0.0219));
    rel.add(new Pair('i',0.0472));
    rel.add(new Pair('j',0.0231));
    rel.add(new Pair('k',0.0574));
    rel.add(new Pair('l',0.0650));
    rel.add(new Pair('m',0.0015));
    rel.add(new Pair('n',0.0158));
    rel.add(new Pair('o',0.0443));
    rel.add(new Pair('p',0.0013));
    rel.add(new Pair('q',0.0236));
    rel.add(new Pair('r',0.0022));
    rel.add(new Pair('s',0.0229));
    rel.add(new Pair('t',0.0651));
    rel.add(new Pair('u',0.0219));
    rel.add(new Pair('v',0.0791));
    rel.add(new Pair('w',0.0924));
    rel.add(new Pair('x',0.0091));
    rel.add(new Pair('y',0.0220));
    rel.add(new Pair('z',0.0010));

    eng.add(new Pair('a',0.0820));
    eng.add(new Pair('b',0.0150));
    eng.add(new Pair('c',0.0280));
    eng.add(new Pair('d',0.0430));
    eng.add(new Pair('e',0.1270));
    eng.add(new Pair('f',0.0220));
    eng.add(new Pair('g',0.0200));
    eng.add(new Pair('h',0.0610));
    eng.add(new Pair('i',0.0700));
    eng.add(new Pair('j',0.0020));
    eng.add(new Pair('k',0.0080));
    eng.add(new Pair('l',0.0400));
    eng.add(new Pair('m',0.0240));
    eng.add(new Pair('n',0.0670));
    eng.add(new Pair('o',0.0750));
    eng.add(new Pair('p',0.0190));
    eng.add(new Pair('q',0.0010));
    eng.add(new Pair('r',0.0600));
    eng.add(new Pair('s',0.0630));
    eng.add(new Pair('t',0.0910));
    eng.add(new Pair('u',0.0280));
    eng.add(new Pair('v',0.0100));
    eng.add(new Pair('w',0.0230));
    eng.add(new Pair('x',0.0010));
    eng.add(new Pair('y',0.0200));
    eng.add(new Pair('z',0.0010));

    public static void main(String[] args) {
    	Collections.sort(rel);
    	Collections.sort(eng);
    	for (int i=0; i<26; i++) {
    		System.out.println("rel: " + rel.get(i).c + "eng: " + eng.get(i).c);
    	}
    }
}