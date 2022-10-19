package controllers

import (
	"math"
	"net/url"

	"github.com/beego/beego/v2/client/orm"
	"github.com/beego/beego/v2/core/logs"
	"github.com/mindoc-org/mindoc/conf"
	"github.com/mindoc-org/mindoc/models"
	"github.com/mindoc-org/mindoc/utils"
	"github.com/mindoc-org/mindoc/utils/pagination"
)

type HomeController struct {
	BaseController
}

func (c *HomeController) Prepare() {
	c.BaseController.Prepare()
	//如果没有开启匿名访问，则跳转到登录页面
	if !c.EnableAnonymous && c.Member == nil {
		c.Redirect(conf.URLFor("AccountController.Login")+"?url="+url.PathEscape(conf.BaseUrl+c.Ctx.Request.URL.RequestURI()), 302)
	}
}

func (c *HomeController) Index() {
	c.Prepare()
	c.TplName = "home/index.tpl"

	pageIndex, _ := c.GetInt("page", 1)
	pageSize := 16
	memberId := 0
	if c.Member != nil {
		memberId = c.Member.MemberId
	}
	
	// 教程
	books, totalCount, err := models.NewBook().FindForHomeToPager(pageIndex, pageSize, memberId)
	if err != nil {
		logs.Error(err)
		c.Abort("500")
	}
	if totalCount > 0 {
		pager := pagination.NewPagination(c.Ctx.Request, totalCount, pageSize, c.BaseUrl())
		c.Data["PageHtml"] = pager.HtmlPages()
	} else {
		c.Data["PageHtml"] = ""
	}
	c.Data["TotalPages"] = int(math.Ceil(float64(totalCount) / float64(pageSize)))
	c.Data["BookLists"] = books
	
	// 文章
	blogPageSize := 12
	var blogList []*models.Blog
	blogList, totalCount, err = models.NewBlog().FindToPager(pageIndex, blogPageSize, 0, "")

	if err != nil && err != orm.ErrNoRows {
		c.ShowErrorPage(500, err.Error())
	}
	if totalCount > 0 {
		pager := pagination.NewPagination(c.Ctx.Request, totalCount, blogPageSize, c.BaseUrl())
		c.Data["PageHtml"] = pager.HtmlPages()
		for _, blog := range blogList {
			//如果没有添加文章摘要，则自动提取
			if blog.BlogExcerpt == "" {
				blog.BlogExcerpt = utils.AutoSummary(blog.BlogRelease, 120)
			}
			blog.Link()
		}
	} else {
		c.Data["PageHtml"] = ""
	}

	c.Data["BlogLists"] = blogList
}
