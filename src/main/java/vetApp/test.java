package vetApp;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class test {
    public static void main(String[] args) {
        Pronari pronari = new Pronari();
        pronari.setEmri("Ares");
        pronari.setMbiemri("Tahiraga");
        pronari.setNrTel("1054");
        pronari.setEmail("hasjfhksajhf");

        Pronari pronari1 = new Pronari();
        pronari1.setEmri("Kabir");
        pronari1.setMbiemri("Tahiraga");
        pronari1.setNrTel("1054");
        pronari1.setEmail("hasjfhksajhf");

        Pronari pronari2 = new Pronari();
        pronari2.setEmri("Ares");
        pronari2.setMbiemri("AAres");
        pronari2.setNrTel("1054");
        pronari2.setEmail("hasjfhksajhf");

        List<Pronari> pronaret = new ArrayList<>();

        pronaret.add(pronari);
        pronaret.add(pronari1);
        pronaret.add(pronari2);


        Collections.sort(pronaret, new PronariComporator());

        for (Pronari pronari5: pronaret){
            System.out.println(pronari5.getEmri() + " " + pronari5 .getMbiemri());
        }

    }
}