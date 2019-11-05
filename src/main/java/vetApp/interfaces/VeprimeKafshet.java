package vetApp.interfaces;

import vetApp.Kafsha;

import java.util.List;

public interface VeprimeKafshet {
    public void shtoKafshe(Kafsha kafsha);
    public Kafsha kerkoKafshe(String emri, String lloji, String emriPronarit, String mbiemriPronarit);
    public void fshijKafshen(Kafsha kafsha);
    public void fshijKafshet(List<Kafsha> kafshet);
    List<Kafsha> getKafshet();
    List<Kafsha> getMace();
    List<Kafsha> getQen();
    List<Kafsha> getPeshk();
    List<Kafsha> getMi();
    List<Kafsha> getBreshke();
}
