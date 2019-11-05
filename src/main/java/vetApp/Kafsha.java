package vetApp;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class Kafsha {

    private String emriPronarit;
    private String mbiemriPronarit;
    private String emri;
    private String mosha;
    private String lloji;
    private String shenime;
    private String emriFotos;
    private boolean hotel = false;
    private List<Map<String, Date>> listaVaksinimeve;


    public Kafsha(){

    }

    public String getMbiemriPronarit() {
        return mbiemriPronarit;
    }

    public void setMbiemriPronarit(String mbiemriPronarit) {
        this.mbiemriPronarit = mbiemriPronarit;
    }

    public String getEmriPronarit() {
        return emriPronarit;
    }

    public void setEmriPronarit(String emriPronarit) {
        this.emriPronarit = emriPronarit;
    }

    public String getEmri() {
        return emri;
    }

    public void setEmri(String emri) {
        this.emri = emri;
    }

    public String getMosha() {
        return mosha;
    }

    public void setMosha(String mosha) {
        this.mosha = mosha;
    }

    public String getShenime() {
        return shenime;
    }

    public void setShenime(String shenime) {
        this.shenime = shenime;
    }

    public String getLloji() {
        return lloji;
    }

    public void setLloji(String lloji) {
        this.lloji = lloji;
    }

    public boolean isHotel() {
        return hotel;
    }

    public void setHotel(boolean hotel) {
        this.hotel = hotel;
    }

    public String getEmriFotos() {
        return emriFotos;
    }

    public void setEmriFotos(String emriFotos) {
        this.emriFotos = emriFotos;
    }

    public List<Map<String, Date>> getListaVaksinimeve() {
        return listaVaksinimeve;
    }

}
