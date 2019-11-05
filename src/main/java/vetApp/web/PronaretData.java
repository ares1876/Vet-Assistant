package vetApp.web;

import org.springframework.stereotype.Component;
import vetApp.Kafsha;
import vetApp.Pronari;
import vetApp.interfaces.VeprimePronaret;

import java.util.ArrayList;
import java.util.List;

@Component
public class PronaretData implements VeprimePronaret  {

    private List<Pronari> pronaret = new ArrayList<>();

    @Override
    public void lidhKafshen(Kafsha kafsha){
        String emri= kafsha.getEmriPronarit();
        String mbiemri = kafsha.getMbiemriPronarit();
        Pronari pronari = kerkoPronare(emri, mbiemri);
        if (pronari!=null){
            pronari.shtoKafshe(kafsha);
        }
    }

    @Override
    public void shtoPronare(Pronari pronari) {
        pronaret.add(pronari);
    }

    @Override
    public Pronari kerkoPronare(String emri, String mbiemri) {
        for(Pronari pronari: pronaret){
            if(pronari.getEmri().equals(emri)&& pronari.getMbiemri().equals(mbiemri)){
                return pronari;
            }
        }
        return null;
    }

    @Override
    public List<Pronari> getPronaret() {
        return pronaret;
    }

    @Override
    public void fshijPronarin(Pronari pronari) {
        pronaret.remove(pronari);
    }


}
