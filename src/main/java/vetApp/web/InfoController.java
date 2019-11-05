package vetApp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vetApp.Kafsha;
import vetApp.Pronari;
import vetApp.PronariComporator;
import vetApp.interfaces.VeprimeKafshet;
import vetApp.interfaces.VeprimePronaret;

import java.util.*;

@Controller
@RequestMapping(value = "/info")
public class InfoController {

    private VeprimeKafshet veprimeKafshet;
    private VeprimePronaret veprimePronaret;

    @Autowired
    public InfoController (VeprimeKafshet veprimeKafshet, VeprimePronaret veprimePronaret){
        this.veprimeKafshet = veprimeKafshet;
        this.veprimePronaret = veprimePronaret;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showMainInfo(Model model){
        List<Kafsha> kafshet = veprimeKafshet.getKafshet();

        List<Kafsha> macet = veprimeKafshet.getMace();
        List<Kafsha> qent = veprimeKafshet.getQen();
        List<Kafsha> breshkat = veprimeKafshet.getBreshke();
        List<Kafsha> peshqit = veprimeKafshet.getPeshk();
        List<Kafsha> minjte= veprimeKafshet.getMi();


        model.addAttribute("kafshet", kafshet);
        model.addAttribute("macet", macet);
        model.addAttribute("minjte", minjte);
        model.addAttribute("qent", qent);
        model.addAttribute("breshkat", breshkat);
        model.addAttribute("peshqit", peshqit);

        List<Pronari> pronaret = veprimePronaret.getPronaret();
        Collections.sort(pronaret, new PronariComporator());
        model.addAttribute("pronaret", veprimePronaret.getPronaret());


        return "MainInfo";
    }

    
}
