<div class="footer">
    <div class="container">
        <div class="row text-center border-top">
            <span><a href="{{urlfor "AboutController.License"}}">{{i18n .Lang "common.license"}}</a></span>
            <span>&nbsp;·&nbsp;</span>
            <span><a href="{{urlfor "AboutController.Support"}}">{{i18n .Lang "common.support"}}</a></span>
            <span>&nbsp;·&nbsp;</span>
            <span><a href="{{urlfor "AboutController.About"}}">{{i18n .Lang "common.about"}}</a></span>
            <span>&nbsp;·&nbsp;</span>
            <span><a href="{{urlfor "AboutController.Contact"}}">{{i18n .Lang "common.contact"}}</a></span>
        </div>
        {{if .site_beian}}
        <div class="row text-center">
            <a href="https://beian.miit.gov.cn/" target="_blank">{{.site_beian}}</a>
        </div>
        {{end}}
    </div>
</div>
