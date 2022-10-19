package controllers

type AboutController struct {
	BaseController
}

func (c *AboutController) About() {
	c.TplName = "about/about.tpl"
}

func (c *AboutController) Support() {
	c.TplName = "about/support.tpl"
}

func (c *AboutController) Contact() {
	c.TplName = "about/contact.tpl"
}

func (c *AboutController) License() {
	c.TplName = "about/license.tpl"
}
