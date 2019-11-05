package vetApp;


import java.util.ArrayList;
import java.util.List;

public class Pronari {

    private String emri;
    private String mbiemri;
    private String nrTel;
    private String email;
    private List<Kafsha> kafshet  = new ArrayList<>();

    public String getEmri() {
        return emri;
    }

    public void setEmri(String emri) {
        this.emri = emri;
    }

    public String getMbiemri() {
        return mbiemri;
    }

    public void setMbiemri(String mbiemri) {
        this.mbiemri = mbiemri;
    }

    public String getNrTel() {
        return nrTel;
    }

    public void setNrTel(String nrTel) {
        this.nrTel = nrTel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void shtoKafshe(Kafsha kafsha){
        this.kafshet.add(kafsha);
    }

    public List<Kafsha> getKafshet() {
        return kafshet;
    }

    public Kafsha getKafsha(String emri, String lloji){
        Kafsha kafsha1 = null;
        for (Kafsha kafsha:kafshet){
            if (kafsha.getLloji().equals(lloji) && kafsha.getEmri().equals(emri)){
                kafsha1 = kafsha;
                break;
            }
        }
        return kafsha1;
    }
    public void hiqKafshe(Kafsha kafsha){
        this.kafshet.remove(kafsha);
    }


}
