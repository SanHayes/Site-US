(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-common-faq"],{"0166":function(t,e,n){"use strict";n.r(e);var i=n("1400"),a=n.n(i);for(var u in i)["default"].indexOf(u)<0&&function(t){n.d(e,t,(function(){return i[t]}))}(u);e["default"]=a.a},1400:function(t,e,n){"use strict";n("7a82"),Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;e.default={data:function(){return{article:{}}},onLoad:function(t){var e=t.id;this.id=e},onShow:function(){this.getNewsDetail()},methods:{getNewsDetail:function(){var t=this;this.$u.api.index.getFAQ().then((function(e){t.article=e.message}))}}}},"79a8":function(t,e,n){"use strict";n.r(e);var i=n("d15d3"),a=n("0166");for(var u in a)["default"].indexOf(u)<0&&function(t){n.d(e,t,(function(){return a[t]}))}(u);var r=n("f0c5"),s=Object(r["a"])(a["default"],i["b"],i["c"],!1,null,"cb5b5244",null,!1,i["a"],void 0);e["default"]=s.exports},d15d3:function(t,e,n){"use strict";n.d(e,"b",(function(){return a})),n.d(e,"c",(function(){return u})),n.d(e,"a",(function(){return i}));var i={uNavbar:n("e664").default},a=function(){var t=this.$createElement,e=this._self._c||t;return e("v-uni-view",[e("u-navbar",{attrs:{title:this.article.title}}),e("v-uni-view",{staticClass:"m-30"},[e("v-uni-text",{staticClass:"d-block font-size-32 text-center"},[this._v(this._s(this.article.title))]),e("v-uni-view",{staticClass:"mt-20 text-white",domProps:{innerHTML:this._s(this.article.content)}})],1)],1)},u=[]}}]);