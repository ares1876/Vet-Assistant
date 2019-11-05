package vetApp.interfaces;

import vetApp.Kafsha;
import vetApp.Pronari;

import java.util.List;

public interface VeprimePronaret {

    public void shtoPronare(Pronari pronari);
    public Pronari kerkoPronare(String emri, String mbiemri);
    public void lidhKafshen(Kafsha kafsha);
    public void fshijPronarin(Pronari pronari);
    List<Pronari> getPronaret();

}
