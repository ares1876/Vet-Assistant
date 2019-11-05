package vetApp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vetApp.Kafsha;
import vetApp.Pronari;
import vetApp.interfaces.VeprimeKafshet;
import vetApp.interfaces.VeprimePronaret;

import javax.annotation.Resources;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Objects;

@Controller
@RequestMapping("/kafshet")
public class KafshetKontroller {

    private VeprimeKafshet veprimeKafshet;
    private VeprimePronaret veprimePronaret;

    @Autowired
    public KafshetKontroller(VeprimeKafshet veprimeKafshet, VeprimePronaret veprimePronaret) {
        this.veprimeKafshet = veprimeKafshet;
        this.veprimePronaret = veprimePronaret;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String kafshet() {
        return "kafshet";
    }

    @RequestMapping(value = "/shfaq_kafshen", method = RequestMethod.POST)
    public String shfaqKafshen(@RequestParam String emri, @RequestParam String lloji, @RequestParam String emriPronarit, @RequestParam String mbiemriPronarit, Model model) {

        Kafsha kafsha = veprimeKafshet.kerkoKafshe(emri, lloji, emriPronarit, mbiemriPronarit);

        if (kafsha != null) {
            model.addAttribute("kafsha", kafsha);
            return "redirect:shfaq_kafshen/" + lloji + "/" + emri + "/" + emriPronarit + "/" + mbiemriPronarit;
        } else {
            model.addAttribute("error", "The pet you are searching for does not exists. Please check the inserted data!");
            return "kafshet";
        }
    }

    @RequestMapping(value = "/shto_kafshe", method = RequestMethod.GET)
    public String shtoKafsheNderfaqe() {
        return "shtoKafshe";
    }

    @RequestMapping(value = "/shto_kafshe", method = RequestMethod.POST)
    public String shtoKafshe(@RequestPart("fotojaKafshes") MultipartFile fotojaKafshes, @ModelAttribute Kafsha kafsha, Model model) {

        try {
                if (fotojaKafshes.getSize() != 0){
                    String uploadsPath = Objects.requireNonNull(this.getClass().getClassLoader().getResource("../resources/uploads")).toURI().getPath();
                    fotojaKafshes.transferTo(new File(uploadsPath + "/" + fotojaKafshes.getOriginalFilename()));

                    kafsha.setEmriFotos(fotojaKafshes.getOriginalFilename());

                }else {
                    switch (kafsha.getLloji()){
                        case "qen":
                            kafsha.setEmriFotos("qeni-default.jpg");
                            break;
                        case "mace":
                            kafsha.setEmriFotos("cat-default.jpg");
                            break;
                        case "mi":
                            kafsha.setEmriFotos("mini-default.jpg");
                            break;
                        case "peshk":
                            kafsha.setEmriFotos("peshk-default.jpg");
                            break;
                        case "breshke":
                            kafsha.setEmriFotos("breshke-default.jpg");
                            break;

                    }
                }
            } catch (IOException | URISyntaxException e) {
            e.printStackTrace();
        }

        Pronari pronari = veprimePronaret.kerkoPronare(kafsha.getEmriPronarit(), kafsha.getMbiemriPronarit());

        if (pronari != null) {
            veprimeKafshet.shtoKafshe(kafsha);
            veprimePronaret.lidhKafshen(kafsha);
            return "redirect:shfaq_kafshen/" + kafsha.getLloji() + "/" + kafsha.getEmri() + "/" + kafsha.getEmriPronarit() + "/" + kafsha.getMbiemriPronarit();
        } else {
            model.addAttribute("error", "This owner does not exits -> \"" + kafsha.getEmriPronarit() + " " + kafsha.getMbiemriPronarit() + "\"");
            return "shtoKafshe";
        }
    }

    @RequestMapping(value = "/shfaq_kafshen/{lloji}/{emri}/{emriPronarit}/{mbiemriPronarit}", method = RequestMethod.GET)
    public String shfaqProfilinKafshes(@PathVariable String lloji, @PathVariable String emri,
                                       @PathVariable String emriPronarit, @PathVariable String mbiemriPronarit, Model model) {
        Kafsha kafsha = veprimeKafshet.kerkoKafshe(emri, lloji, emriPronarit, mbiemriPronarit);
        model.addAttribute("kafsha", kafsha);
        return "shfaqKafshen";
    }

}
