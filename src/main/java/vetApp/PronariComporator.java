package vetApp;

import java.util.Comparator;

public class PronariComporator implements Comparator<Pronari> {

    @Override
    public int compare(Pronari o1, Pronari o2) {
        if (o1.getEmri().compareTo(o2.getEmri()) ==0 ){
            return o1.getMbiemri().compareTo(o2.getMbiemri());
        } else {
            return o1.getEmri().compareTo(o2.getEmri());
        }
    }
}
