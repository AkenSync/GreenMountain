package net.akenSync.gm.controller;

import java.util.ArrayList;
import java.util.List;

import net.akenSync.gm.formModele.ArticleFormModel;
import net.akenSync.gm.formModele.PersonneFormModel;
import net.akenSync.gm.metier.BaseMetier;
import net.akenSync.gm.modele.Article;
import net.akenSync.gm.modele.BaseModele;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/Personne", method = RequestMethod.GET)
public class PersonneController {
	@Autowired
	private BaseMetier baseMetier;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("MasterData/Personne/Personne", "command", new PersonneFormModel());
	}

	@RequestMapping(value = "/AddArticle", method = RequestMethod.POST)
	public ModelAndView addStock(@ModelAttribute("akenSync-gm") ArticleFormModel form, ModelMap model) {



		ModelAndView result = new ModelAndView("MasterData/Article","command",new ArticleFormModel());

		result.addObject("id", form.getId());
		result.addObject("code", form.getCode());
		result.addObject("libelle", form.getLibelle());
		result.addObject("prix", form.getPrix());
		result.addObject("message", "Fonction en cours de developpement");

		System.out.println(form.toString());

		return result;
	}

	@RequestMapping(value = "/ListeArticle", method = RequestMethod.GET)
	public String index(@RequestParam("code")String code,@RequestParam("libelle")String libelle,@RequestParam("prix")Double prix,ModelMap model) {
		try {
			
			Article article = new Article();
			article.setCode(code);
			article.setLibelle(libelle);
			article.setPrix(prix);
			List<BaseModele> lb = baseMetier.find(article);
			List<Article> listeArticle = new ArrayList<Article>();
			for (int x = 0; x < lb.size(); x++) {
				listeArticle.add((Article) lb.get(x));
			}
			model.addAttribute("listeArticle", listeArticle);

			
			return "ListeArticle";
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "ListeArticle";
	}
	/*
	 * @RequestMapping(method = RequestMethod.GET) public String
	 * ListeArticle(ModelMap model) { Article article = new Article(); try {
	 * List<BaseModele> lb = baseMetier.find(new Article()); List<Article>
	 * listeArticle = new ArrayList<pgArticle>(); for (int x = 0; x < lb.size();
	 * x++) { listeArticle.add((Article) lb.get(x)); }
	 * model.addAttribute("listeArticle", listeArticle); } catch (Exception e) {
	 * 
	 * e.printStackTrace(); }
	 * 
	 * return "Article"; }
	 */
}
