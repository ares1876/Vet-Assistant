package vetApp.web;

import javafx.scene.web.PromptData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import vetApp.Kafsha;
import vetApp.Pronari;
import vetApp.interfaces.VeprimeKafshet;
import vetApp.interfaces.VeprimePronaret;

import java.util.List;


@Controller
@RequestMapping("/pronaret")
public class PronaretKontroller{

    private VeprimePronaret veprimePronaret;
    private VeprimeKafshet veprimeKafshet;


    @Autowired
    public PronaretKontroller (VeprimePronaret veprimePronaret,VeprimeKafshet veprimeKafshet){
        this.veprimePronaret = veprimePronaret;
        this.veprimeKafshet = veprimeKafshet;
    }


    @RequestMapping(method = RequestMethod.GET)
    public String pronaret(){
        return "pronaret";
    }

    @RequestMapping(value = "/shfaq_pronarin", method = RequestMethod.POST)
    public String shfaqPronarin(@RequestParam String emri, @RequestParam String mbiemri, Model model){
        Pronari pronari = veprimePronaret.kerkoPronare(emri, mbiemri);

        if (pronari!=null){
            model.addAttribute("pronari", pronari);
            return "redirect:shfaq_pronarin/" + emri + "-" + mbiemri;
        }else {
            model.addAttribute("error", "Please check again because \"" + emri + " " +  mbiemri +"\" does not exist!");
            return "pronaret";
        }


    }

    @RequestMapping(value = "/shto_pronar", method = RequestMethod.GET)
    public String shtoPronarinNderfaqe(){
        return "shtoPronar";
    }


    @RequestMapping(value = "/shto_pronar", method = RequestMethod.POST)
    public String shtoPronar(@ModelAttribute Pronari pronari, BindingResult result){

        if (result.hasErrors()){
            return "shtoPronar";
        }

        veprimePronaret.shtoPronare(pronari);
        return "redirect:shfaq_pronarin/"+pronari.getEmri() + "-" + pronari.getMbiemri();
    }

    @RequestMapping(value = "/shfaq_pronarin/{pronariText}", method = RequestMethod.GET)
    public String shfaqProfilinPronarit(@PathVariable("pronariText") String pronariText, Model model){
        int i = pronariText.indexOf("-");
        String emri = pronariText.substring(0,i);
        String mbiemri = pronariText.substring(i+1);
        Pronari pronari = veprimePronaret.kerkoPronare(emri, mbiemri);
        model.addAttribute(pronari);

        return "shfaqPronarin";
    }

    @RequestMapping(value = "/fshirje", method = RequestMethod.POST)
    public String fshijPronar(@RequestParam String emriPronarit,
                              @RequestParam String mbiemriPronarit, Model model){
           Pronari pronari = veprimePronaret.kerkoPronare(emriPronarit, mbiemriPronarit);
           model.addAttribute("emri", emriPronarit);
           model.addAttribute("mbiemri", mbiemriPronarit);
           List<Kafsha> kafshet = pronari.getKafshet();
           veprimeKafshet.fshijKafshet(kafshet);
           veprimePronaret.fshijPronarin(pronari);

           return "PronariuFshi";


    }

    @RequestMapping(value = "/ndrysho", method = RequestMethod.POST)
    public String ndryshoPronarin(@RequestParam String emri, @RequestParam String mbiemri, @RequestParam String emriRi,
                                  @RequestParam String mbiemriRi, @RequestParam String nrTelRi, @RequestParam String emailRi,
                                  Model model){
        Pronari pronari = veprimePronaret.kerkoPronare(emri, mbiemri);
        pronari.setEmri(emriRi);
        pronari.setMbiemri(mbiemriRi);
        pronari.setEmail(emailRi);
        pronari.setNrTel(nrTelRi);
        for (Kafsha kafsha : pronari.getKafshet()){
            kafsha.setEmriPronarit(emriRi);
            kafsha.setMbiemriPronarit(mbiemriRi);
        }
        model.addAttribute("pronari", pronari);
        return "shfaqPronarin";
    }


    @RequestMapping(value = "/shfaq_pronarin/hiqkafshen", method = RequestMethod.POST)
    public String hiqKafshen(@RequestParam String emriPronarit, @RequestParam String mbiemriPronarit, @RequestParam String emriKafshes, @RequestParam String lloji, Model model){

        Pronari pronari = veprimePronaret.kerkoPronare(emriPronarit, mbiemriPronarit);
        Kafsha kafsha = pronari.getKafsha(emriKafshes, lloji);
       if (kafsha!=null){
           pronari.hiqKafshe(kafsha);
           veprimeKafshet.fshijKafshen(kafsha);
           model.addAttribute("msgFshijKafshen", "Pet was removed successfully!");
           return "redirect:/pronaret/shfaq_pronarin/" + emriPronarit + "-" + mbiemriPronarit ;
       }else {
           model.addAttribute("msgFshijKafshen", "Pet you want to remove does not exist!");
           return "redirect:/pronaret/shfaq_pronarin/" + emriPronarit + "-" + mbiemriPronarit ;
       }


    }
}
