# LaTeX template for paper manuscript

This LaTeX template is designed for academic paper manuscripts, suitable for preprints and journal submissions. 

The template **manuscript** loaded the standard class *article* and can pass all *options* of the *article* class. The template supports titles, abstracts, sections, and references, with options for mathematical equations and flexible bibliography formatting. The header and footer information on the first page can be customized or optionally displayed as needed.

## Usage

The compiler should choose **PDFLaTeX** and **BibTeX**.

```tex
\documentclass[a4paper,10pt,twoside,reqno,final]{manuscript}
```

The template is available on online LaTeX platforms, such as Overleaf and TeXPage.


## BibTeX with preprints

One method is to use a BibTeX entry with the `howpublished` field. Example:

```bibtex
@misc{LiuEtAl2024,
  title = {{KAN}: {Kolmogorov-Arnold Networks}},
  author = {Liu, Ziming and Wang, Yixuan and Vaidya, Sachin and Ruehle, Fabian and Halverson, James and Solja{\v c}i{\'c}, Marin and Hou, Thomas Y. and Tegmark, Max},
  year = {2024},
  howpublished = {arXiv preprint arXiv:2404.19756}
}
```

Output:

[3] Z. Liu, Y. Wang, S. Vaidya, F. Ruehle, J. Halverson, M. Soljačić, T. Y. Hou, and M. Tegmark. KAN: Kolmogorov-Arnold Networks. arXiv preprint arXiv:2404.19756, 2024.

An alternative approach is to use a BibTeX style that supports the `eprint` field (see [arXiv help](https://info.arxiv.org/help/hypertex/bibstyles/index.html)), such as `hplain` or `habbrv`, and add `eprint` entries to your BibTeX database for proper preprint citation. Example:

```
@misc{LiuEtAl2024,
  title = {{KAN}: {Kolmogorov-Arnold Networks}},
  author = {Liu, Ziming and Wang, Yixuan and Vaidya, Sachin and Ruehle, Fabian and Halverson, James and Solja{\v c}i{\'c}, Marin and Hou, Thomas Y. and Tegmark, Max},
  year = {2024},
  eprint = {arXiv preprint arXiv:2404.19756}
}
```

Output:

[3] Z. Liu, Y. Wang, S. Vaidya, F. Ruehle, J. Halverson, M. Soljačić, T. Y. Hou, and M. Tegmark.
KAN: Kolmogorov-Arnold Networks, 2024, arXiv preprint arXiv:2404.19756.
