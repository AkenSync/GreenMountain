package net.akenSync.gm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.akenSync.gm.metier.BaseMetier;
import net.akenSync.gm.modele.Article;
import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Lieu;

@Controller
@RequestMapping("/Article")
public class ArticleController {
	@Autowired
	private BaseMetier baseMetier;

	@RequestMapping(method = RequestMethod.GET)
	public String ListeArticle(ModelMap model) {
		Article article = new Article();
		try {
			List<BaseModele> lb = baseMetier.find(new Article());
			List<Article> listeArticle = new ArrayList<Article>();
			for (int x = 0; x < lb.size(); x++) {
				listeArticle.add((Article) lb.get(x));
			}
		model.addAttribute("listeArticle", listeArticle);
		} catch (Exception e) {

			e.printStackTrace();
		}

		return "Article";
	}
}
