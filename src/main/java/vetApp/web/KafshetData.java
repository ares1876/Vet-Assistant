package vetApp.web;

import org.springframework.stereotype.Component;
import vetApp.Kafsha;
import vetApp.interfaces.VeprimeKafshet;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class KafshetData implements VeprimeKafshet {

    private List<Kafsha> kafshet = new ArrayList<>();
    private List<Kafsha> qen = new ArrayList<>();
    private List<Kafsha> mace = new ArrayList<>();
    private List<Kafsha> mi = new ArrayList<>();
    private List<Kafsha> breshke = new ArrayList<>();
    private List<Kafsha> peshk = new ArrayList<>();

    public void setKafshet(List<Kafsha> kafshet) {
        this.kafshet = kafshet;
    }

    @Override
    public List<Kafsha> getQen() {
        return qen;
    }

    public void setQen(List<Kafsha> qen) {
        this.qen = qen;
    }

    @Override
    public List<Kafsha> getMace() {
        return mace;
    }

    public void setMace(List<Kafsha> mace) {
        this.mace = mace;
    }

    @Override
    public List<Kafsha> getMi() {
        return mi;
    }

    public void setMi(List<Kafsha> mi) {
        this.mi = mi;
    }

    @Override
    public List<Kafsha> getBreshke() {
        return breshke;
    }

    public void setBreshke(List<Kafsha> breshke) {
        this.breshke = breshke;
    }

    @Override
    public List<Kafsha> getPeshk() {
        return peshk;
    }

    public void setPeshk(List<Kafsha> peshk) {
        this.peshk = peshk;
    }

    @Override
    public void shtoKafshe(Kafsha kafsha) {
        kafshet.add(kafsha);

        switch (kafsha.getLloji()){
                case "qen":
                    qen.add(kafsha);
                    break;
                case "mace":
                    mace.add(kafsha);
                    break;
                case "mi":
                    mi.add(kafsha);
                    break;
                case "peshk":
                    peshk.add(kafsha);
                    break;
                case "breshke":
                    breshke.add(kafsha);
                    break;
        }
    }

    @Override
    public Kafsha kerkoKafshe(String emri, String lloji, String emriPronarit, String mbiemriPronarit) {
        for(Kafsha kafsha: kafshet){
            if (kafsha.getEmri().equals(emri) && kafsha.getLloji().equals(lloji)
                    && kafsha.getEmriPronarit().equals(emriPronarit)&& kafsha.getMbiemriPronarit().equals(mbiemriPronarit)) {
                return kafsha;
            }
        }
        return null;
    }

    @Override
    public List<Kafsha> getKafshet() {
        return kafshet;
    }

    @Override
    public void fshijKafshen(Kafsha kafsha) {
        kafshet.remove(kafsha);

        switch (kafsha.getLloji()){
            case "qen":
                qen.remove(kafsha);
                break;
            case "mace":
                mace.remove(kafsha);
                break;
            case "mi":
                mi.remove(kafsha);
                break;
            case "peshk":
                peshk.remove(kafsha);
                break;
            case "breshke":
                breshke.remove(kafsha);
                break;
        }
    }

    @Override
    public void fshijKafshet(List<Kafsha> kafshetQeDoFshihen) {
        for (Kafsha kafsha : kafshetQeDoFshihen){
            kafshet.remove(kafsha);
            switch (kafsha.getLloji()){
                case "qen":
                    qen.remove(kafsha);
                    break;
                case "mace":
                    mace.remove(kafsha);
                    break;
                case "mi":
                    mi.remove(kafsha);
                    break;
                case "peshk":
                    peshk.remove(kafsha);
                    break;
                case "breshke":
                    breshke.remove(kafsha);
                    break;
            }
        }
    }
}
