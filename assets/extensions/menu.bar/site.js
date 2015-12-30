/*! formstone v0.8.21 [site.js] 2015-10-10 | MIT License | formstone.it */

/*! jQuery v2.1.4 | (c) 2005, 2015 jQuery Foundation, Inc. | jquery.org/license */
! function(a, b) {
	"object" == typeof module && "object" == typeof module.exports ? module.exports = a.document ? b(a, !0) : function(a) {
		if (!a.document) throw new Error("jQuery requires a window with a document");
		return b(a)
	} : b(a)
}("undefined" != typeof window ? window : this, function(a, b) {
	function c(a) {
		var b = "length" in a && a.length,
			c = _.type(a);
		return "function" === c || _.isWindow(a) ? !1 : 1 === a.nodeType && b ? !0 : "array" === c || 0 === b || "number" == typeof b && b > 0 && b - 1 in a
	}

	function d(a, b, c) {
		if (_.isFunction(b)) return _.grep(a, function(a, d) {
			return !!b.call(a, d, a) !== c
		});
		if (b.nodeType) return _.grep(a, function(a) {
			return a === b !== c
		});
		if ("string" == typeof b) {
			if (ha.test(b)) return _.filter(b, a, c);
			b = _.filter(b, a)
		}
		return _.grep(a, function(a) {
			return U.call(b, a) >= 0 !== c
		})
	}

	function e(a, b) {
		for (;
			(a = a[b]) && 1 !== a.nodeType;);
		return a
	}

	function f(a) {
		var b = oa[a] = {};
		return _.each(a.match(na) || [], function(a, c) {
			b[c] = !0
		}), b
	}

	function g() {
		Z.removeEventListener("DOMContentLoaded", g, !1), a.removeEventListener("load", g, !1), _.ready()
	}

	function h() {
		Object.defineProperty(this.cache = {}, 0, {
			get: function() {
				return {}
			}
		}), this.expando = _.expando + h.uid++
	}

	function i(a, b, c) {
		var d;
		if (void 0 === c && 1 === a.nodeType)
			if (d = "data-" + b.replace(ua, "-$1").toLowerCase(), c = a.getAttribute(d), "string" == typeof c) {
				try {
					c = "true" === c ? !0 : "false" === c ? !1 : "null" === c ? null : +c + "" === c ? +c : ta.test(c) ? _.parseJSON(c) : c
				} catch (e) {}
				sa.set(a, b, c)
			} else c = void 0;
		return c
	}

	function j() {
		return !0
	}

	function k() {
		return !1
	}

	function l() {
		try {
			return Z.activeElement
		} catch (a) {}
	}

	function m(a, b) {
		return _.nodeName(a, "table") && _.nodeName(11 !== b.nodeType ? b : b.firstChild, "tr") ? a.getElementsByTagName("tbody")[0] || a.appendChild(a.ownerDocument.createElement("tbody")) : a
	}

	function n(a) {
		return a.type = (null !== a.getAttribute("type")) + "/" + a.type, a
	}

	function o(a) {
		var b = Ka.exec(a.type);
		return b ? a.type = b[1] : a.removeAttribute("type"), a
	}

	function p(a, b) {
		for (var c = 0, d = a.length; d > c; c++) ra.set(a[c], "globalEval", !b || ra.get(b[c], "globalEval"))
	}

	function q(a, b) {
		var c, d, e, f, g, h, i, j;
		if (1 === b.nodeType) {
			if (ra.hasData(a) && (f = ra.access(a), g = ra.set(b, f), j = f.events)) {
				delete g.handle, g.events = {};
				for (e in j)
					for (c = 0, d = j[e].length; d > c; c++) _.event.add(b, e, j[e][c])
			}
			sa.hasData(a) && (h = sa.access(a), i = _.extend({}, h), sa.set(b, i))
		}
	}

	function r(a, b) {
		var c = a.getElementsByTagName ? a.getElementsByTagName(b || "*") : a.querySelectorAll ? a.querySelectorAll(b || "*") : [];
		return void 0 === b || b && _.nodeName(a, b) ? _.merge([a], c) : c
	}

	function s(a, b) {
		var c = b.nodeName.toLowerCase();
		"input" === c && ya.test(a.type) ? b.checked = a.checked : ("input" === c || "textarea" === c) && (b.defaultValue = a.defaultValue)
	}

	function t(b, c) {
		var d, e = _(c.createElement(b)).appendTo(c.body),
			f = a.getDefaultComputedStyle && (d = a.getDefaultComputedStyle(e[0])) ? d.display : _.css(e[0], "display");
		return e.detach(), f
	}

	function u(a) {
		var b = Z,
			c = Oa[a];
		return c || (c = t(a, b), "none" !== c && c || (Na = (Na || _("<iframe frameborder='0' width='0' height='0'/>")).appendTo(b.documentElement), b = Na[0].contentDocument, b.write(), b.close(), c = t(a, b), Na.detach()), Oa[a] = c), c
	}

	function v(a, b, c) {
		var d, e, f, g, h = a.style;
		return c = c || Ra(a), c && (g = c.getPropertyValue(b) || c[b]), c && ("" !== g || _.contains(a.ownerDocument, a) || (g = _.style(a, b)), Qa.test(g) && Pa.test(b) && (d = h.width, e = h.minWidth, f = h.maxWidth, h.minWidth = h.maxWidth = h.width = g, g = c.width, h.width = d, h.minWidth = e, h.maxWidth = f)), void 0 !== g ? g + "" : g
	}

	function w(a, b) {
		return {
			get: function() {
				return a() ? void delete this.get : (this.get = b).apply(this, arguments)
			}
		}
	}

	function x(a, b) {
		if (b in a) return b;
		for (var c = b[0].toUpperCase() + b.slice(1), d = b, e = Xa.length; e--;)
			if (b = Xa[e] + c, b in a) return b;
		return d
	}

	function y(a, b, c) {
		var d = Ta.exec(b);
		return d ? Math.max(0, d[1] - (c || 0)) + (d[2] || "px") : b
	}

	function z(a, b, c, d, e) {
		for (var f = c === (d ? "border" : "content") ? 4 : "width" === b ? 1 : 0, g = 0; 4 > f; f += 2) "margin" === c && (g += _.css(a, c + wa[f], !0, e)), d ? ("content" === c && (g -= _.css(a, "padding" + wa[f], !0, e)), "margin" !== c && (g -= _.css(a, "border" + wa[f] + "Width", !0, e))) : (g += _.css(a, "padding" + wa[f], !0, e), "padding" !== c && (g += _.css(a, "border" + wa[f] + "Width", !0, e)));
		return g
	}

	function A(a, b, c) {
		var d = !0,
			e = "width" === b ? a.offsetWidth : a.offsetHeight,
			f = Ra(a),
			g = "border-box" === _.css(a, "boxSizing", !1, f);
		if (0 >= e || null == e) {
			if (e = v(a, b, f), (0 > e || null == e) && (e = a.style[b]), Qa.test(e)) return e;
			d = g && (Y.boxSizingReliable() || e === a.style[b]), e = parseFloat(e) || 0
		}
		return e + z(a, b, c || (g ? "border" : "content"), d, f) + "px"
	}

	function B(a, b) {
		for (var c, d, e, f = [], g = 0, h = a.length; h > g; g++) d = a[g], d.style && (f[g] = ra.get(d, "olddisplay"), c = d.style.display, b ? (f[g] || "none" !== c || (d.style.display = ""), "" === d.style.display && xa(d) && (f[g] = ra.access(d, "olddisplay", u(d.nodeName)))) : (e = xa(d), "none" === c && e || ra.set(d, "olddisplay", e ? c : _.css(d, "display"))));
		for (g = 0; h > g; g++) d = a[g], d.style && (b && "none" !== d.style.display && "" !== d.style.display || (d.style.display = b ? f[g] || "" : "none"));
		return a
	}

	function C(a, b, c, d, e) {
		return new C.prototype.init(a, b, c, d, e)
	}

	function D() {
		return setTimeout(function() {
			Ya = void 0
		}), Ya = _.now()
	}

	function E(a, b) {
		var c, d = 0,
			e = {
				height: a
			};
		for (b = b ? 1 : 0; 4 > d; d += 2 - b) c = wa[d], e["margin" + c] = e["padding" + c] = a;
		return b && (e.opacity = e.width = a), e
	}

	function F(a, b, c) {
		for (var d, e = (cb[b] || []).concat(cb["*"]), f = 0, g = e.length; g > f; f++)
			if (d = e[f].call(c, b, a)) return d
	}

	function G(a, b, c) {
		var d, e, f, g, h, i, j, k, l = this,
			m = {},
			n = a.style,
			o = a.nodeType && xa(a),
			p = ra.get(a, "fxshow");
		c.queue || (h = _._queueHooks(a, "fx"), null == h.unqueued && (h.unqueued = 0, i = h.empty.fire, h.empty.fire = function() {
			h.unqueued || i()
		}), h.unqueued++, l.always(function() {
			l.always(function() {
				h.unqueued--, _.queue(a, "fx").length || h.empty.fire()
			})
		})), 1 === a.nodeType && ("height" in b || "width" in b) && (c.overflow = [n.overflow, n.overflowX, n.overflowY], j = _.css(a, "display"), k = "none" === j ? ra.get(a, "olddisplay") || u(a.nodeName) : j, "inline" === k && "none" === _.css(a, "float") && (n.display = "inline-block")), c.overflow && (n.overflow = "hidden", l.always(function() {
			n.overflow = c.overflow[0], n.overflowX = c.overflow[1], n.overflowY = c.overflow[2]
		}));
		for (d in b)
			if (e = b[d], $a.exec(e)) {
				if (delete b[d], f = f || "toggle" === e, e === (o ? "hide" : "show")) {
					if ("show" !== e || !p || void 0 === p[d]) continue;
					o = !0
				}
				m[d] = p && p[d] || _.style(a, d)
			} else j = void 0;
		if (_.isEmptyObject(m)) "inline" === ("none" === j ? u(a.nodeName) : j) && (n.display = j);
		else {
			p ? "hidden" in p && (o = p.hidden) : p = ra.access(a, "fxshow", {}), f && (p.hidden = !o), o ? _(a).show() : l.done(function() {
				_(a).hide()
			}), l.done(function() {
				var b;
				ra.remove(a, "fxshow");
				for (b in m) _.style(a, b, m[b])
			});
			for (d in m) g = F(o ? p[d] : 0, d, l), d in p || (p[d] = g.start, o && (g.end = g.start, g.start = "width" === d || "height" === d ? 1 : 0))
		}
	}

	function H(a, b) {
		var c, d, e, f, g;
		for (c in a)
			if (d = _.camelCase(c), e = b[d], f = a[c], _.isArray(f) && (e = f[1], f = a[c] = f[0]), c !== d && (a[d] = f, delete a[c]), g = _.cssHooks[d], g && "expand" in g) {
				f = g.expand(f), delete a[d];
				for (c in f) c in a || (a[c] = f[c], b[c] = e)
			} else b[d] = e
	}

	function I(a, b, c) {
		var d, e, f = 0,
			g = bb.length,
			h = _.Deferred().always(function() {
				delete i.elem
			}),
			i = function() {
				if (e) return !1;
				for (var b = Ya || D(), c = Math.max(0, j.startTime + j.duration - b), d = c / j.duration || 0, f = 1 - d, g = 0, i = j.tweens.length; i > g; g++) j.tweens[g].run(f);
				return h.notifyWith(a, [j, f, c]), 1 > f && i ? c : (h.resolveWith(a, [j]), !1)
			},
			j = h.promise({
				elem: a,
				props: _.extend({}, b),
				opts: _.extend(!0, {
					specialEasing: {}
				}, c),
				originalProperties: b,
				originalOptions: c,
				startTime: Ya || D(),
				duration: c.duration,
				tweens: [],
				createTween: function(b, c) {
					var d = _.Tween(a, j.opts, b, c, j.opts.specialEasing[b] || j.opts.easing);
					return j.tweens.push(d), d
				},
				stop: function(b) {
					var c = 0,
						d = b ? j.tweens.length : 0;
					if (e) return this;
					for (e = !0; d > c; c++) j.tweens[c].run(1);
					return b ? h.resolveWith(a, [j, b]) : h.rejectWith(a, [j, b]), this
				}
			}),
			k = j.props;
		for (H(k, j.opts.specialEasing); g > f; f++)
			if (d = bb[f].call(j, a, k, j.opts)) return d;
		return _.map(k, F, j), _.isFunction(j.opts.start) && j.opts.start.call(a, j), _.fx.timer(_.extend(i, {
			elem: a,
			anim: j,
			queue: j.opts.queue
		})), j.progress(j.opts.progress).done(j.opts.done, j.opts.complete).fail(j.opts.fail).always(j.opts.always)
	}

	function J(a) {
		return function(b, c) {
			"string" != typeof b && (c = b, b = "*");
			var d, e = 0,
				f = b.toLowerCase().match(na) || [];
			if (_.isFunction(c))
				for (; d = f[e++];) "+" === d[0] ? (d = d.slice(1) || "*", (a[d] = a[d] || []).unshift(c)) : (a[d] = a[d] || []).push(c)
		}
	}

	function K(a, b, c, d) {
		function e(h) {
			var i;
			return f[h] = !0, _.each(a[h] || [], function(a, h) {
				var j = h(b, c, d);
				return "string" != typeof j || g || f[j] ? g ? !(i = j) : void 0 : (b.dataTypes.unshift(j), e(j), !1)
			}), i
		}
		var f = {},
			g = a === tb;
		return e(b.dataTypes[0]) || !f["*"] && e("*")
	}

	function L(a, b) {
		var c, d, e = _.ajaxSettings.flatOptions || {};
		for (c in b) void 0 !== b[c] && ((e[c] ? a : d || (d = {}))[c] = b[c]);
		return d && _.extend(!0, a, d), a
	}

	function M(a, b, c) {
		for (var d, e, f, g, h = a.contents, i = a.dataTypes;
			"*" === i[0];) i.shift(), void 0 === d && (d = a.mimeType || b.getResponseHeader("Content-Type"));
		if (d)
			for (e in h)
				if (h[e] && h[e].test(d)) {
					i.unshift(e);
					break
				}
		if (i[0] in c) f = i[0];
		else {
			for (e in c) {
				if (!i[0] || a.converters[e + " " + i[0]]) {
					f = e;
					break
				}
				g || (g = e)
			}
			f = f || g
		}
		return f ? (f !== i[0] && i.unshift(f), c[f]) : void 0
	}

	function N(a, b, c, d) {
		var e, f, g, h, i, j = {},
			k = a.dataTypes.slice();
		if (k[1])
			for (g in a.converters) j[g.toLowerCase()] = a.converters[g];
		for (f = k.shift(); f;)
			if (a.responseFields[f] && (c[a.responseFields[f]] = b), !i && d && a.dataFilter && (b = a.dataFilter(b, a.dataType)), i = f, f = k.shift())
				if ("*" === f) f = i;
				else if ("*" !== i && i !== f) {
			if (g = j[i + " " + f] || j["* " + f], !g)
				for (e in j)
					if (h = e.split(" "), h[1] === f && (g = j[i + " " + h[0]] || j["* " + h[0]])) {
						g === !0 ? g = j[e] : j[e] !== !0 && (f = h[0], k.unshift(h[1]));
						break
					}
			if (g !== !0)
				if (g && a["throws"]) b = g(b);
				else try {
					b = g(b)
				} catch (l) {
					return {
						state: "parsererror",
						error: g ? l : "No conversion from " + i + " to " + f
					}
				}
		}
		return {
			state: "success",
			data: b
		}
	}

	function O(a, b, c, d) {
		var e;
		if (_.isArray(b)) _.each(b, function(b, e) {
			c || yb.test(a) ? d(a, e) : O(a + "[" + ("object" == typeof e ? b : "") + "]", e, c, d)
		});
		else if (c || "object" !== _.type(b)) d(a, b);
		else
			for (e in b) O(a + "[" + e + "]", b[e], c, d)
	}

	function P(a) {
		return _.isWindow(a) ? a : 9 === a.nodeType && a.defaultView
	}
	var Q = [],
		R = Q.slice,
		S = Q.concat,
		T = Q.push,
		U = Q.indexOf,
		V = {},
		W = V.toString,
		X = V.hasOwnProperty,
		Y = {},
		Z = a.document,
		$ = "2.1.4",
		_ = function(a, b) {
			return new _.fn.init(a, b)
		},
		aa = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,
		ba = /^-ms-/,
		ca = /-([\da-z])/gi,
		da = function(a, b) {
			return b.toUpperCase()
		};
	_.fn = _.prototype = {
		jquery: $,
		constructor: _,
		selector: "",
		length: 0,
		toArray: function() {
			return R.call(this)
		},
		get: function(a) {
			return null != a ? 0 > a ? this[a + this.length] : this[a] : R.call(this)
		},
		pushStack: function(a) {
			var b = _.merge(this.constructor(), a);
			return b.prevObject = this, b.context = this.context, b
		},
		each: function(a, b) {
			return _.each(this, a, b)
		},
		map: function(a) {
			return this.pushStack(_.map(this, function(b, c) {
				return a.call(b, c, b)
			}))
		},
		slice: function() {
			return this.pushStack(R.apply(this, arguments))
		},
		first: function() {
			return this.eq(0)
		},
		last: function() {
			return this.eq(-1)
		},
		eq: function(a) {
			var b = this.length,
				c = +a + (0 > a ? b : 0);
			return this.pushStack(c >= 0 && b > c ? [this[c]] : [])
		},
		end: function() {
			return this.prevObject || this.constructor(null)
		},
		push: T,
		sort: Q.sort,
		splice: Q.splice
	}, _.extend = _.fn.extend = function() {
		var a, b, c, d, e, f, g = arguments[0] || {},
			h = 1,
			i = arguments.length,
			j = !1;
		for ("boolean" == typeof g && (j = g, g = arguments[h] || {}, h++), "object" == typeof g || _.isFunction(g) || (g = {}), h === i && (g = this, h--); i > h; h++)
			if (null != (a = arguments[h]))
				for (b in a) c = g[b], d = a[b], g !== d && (j && d && (_.isPlainObject(d) || (e = _.isArray(d))) ? (e ? (e = !1, f = c && _.isArray(c) ? c : []) : f = c && _.isPlainObject(c) ? c : {}, g[b] = _.extend(j, f, d)) : void 0 !== d && (g[b] = d));
		return g
	}, _.extend({
		expando: "jQuery" + ($ + Math.random()).replace(/\D/g, ""),
		isReady: !0,
		error: function(a) {
			throw new Error(a)
		},
		noop: function() {},
		isFunction: function(a) {
			return "function" === _.type(a)
		},
		isArray: Array.isArray,
		isWindow: function(a) {
			return null != a && a === a.window
		},
		isNumeric: function(a) {
			return !_.isArray(a) && a - parseFloat(a) + 1 >= 0
		},
		isPlainObject: function(a) {
			return "object" !== _.type(a) || a.nodeType || _.isWindow(a) ? !1 : a.constructor && !X.call(a.constructor.prototype, "isPrototypeOf") ? !1 : !0
		},
		isEmptyObject: function(a) {
			var b;
			for (b in a) return !1;
			return !0
		},
		type: function(a) {
			return null == a ? a + "" : "object" == typeof a || "function" == typeof a ? V[W.call(a)] || "object" : typeof a
		},
		globalEval: function(a) {
			var b, c = eval;
			a = _.trim(a), a && (1 === a.indexOf("use strict") ? (b = Z.createElement("script"), b.text = a, Z.head.appendChild(b).parentNode.removeChild(b)) : c(a))
		},
		camelCase: function(a) {
			return a.replace(ba, "ms-").replace(ca, da)
		},
		nodeName: function(a, b) {
			return a.nodeName && a.nodeName.toLowerCase() === b.toLowerCase()
		},
		each: function(a, b, d) {
			var e, f = 0,
				g = a.length,
				h = c(a);
			if (d) {
				if (h)
					for (; g > f && (e = b.apply(a[f], d), e !== !1); f++);
				else
					for (f in a)
						if (e = b.apply(a[f], d), e === !1) break
			} else if (h)
				for (; g > f && (e = b.call(a[f], f, a[f]), e !== !1); f++);
			else
				for (f in a)
					if (e = b.call(a[f], f, a[f]), e === !1) break;
			return a
		},
		trim: function(a) {
			return null == a ? "" : (a + "").replace(aa, "")
		},
		makeArray: function(a, b) {
			var d = b || [];
			return null != a && (c(Object(a)) ? _.merge(d, "string" == typeof a ? [a] : a) : T.call(d, a)), d
		},
		inArray: function(a, b, c) {
			return null == b ? -1 : U.call(b, a, c)
		},
		merge: function(a, b) {
			for (var c = +b.length, d = 0, e = a.length; c > d; d++) a[e++] = b[d];
			return a.length = e, a
		},
		grep: function(a, b, c) {
			for (var d, e = [], f = 0, g = a.length, h = !c; g > f; f++) d = !b(a[f], f), d !== h && e.push(a[f]);
			return e
		},
		map: function(a, b, d) {
			var e, f = 0,
				g = a.length,
				h = c(a),
				i = [];
			if (h)
				for (; g > f; f++) e = b(a[f], f, d), null != e && i.push(e);
			else
				for (f in a) e = b(a[f], f, d), null != e && i.push(e);
			return S.apply([], i)
		},
		guid: 1,
		proxy: function(a, b) {
			var c, d, e;
			return "string" == typeof b && (c = a[b], b = a, a = c), _.isFunction(a) ? (d = R.call(arguments, 2), e = function() {
				return a.apply(b || this, d.concat(R.call(arguments)))
			}, e.guid = a.guid = a.guid || _.guid++, e) : void 0
		},
		now: Date.now,
		support: Y
	}), _.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function(a, b) {
		V["[object " + b + "]"] = b.toLowerCase()
	});
	var ea = function(a) {
		function b(a, b, c, d) {
			var e, f, g, h, i, j, l, n, o, p;
			if ((b ? b.ownerDocument || b : O) !== G && F(b), b = b || G, c = c || [], h = b.nodeType, "string" != typeof a || !a || 1 !== h && 9 !== h && 11 !== h) return c;
			if (!d && I) {
				if (11 !== h && (e = sa.exec(a)))
					if (g = e[1]) {
						if (9 === h) {
							if (f = b.getElementById(g), !f || !f.parentNode) return c;
							if (f.id === g) return c.push(f), c
						} else if (b.ownerDocument && (f = b.ownerDocument.getElementById(g)) && M(b, f) && f.id === g) return c.push(f), c
					} else {
						if (e[2]) return $.apply(c, b.getElementsByTagName(a)), c;
						if ((g = e[3]) && v.getElementsByClassName) return $.apply(c, b.getElementsByClassName(g)), c
					}
				if (v.qsa && (!J || !J.test(a))) {
					if (n = l = N, o = b, p = 1 !== h && a, 1 === h && "object" !== b.nodeName.toLowerCase()) {
						for (j = z(a), (l = b.getAttribute("id")) ? n = l.replace(ua, "\\$&") : b.setAttribute("id", n), n = "[id='" + n + "'] ", i = j.length; i--;) j[i] = n + m(j[i]);
						o = ta.test(a) && k(b.parentNode) || b, p = j.join(",")
					}
					if (p) try {
						return $.apply(c, o.querySelectorAll(p)), c
					} catch (q) {} finally {
						l || b.removeAttribute("id")
					}
				}
			}
			return B(a.replace(ia, "$1"), b, c, d)
		}

		function c() {
			function a(c, d) {
				return b.push(c + " ") > w.cacheLength && delete a[b.shift()], a[c + " "] = d
			}
			var b = [];
			return a
		}

		function d(a) {
			return a[N] = !0, a
		}

		function e(a) {
			var b = G.createElement("div");
			try {
				return !!a(b)
			} catch (c) {
				return !1
			} finally {
				b.parentNode && b.parentNode.removeChild(b), b = null
			}
		}

		function f(a, b) {
			for (var c = a.split("|"), d = a.length; d--;) w.attrHandle[c[d]] = b
		}

		function g(a, b) {
			var c = b && a,
				d = c && 1 === a.nodeType && 1 === b.nodeType && (~b.sourceIndex || V) - (~a.sourceIndex || V);
			if (d) return d;
			if (c)
				for (; c = c.nextSibling;)
					if (c === b) return -1;
			return a ? 1 : -1
		}

		function h(a) {
			return function(b) {
				var c = b.nodeName.toLowerCase();
				return "input" === c && b.type === a
			}
		}

		function i(a) {
			return function(b) {
				var c = b.nodeName.toLowerCase();
				return ("input" === c || "button" === c) && b.type === a
			}
		}

		function j(a) {
			return d(function(b) {
				return b = +b, d(function(c, d) {
					for (var e, f = a([], c.length, b), g = f.length; g--;) c[e = f[g]] && (c[e] = !(d[e] = c[e]))
				})
			})
		}

		function k(a) {
			return a && "undefined" != typeof a.getElementsByTagName && a
		}

		function l() {}

		function m(a) {
			for (var b = 0, c = a.length, d = ""; c > b; b++) d += a[b].value;
			return d
		}

		function n(a, b, c) {
			var d = b.dir,
				e = c && "parentNode" === d,
				f = Q++;
			return b.first ? function(b, c, f) {
				for (; b = b[d];)
					if (1 === b.nodeType || e) return a(b, c, f)
			} : function(b, c, g) {
				var h, i, j = [P, f];
				if (g) {
					for (; b = b[d];)
						if ((1 === b.nodeType || e) && a(b, c, g)) return !0
				} else
					for (; b = b[d];)
						if (1 === b.nodeType || e) {
							if (i = b[N] || (b[N] = {}), (h = i[d]) && h[0] === P && h[1] === f) return j[2] = h[2];
							if (i[d] = j, j[2] = a(b, c, g)) return !0
						}
			}
		}

		function o(a) {
			return a.length > 1 ? function(b, c, d) {
				for (var e = a.length; e--;)
					if (!a[e](b, c, d)) return !1;
				return !0
			} : a[0]
		}

		function p(a, c, d) {
			for (var e = 0, f = c.length; f > e; e++) b(a, c[e], d);
			return d
		}

		function q(a, b, c, d, e) {
			for (var f, g = [], h = 0, i = a.length, j = null != b; i > h; h++)(f = a[h]) && (!c || c(f, d, e)) && (g.push(f), j && b.push(h));
			return g
		}

		function r(a, b, c, e, f, g) {
			return e && !e[N] && (e = r(e)), f && !f[N] && (f = r(f, g)), d(function(d, g, h, i) {
				var j, k, l, m = [],
					n = [],
					o = g.length,
					r = d || p(b || "*", h.nodeType ? [h] : h, []),
					s = !a || !d && b ? r : q(r, m, a, h, i),
					t = c ? f || (d ? a : o || e) ? [] : g : s;
				if (c && c(s, t, h, i), e)
					for (j = q(t, n), e(j, [], h, i), k = j.length; k--;)(l = j[k]) && (t[n[k]] = !(s[n[k]] = l));
				if (d) {
					if (f || a) {
						if (f) {
							for (j = [], k = t.length; k--;)(l = t[k]) && j.push(s[k] = l);
							f(null, t = [], j, i)
						}
						for (k = t.length; k--;)(l = t[k]) && (j = f ? aa(d, l) : m[k]) > -1 && (d[j] = !(g[j] = l))
					}
				} else t = q(t === g ? t.splice(o, t.length) : t), f ? f(null, g, t, i) : $.apply(g, t)
			})
		}

		function s(a) {
			for (var b, c, d, e = a.length, f = w.relative[a[0].type], g = f || w.relative[" "], h = f ? 1 : 0, i = n(function(a) {
					return a === b
				}, g, !0), j = n(function(a) {
					return aa(b, a) > -1
				}, g, !0), k = [function(a, c, d) {
					var e = !f && (d || c !== C) || ((b = c).nodeType ? i(a, c, d) : j(a, c, d));
					return b = null, e
				}]; e > h; h++)
				if (c = w.relative[a[h].type]) k = [n(o(k), c)];
				else {
					if (c = w.filter[a[h].type].apply(null, a[h].matches), c[N]) {
						for (d = ++h; e > d && !w.relative[a[d].type]; d++);
						return r(h > 1 && o(k), h > 1 && m(a.slice(0, h - 1).concat({
							value: " " === a[h - 2].type ? "*" : ""
						})).replace(ia, "$1"), c, d > h && s(a.slice(h, d)), e > d && s(a = a.slice(d)), e > d && m(a))
					}
					k.push(c)
				}
			return o(k)
		}

		function t(a, c) {
			var e = c.length > 0,
				f = a.length > 0,
				g = function(d, g, h, i, j) {
					var k, l, m, n = 0,
						o = "0",
						p = d && [],
						r = [],
						s = C,
						t = d || f && w.find.TAG("*", j),
						u = P += null == s ? 1 : Math.random() || .1,
						v = t.length;
					for (j && (C = g !== G && g); o !== v && null != (k = t[o]); o++) {
						if (f && k) {
							for (l = 0; m = a[l++];)
								if (m(k, g, h)) {
									i.push(k);
									break
								}
							j && (P = u)
						}
						e && ((k = !m && k) && n--, d && p.push(k))
					}
					if (n += o, e && o !== n) {
						for (l = 0; m = c[l++];) m(p, r, g, h);
						if (d) {
							if (n > 0)
								for (; o--;) p[o] || r[o] || (r[o] = Y.call(i));
							r = q(r)
						}
						$.apply(i, r), j && !d && r.length > 0 && n + c.length > 1 && b.uniqueSort(i)
					}
					return j && (P = u, C = s), p
				};
			return e ? d(g) : g
		}
		var u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N = "sizzle" + 1 * new Date,
			O = a.document,
			P = 0,
			Q = 0,
			R = c(),
			S = c(),
			T = c(),
			U = function(a, b) {
				return a === b && (E = !0), 0
			},
			V = 1 << 31,
			W = {}.hasOwnProperty,
			X = [],
			Y = X.pop,
			Z = X.push,
			$ = X.push,
			_ = X.slice,
			aa = function(a, b) {
				for (var c = 0, d = a.length; d > c; c++)
					if (a[c] === b) return c;
				return -1
			},
			ba = "checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",
			ca = "[\\x20\\t\\r\\n\\f]",
			da = "(?:\\\\.|[\\w-]|[^\\x00-\\xa0])+",
			ea = da.replace("w", "w#"),
			fa = "\\[" + ca + "*(" + da + ")(?:" + ca + "*([*^$|!~]?=)" + ca + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + ea + "))|)" + ca + "*\\]",
			ga = ":(" + da + ")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|" + fa + ")*)|.*)\\)|)",
			ha = new RegExp(ca + "+", "g"),
			ia = new RegExp("^" + ca + "+|((?:^|[^\\\\])(?:\\\\.)*)" + ca + "+$", "g"),
			ja = new RegExp("^" + ca + "*," + ca + "*"),
			ka = new RegExp("^" + ca + "*([>+~]|" + ca + ")" + ca + "*"),
			la = new RegExp("=" + ca + "*([^\\]'\"]*?)" + ca + "*\\]", "g"),
			ma = new RegExp(ga),
			na = new RegExp("^" + ea + "$"),
			oa = {
				ID: new RegExp("^#(" + da + ")"),
				CLASS: new RegExp("^\\.(" + da + ")"),
				TAG: new RegExp("^(" + da.replace("w", "w*") + ")"),
				ATTR: new RegExp("^" + fa),
				PSEUDO: new RegExp("^" + ga),
				CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + ca + "*(even|odd|(([+-]|)(\\d*)n|)" + ca + "*(?:([+-]|)" + ca + "*(\\d+)|))" + ca + "*\\)|)", "i"),
				bool: new RegExp("^(?:" + ba + ")$", "i"),
				needsContext: new RegExp("^" + ca + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + ca + "*((?:-\\d)?\\d*)" + ca + "*\\)|)(?=[^-]|$)", "i")
			},
			pa = /^(?:input|select|textarea|button)$/i,
			qa = /^h\d$/i,
			ra = /^[^{]+\{\s*\[native \w/,
			sa = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
			ta = /[+~]/,
			ua = /'|\\/g,
			va = new RegExp("\\\\([\\da-f]{1,6}" + ca + "?|(" + ca + ")|.)", "ig"),
			wa = function(a, b, c) {
				var d = "0x" + b - 65536;
				return d !== d || c ? b : 0 > d ? String.fromCharCode(d + 65536) : String.fromCharCode(d >> 10 | 55296, 1023 & d | 56320)
			},
			xa = function() {
				F()
			};
		try {
			$.apply(X = _.call(O.childNodes), O.childNodes), X[O.childNodes.length].nodeType
		} catch (ya) {
			$ = {
				apply: X.length ? function(a, b) {
					Z.apply(a, _.call(b))
				} : function(a, b) {
					for (var c = a.length, d = 0; a[c++] = b[d++];);
					a.length = c - 1
				}
			}
		}
		v = b.support = {}, y = b.isXML = function(a) {
			var b = a && (a.ownerDocument || a).documentElement;
			return b ? "HTML" !== b.nodeName : !1
		}, F = b.setDocument = function(a) {
			var b, c, d = a ? a.ownerDocument || a : O;
			return d !== G && 9 === d.nodeType && d.documentElement ? (G = d, H = d.documentElement, c = d.defaultView, c && c !== c.top && (c.addEventListener ? c.addEventListener("unload", xa, !1) : c.attachEvent && c.attachEvent("onunload", xa)), I = !y(d), v.attributes = e(function(a) {
				return a.className = "i", !a.getAttribute("className")
			}), v.getElementsByTagName = e(function(a) {
				return a.appendChild(d.createComment("")), !a.getElementsByTagName("*").length
			}), v.getElementsByClassName = ra.test(d.getElementsByClassName), v.getById = e(function(a) {
				return H.appendChild(a).id = N, !d.getElementsByName || !d.getElementsByName(N).length
			}), v.getById ? (w.find.ID = function(a, b) {
				if ("undefined" != typeof b.getElementById && I) {
					var c = b.getElementById(a);
					return c && c.parentNode ? [c] : []
				}
			}, w.filter.ID = function(a) {
				var b = a.replace(va, wa);
				return function(a) {
					return a.getAttribute("id") === b
				}
			}) : (delete w.find.ID, w.filter.ID = function(a) {
				var b = a.replace(va, wa);
				return function(a) {
					var c = "undefined" != typeof a.getAttributeNode && a.getAttributeNode("id");
					return c && c.value === b
				}
			}), w.find.TAG = v.getElementsByTagName ? function(a, b) {
				return "undefined" != typeof b.getElementsByTagName ? b.getElementsByTagName(a) : v.qsa ? b.querySelectorAll(a) : void 0
			} : function(a, b) {
				var c, d = [],
					e = 0,
					f = b.getElementsByTagName(a);
				if ("*" === a) {
					for (; c = f[e++];) 1 === c.nodeType && d.push(c);
					return d
				}
				return f
			}, w.find.CLASS = v.getElementsByClassName && function(a, b) {
				return I ? b.getElementsByClassName(a) : void 0
			}, K = [], J = [], (v.qsa = ra.test(d.querySelectorAll)) && (e(function(a) {
				H.appendChild(a).innerHTML = "<a id='" + N + "'></a><select id='" + N + "-\f]' msallowcapture=''><option selected=''></option></select>", a.querySelectorAll("[msallowcapture^='']").length && J.push("[*^$]=" + ca + "*(?:''|\"\")"), a.querySelectorAll("[selected]").length || J.push("\\[" + ca + "*(?:value|" + ba + ")"), a.querySelectorAll("[id~=" + N + "-]").length || J.push("~="), a.querySelectorAll(":checked").length || J.push(":checked"), a.querySelectorAll("a#" + N + "+*").length || J.push(".#.+[+~]")
			}), e(function(a) {
				var b = d.createElement("input");
				b.setAttribute("type", "hidden"), a.appendChild(b).setAttribute("name", "D"), a.querySelectorAll("[name=d]").length && J.push("name" + ca + "*[*^$|!~]?="), a.querySelectorAll(":enabled").length || J.push(":enabled", ":disabled"), a.querySelectorAll("*,:x"), J.push(",.*:")
			})), (v.matchesSelector = ra.test(L = H.matches || H.webkitMatchesSelector || H.mozMatchesSelector || H.oMatchesSelector || H.msMatchesSelector)) && e(function(a) {
				v.disconnectedMatch = L.call(a, "div"), L.call(a, "[s!='']:x"), K.push("!=", ga)
			}), J = J.length && new RegExp(J.join("|")), K = K.length && new RegExp(K.join("|")), b = ra.test(H.compareDocumentPosition), M = b || ra.test(H.contains) ? function(a, b) {
				var c = 9 === a.nodeType ? a.documentElement : a,
					d = b && b.parentNode;
				return a === d || !(!d || 1 !== d.nodeType || !(c.contains ? c.contains(d) : a.compareDocumentPosition && 16 & a.compareDocumentPosition(d)))
			} : function(a, b) {
				if (b)
					for (; b = b.parentNode;)
						if (b === a) return !0;
				return !1
			}, U = b ? function(a, b) {
				if (a === b) return E = !0, 0;
				var c = !a.compareDocumentPosition - !b.compareDocumentPosition;
				return c ? c : (c = (a.ownerDocument || a) === (b.ownerDocument || b) ? a.compareDocumentPosition(b) : 1, 1 & c || !v.sortDetached && b.compareDocumentPosition(a) === c ? a === d || a.ownerDocument === O && M(O, a) ? -1 : b === d || b.ownerDocument === O && M(O, b) ? 1 : D ? aa(D, a) - aa(D, b) : 0 : 4 & c ? -1 : 1)
			} : function(a, b) {
				if (a === b) return E = !0, 0;
				var c, e = 0,
					f = a.parentNode,
					h = b.parentNode,
					i = [a],
					j = [b];
				if (!f || !h) return a === d ? -1 : b === d ? 1 : f ? -1 : h ? 1 : D ? aa(D, a) - aa(D, b) : 0;
				if (f === h) return g(a, b);
				for (c = a; c = c.parentNode;) i.unshift(c);
				for (c = b; c = c.parentNode;) j.unshift(c);
				for (; i[e] === j[e];) e++;
				return e ? g(i[e], j[e]) : i[e] === O ? -1 : j[e] === O ? 1 : 0
			}, d) : G
		}, b.matches = function(a, c) {
			return b(a, null, null, c)
		}, b.matchesSelector = function(a, c) {
			if ((a.ownerDocument || a) !== G && F(a), c = c.replace(la, "='$1']"), !(!v.matchesSelector || !I || K && K.test(c) || J && J.test(c))) try {
				var d = L.call(a, c);
				if (d || v.disconnectedMatch || a.document && 11 !== a.document.nodeType) return d
			} catch (e) {}
			return b(c, G, null, [a]).length > 0
		}, b.contains = function(a, b) {
			return (a.ownerDocument || a) !== G && F(a), M(a, b)
		}, b.attr = function(a, b) {
			(a.ownerDocument || a) !== G && F(a);
			var c = w.attrHandle[b.toLowerCase()],
				d = c && W.call(w.attrHandle, b.toLowerCase()) ? c(a, b, !I) : void 0;
			return void 0 !== d ? d : v.attributes || !I ? a.getAttribute(b) : (d = a.getAttributeNode(b)) && d.specified ? d.value : null
		}, b.error = function(a) {
			throw new Error("Syntax error, unrecognized expression: " + a)
		}, b.uniqueSort = function(a) {
			var b, c = [],
				d = 0,
				e = 0;
			if (E = !v.detectDuplicates, D = !v.sortStable && a.slice(0), a.sort(U), E) {
				for (; b = a[e++];) b === a[e] && (d = c.push(e));
				for (; d--;) a.splice(c[d], 1)
			}
			return D = null, a
		}, x = b.getText = function(a) {
			var b, c = "",
				d = 0,
				e = a.nodeType;
			if (e) {
				if (1 === e || 9 === e || 11 === e) {
					if ("string" == typeof a.textContent) return a.textContent;
					for (a = a.firstChild; a; a = a.nextSibling) c += x(a)
				} else if (3 === e || 4 === e) return a.nodeValue
			} else
				for (; b = a[d++];) c += x(b);
			return c
		}, w = b.selectors = {
			cacheLength: 50,
			createPseudo: d,
			match: oa,
			attrHandle: {},
			find: {},
			relative: {
				">": {
					dir: "parentNode",
					first: !0
				},
				" ": {
					dir: "parentNode"
				},
				"+": {
					dir: "previousSibling",
					first: !0
				},
				"~": {
					dir: "previousSibling"
				}
			},
			preFilter: {
				ATTR: function(a) {
					return a[1] = a[1].replace(va, wa), a[3] = (a[3] || a[4] || a[5] || "").replace(va, wa), "~=" === a[2] && (a[3] = " " + a[3] + " "), a.slice(0, 4)
				},
				CHILD: function(a) {
					return a[1] = a[1].toLowerCase(), "nth" === a[1].slice(0, 3) ? (a[3] || b.error(a[0]), a[4] = +(a[4] ? a[5] + (a[6] || 1) : 2 * ("even" === a[3] || "odd" === a[3])), a[5] = +(a[7] + a[8] || "odd" === a[3])) : a[3] && b.error(a[0]), a
				},
				PSEUDO: function(a) {
					var b, c = !a[6] && a[2];
					return oa.CHILD.test(a[0]) ? null : (a[3] ? a[2] = a[4] || a[5] || "" : c && ma.test(c) && (b = z(c, !0)) && (b = c.indexOf(")", c.length - b) - c.length) && (a[0] = a[0].slice(0, b), a[2] = c.slice(0, b)), a.slice(0, 3))
				}
			},
			filter: {
				TAG: function(a) {
					var b = a.replace(va, wa).toLowerCase();
					return "*" === a ? function() {
						return !0
					} : function(a) {
						return a.nodeName && a.nodeName.toLowerCase() === b
					}
				},
				CLASS: function(a) {
					var b = R[a + " "];
					return b || (b = new RegExp("(^|" + ca + ")" + a + "(" + ca + "|$)")) && R(a, function(a) {
						return b.test("string" == typeof a.className && a.className || "undefined" != typeof a.getAttribute && a.getAttribute("class") || "")
					})
				},
				ATTR: function(a, c, d) {
					return function(e) {
						var f = b.attr(e, a);
						return null == f ? "!=" === c : c ? (f += "", "=" === c ? f === d : "!=" === c ? f !== d : "^=" === c ? d && 0 === f.indexOf(d) : "*=" === c ? d && f.indexOf(d) > -1 : "$=" === c ? d && f.slice(-d.length) === d : "~=" === c ? (" " + f.replace(ha, " ") + " ").indexOf(d) > -1 : "|=" === c ? f === d || f.slice(0, d.length + 1) === d + "-" : !1) : !0
					}
				},
				CHILD: function(a, b, c, d, e) {
					var f = "nth" !== a.slice(0, 3),
						g = "last" !== a.slice(-4),
						h = "of-type" === b;
					return 1 === d && 0 === e ? function(a) {
						return !!a.parentNode
					} : function(b, c, i) {
						var j, k, l, m, n, o, p = f !== g ? "nextSibling" : "previousSibling",
							q = b.parentNode,
							r = h && b.nodeName.toLowerCase(),
							s = !i && !h;
						if (q) {
							if (f) {
								for (; p;) {
									for (l = b; l = l[p];)
										if (h ? l.nodeName.toLowerCase() === r : 1 === l.nodeType) return !1;
									o = p = "only" === a && !o && "nextSibling"
								}
								return !0
							}
							if (o = [g ? q.firstChild : q.lastChild], g && s) {
								for (k = q[N] || (q[N] = {}), j = k[a] || [], n = j[0] === P && j[1], m = j[0] === P && j[2], l = n && q.childNodes[n]; l = ++n && l && l[p] || (m = n = 0) || o.pop();)
									if (1 === l.nodeType && ++m && l === b) {
										k[a] = [P, n, m];
										break
									}
							} else if (s && (j = (b[N] || (b[N] = {}))[a]) && j[0] === P) m = j[1];
							else
								for (;
									(l = ++n && l && l[p] || (m = n = 0) || o.pop()) && ((h ? l.nodeName.toLowerCase() !== r : 1 !== l.nodeType) || !++m || (s && ((l[N] || (l[N] = {}))[a] = [P, m]), l !== b)););
							return m -= e, m === d || m % d === 0 && m / d >= 0
						}
					}
				},
				PSEUDO: function(a, c) {
					var e, f = w.pseudos[a] || w.setFilters[a.toLowerCase()] || b.error("unsupported pseudo: " + a);
					return f[N] ? f(c) : f.length > 1 ? (e = [a, a, "", c], w.setFilters.hasOwnProperty(a.toLowerCase()) ? d(function(a, b) {
						for (var d, e = f(a, c), g = e.length; g--;) d = aa(a, e[g]), a[d] = !(b[d] = e[g])
					}) : function(a) {
						return f(a, 0, e)
					}) : f
				}
			},
			pseudos: {
				not: d(function(a) {
					var b = [],
						c = [],
						e = A(a.replace(ia, "$1"));
					return e[N] ? d(function(a, b, c, d) {
						for (var f, g = e(a, null, d, []), h = a.length; h--;)(f = g[h]) && (a[h] = !(b[h] = f))
					}) : function(a, d, f) {
						return b[0] = a, e(b, null, f, c), b[0] = null, !c.pop()
					}
				}),
				has: d(function(a) {
					return function(c) {
						return b(a, c).length > 0
					}
				}),
				contains: d(function(a) {
					return a = a.replace(va, wa),
						function(b) {
							return (b.textContent || b.innerText || x(b)).indexOf(a) > -1
						}
				}),
				lang: d(function(a) {
					return na.test(a || "") || b.error("unsupported lang: " + a), a = a.replace(va, wa).toLowerCase(),
						function(b) {
							var c;
							do
								if (c = I ? b.lang : b.getAttribute("xml:lang") || b.getAttribute("lang")) return c = c.toLowerCase(), c === a || 0 === c.indexOf(a + "-");
							while ((b = b.parentNode) && 1 === b.nodeType);
							return !1
						}
				}),
				target: function(b) {
					var c = a.location && a.location.hash;
					return c && c.slice(1) === b.id
				},
				root: function(a) {
					return a === H
				},
				focus: function(a) {
					return a === G.activeElement && (!G.hasFocus || G.hasFocus()) && !!(a.type || a.href || ~a.tabIndex)
				},
				enabled: function(a) {
					return a.disabled === !1
				},
				disabled: function(a) {
					return a.disabled === !0
				},
				checked: function(a) {
					var b = a.nodeName.toLowerCase();
					return "input" === b && !!a.checked || "option" === b && !!a.selected
				},
				selected: function(a) {
					return a.parentNode && a.parentNode.selectedIndex, a.selected === !0
				},
				empty: function(a) {
					for (a = a.firstChild; a; a = a.nextSibling)
						if (a.nodeType < 6) return !1;
					return !0
				},
				parent: function(a) {
					return !w.pseudos.empty(a)
				},
				header: function(a) {
					return qa.test(a.nodeName)
				},
				input: function(a) {
					return pa.test(a.nodeName)
				},
				button: function(a) {
					var b = a.nodeName.toLowerCase();
					return "input" === b && "button" === a.type || "button" === b
				},
				text: function(a) {
					var b;
					return "input" === a.nodeName.toLowerCase() && "text" === a.type && (null == (b = a.getAttribute("type")) || "text" === b.toLowerCase())
				},
				first: j(function() {
					return [0]
				}),
				last: j(function(a, b) {
					return [b - 1]
				}),
				eq: j(function(a, b, c) {
					return [0 > c ? c + b : c]
				}),
				even: j(function(a, b) {
					for (var c = 0; b > c; c += 2) a.push(c);
					return a
				}),
				odd: j(function(a, b) {
					for (var c = 1; b > c; c += 2) a.push(c);
					return a
				}),
				lt: j(function(a, b, c) {
					for (var d = 0 > c ? c + b : c; --d >= 0;) a.push(d);
					return a
				}),
				gt: j(function(a, b, c) {
					for (var d = 0 > c ? c + b : c; ++d < b;) a.push(d);
					return a
				})
			}
		}, w.pseudos.nth = w.pseudos.eq;
		for (u in {
				radio: !0,
				checkbox: !0,
				file: !0,
				password: !0,
				image: !0
			}) w.pseudos[u] = h(u);
		for (u in {
				submit: !0,
				reset: !0
			}) w.pseudos[u] = i(u);
		return l.prototype = w.filters = w.pseudos, w.setFilters = new l, z = b.tokenize = function(a, c) {
			var d, e, f, g, h, i, j, k = S[a + " "];
			if (k) return c ? 0 : k.slice(0);
			for (h = a, i = [], j = w.preFilter; h;) {
				(!d || (e = ja.exec(h))) && (e && (h = h.slice(e[0].length) || h), i.push(f = [])), d = !1, (e = ka.exec(h)) && (d = e.shift(), f.push({
					value: d,
					type: e[0].replace(ia, " ")
				}), h = h.slice(d.length));
				for (g in w.filter) !(e = oa[g].exec(h)) || j[g] && !(e = j[g](e)) || (d = e.shift(), f.push({
					value: d,
					type: g,
					matches: e
				}), h = h.slice(d.length));
				if (!d) break
			}
			return c ? h.length : h ? b.error(a) : S(a, i).slice(0)
		}, A = b.compile = function(a, b) {
			var c, d = [],
				e = [],
				f = T[a + " "];
			if (!f) {
				for (b || (b = z(a)), c = b.length; c--;) f = s(b[c]), f[N] ? d.push(f) : e.push(f);
				f = T(a, t(e, d)), f.selector = a
			}
			return f
		}, B = b.select = function(a, b, c, d) {
			var e, f, g, h, i, j = "function" == typeof a && a,
				l = !d && z(a = j.selector || a);
			if (c = c || [], 1 === l.length) {
				if (f = l[0] = l[0].slice(0), f.length > 2 && "ID" === (g = f[0]).type && v.getById && 9 === b.nodeType && I && w.relative[f[1].type]) {
					if (b = (w.find.ID(g.matches[0].replace(va, wa), b) || [])[0], !b) return c;
					j && (b = b.parentNode), a = a.slice(f.shift().value.length)
				}
				for (e = oa.needsContext.test(a) ? 0 : f.length; e-- && (g = f[e], !w.relative[h = g.type]);)
					if ((i = w.find[h]) && (d = i(g.matches[0].replace(va, wa), ta.test(f[0].type) && k(b.parentNode) || b))) {
						if (f.splice(e, 1), a = d.length && m(f), !a) return $.apply(c, d), c;
						break
					}
			}
			return (j || A(a, l))(d, b, !I, c, ta.test(a) && k(b.parentNode) || b), c
		}, v.sortStable = N.split("").sort(U).join("") === N, v.detectDuplicates = !!E, F(), v.sortDetached = e(function(a) {
			return 1 & a.compareDocumentPosition(G.createElement("div"))
		}), e(function(a) {
			return a.innerHTML = "<a href='#'></a>", "#" === a.firstChild.getAttribute("href")
		}) || f("type|href|height|width", function(a, b, c) {
			return c ? void 0 : a.getAttribute(b, "type" === b.toLowerCase() ? 1 : 2)
		}), v.attributes && e(function(a) {
			return a.innerHTML = "<input/>", a.firstChild.setAttribute("value", ""), "" === a.firstChild.getAttribute("value")
		}) || f("value", function(a, b, c) {
			return c || "input" !== a.nodeName.toLowerCase() ? void 0 : a.defaultValue
		}), e(function(a) {
			return null == a.getAttribute("disabled")
		}) || f(ba, function(a, b, c) {
			var d;
			return c ? void 0 : a[b] === !0 ? b.toLowerCase() : (d = a.getAttributeNode(b)) && d.specified ? d.value : null
		}), b
	}(a);
	_.find = ea, _.expr = ea.selectors, _.expr[":"] = _.expr.pseudos, _.unique = ea.uniqueSort, _.text = ea.getText, _.isXMLDoc = ea.isXML, _.contains = ea.contains;
	var fa = _.expr.match.needsContext,
		ga = /^<(\w+)\s*\/?>(?:<\/\1>|)$/,
		ha = /^.[^:#\[\.,]*$/;
	_.filter = function(a, b, c) {
		var d = b[0];
		return c && (a = ":not(" + a + ")"), 1 === b.length && 1 === d.nodeType ? _.find.matchesSelector(d, a) ? [d] : [] : _.find.matches(a, _.grep(b, function(a) {
			return 1 === a.nodeType
		}))
	}, _.fn.extend({
		find: function(a) {
			var b, c = this.length,
				d = [],
				e = this;

			if ("string" != typeof a) return this.pushStack(_(a).filter(function() {
				for (b = 0; c > b; b++)
					if (_.contains(e[b], this)) return !0
			}));
			for (b = 0; c > b; b++) _.find(a, e[b], d);
			return d = this.pushStack(c > 1 ? _.unique(d) : d), d.selector = this.selector ? this.selector + " " + a : a, d
		},
		filter: function(a) {
			return this.pushStack(d(this, a || [], !1))
		},
		not: function(a) {
			return this.pushStack(d(this, a || [], !0))
		},
		is: function(a) {
			return !!d(this, "string" == typeof a && fa.test(a) ? _(a) : a || [], !1).length
		}
	});
	var ia, ja = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/,
		ka = _.fn.init = function(a, b) {
			var c, d;
			if (!a) return this;
			if ("string" == typeof a) {
				if (c = "<" === a[0] && ">" === a[a.length - 1] && a.length >= 3 ? [null, a, null] : ja.exec(a), !c || !c[1] && b) return !b || b.jquery ? (b || ia).find(a) : this.constructor(b).find(a);
				if (c[1]) {
					if (b = b instanceof _ ? b[0] : b, _.merge(this, _.parseHTML(c[1], b && b.nodeType ? b.ownerDocument || b : Z, !0)), ga.test(c[1]) && _.isPlainObject(b))
						for (c in b) _.isFunction(this[c]) ? this[c](b[c]) : this.attr(c, b[c]);
					return this
				}
				return d = Z.getElementById(c[2]), d && d.parentNode && (this.length = 1, this[0] = d), this.context = Z, this.selector = a, this
			}
			return a.nodeType ? (this.context = this[0] = a, this.length = 1, this) : _.isFunction(a) ? "undefined" != typeof ia.ready ? ia.ready(a) : a(_) : (void 0 !== a.selector && (this.selector = a.selector, this.context = a.context), _.makeArray(a, this))
		};
	ka.prototype = _.fn, ia = _(Z);
	var la = /^(?:parents|prev(?:Until|All))/,
		ma = {
			children: !0,
			contents: !0,
			next: !0,
			prev: !0
		};
	_.extend({
		dir: function(a, b, c) {
			for (var d = [], e = void 0 !== c;
				(a = a[b]) && 9 !== a.nodeType;)
				if (1 === a.nodeType) {
					if (e && _(a).is(c)) break;
					d.push(a)
				}
			return d
		},
		sibling: function(a, b) {
			for (var c = []; a; a = a.nextSibling) 1 === a.nodeType && a !== b && c.push(a);
			return c
		}
	}), _.fn.extend({
		has: function(a) {
			var b = _(a, this),
				c = b.length;
			return this.filter(function() {
				for (var a = 0; c > a; a++)
					if (_.contains(this, b[a])) return !0
			})
		},
		closest: function(a, b) {
			for (var c, d = 0, e = this.length, f = [], g = fa.test(a) || "string" != typeof a ? _(a, b || this.context) : 0; e > d; d++)
				for (c = this[d]; c && c !== b; c = c.parentNode)
					if (c.nodeType < 11 && (g ? g.index(c) > -1 : 1 === c.nodeType && _.find.matchesSelector(c, a))) {
						f.push(c);
						break
					}
			return this.pushStack(f.length > 1 ? _.unique(f) : f)
		},
		index: function(a) {
			return a ? "string" == typeof a ? U.call(_(a), this[0]) : U.call(this, a.jquery ? a[0] : a) : this[0] && this[0].parentNode ? this.first().prevAll().length : -1
		},
		add: function(a, b) {
			return this.pushStack(_.unique(_.merge(this.get(), _(a, b))))
		},
		addBack: function(a) {
			return this.add(null == a ? this.prevObject : this.prevObject.filter(a))
		}
	}), _.each({
		parent: function(a) {
			var b = a.parentNode;
			return b && 11 !== b.nodeType ? b : null
		},
		parents: function(a) {
			return _.dir(a, "parentNode")
		},
		parentsUntil: function(a, b, c) {
			return _.dir(a, "parentNode", c)
		},
		next: function(a) {
			return e(a, "nextSibling")
		},
		prev: function(a) {
			return e(a, "previousSibling")
		},
		nextAll: function(a) {
			return _.dir(a, "nextSibling")
		},
		prevAll: function(a) {
			return _.dir(a, "previousSibling")
		},
		nextUntil: function(a, b, c) {
			return _.dir(a, "nextSibling", c)
		},
		prevUntil: function(a, b, c) {
			return _.dir(a, "previousSibling", c)
		},
		siblings: function(a) {
			return _.sibling((a.parentNode || {}).firstChild, a)
		},
		children: function(a) {
			return _.sibling(a.firstChild)
		},
		contents: function(a) {
			return a.contentDocument || _.merge([], a.childNodes)
		}
	}, function(a, b) {
		_.fn[a] = function(c, d) {
			var e = _.map(this, b, c);
			return "Until" !== a.slice(-5) && (d = c), d && "string" == typeof d && (e = _.filter(d, e)), this.length > 1 && (ma[a] || _.unique(e), la.test(a) && e.reverse()), this.pushStack(e)
		}
	});
	var na = /\S+/g,
		oa = {};
	_.Callbacks = function(a) {
		a = "string" == typeof a ? oa[a] || f(a) : _.extend({}, a);
		var b, c, d, e, g, h, i = [],
			j = !a.once && [],
			k = function(f) {
				for (b = a.memory && f, c = !0, h = e || 0, e = 0, g = i.length, d = !0; i && g > h; h++)
					if (i[h].apply(f[0], f[1]) === !1 && a.stopOnFalse) {
						b = !1;
						break
					}
				d = !1, i && (j ? j.length && k(j.shift()) : b ? i = [] : l.disable())
			},
			l = {
				add: function() {
					if (i) {
						var c = i.length;
						! function f(b) {
							_.each(b, function(b, c) {
								var d = _.type(c);
								"function" === d ? a.unique && l.has(c) || i.push(c) : c && c.length && "string" !== d && f(c)
							})
						}(arguments), d ? g = i.length : b && (e = c, k(b))
					}
					return this
				},
				remove: function() {
					return i && _.each(arguments, function(a, b) {
						for (var c;
							(c = _.inArray(b, i, c)) > -1;) i.splice(c, 1), d && (g >= c && g--, h >= c && h--)
					}), this
				},
				has: function(a) {
					return a ? _.inArray(a, i) > -1 : !(!i || !i.length)
				},
				empty: function() {
					return i = [], g = 0, this
				},
				disable: function() {
					return i = j = b = void 0, this
				},
				disabled: function() {
					return !i
				},
				lock: function() {
					return j = void 0, b || l.disable(), this
				},
				locked: function() {
					return !j
				},
				fireWith: function(a, b) {
					return !i || c && !j || (b = b || [], b = [a, b.slice ? b.slice() : b], d ? j.push(b) : k(b)), this
				},
				fire: function() {
					return l.fireWith(this, arguments), this
				},
				fired: function() {
					return !!c
				}
			};
		return l
	}, _.extend({
		Deferred: function(a) {
			var b = [
					["resolve", "done", _.Callbacks("once memory"), "resolved"],
					["reject", "fail", _.Callbacks("once memory"), "rejected"],
					["notify", "progress", _.Callbacks("memory")]
				],
				c = "pending",
				d = {
					state: function() {
						return c
					},
					always: function() {
						return e.done(arguments).fail(arguments), this
					},
					then: function() {
						var a = arguments;
						return _.Deferred(function(c) {
							_.each(b, function(b, f) {
								var g = _.isFunction(a[b]) && a[b];
								e[f[1]](function() {
									var a = g && g.apply(this, arguments);
									a && _.isFunction(a.promise) ? a.promise().done(c.resolve).fail(c.reject).progress(c.notify) : c[f[0] + "With"](this === d ? c.promise() : this, g ? [a] : arguments)
								})
							}), a = null
						}).promise()
					},
					promise: function(a) {
						return null != a ? _.extend(a, d) : d
					}
				},
				e = {};
			return d.pipe = d.then, _.each(b, function(a, f) {
				var g = f[2],
					h = f[3];
				d[f[1]] = g.add, h && g.add(function() {
					c = h
				}, b[1 ^ a][2].disable, b[2][2].lock), e[f[0]] = function() {
					return e[f[0] + "With"](this === e ? d : this, arguments), this
				}, e[f[0] + "With"] = g.fireWith
			}), d.promise(e), a && a.call(e, e), e
		},
		when: function(a) {
			var b, c, d, e = 0,
				f = R.call(arguments),
				g = f.length,
				h = 1 !== g || a && _.isFunction(a.promise) ? g : 0,
				i = 1 === h ? a : _.Deferred(),
				j = function(a, c, d) {
					return function(e) {
						c[a] = this, d[a] = arguments.length > 1 ? R.call(arguments) : e, d === b ? i.notifyWith(c, d) : --h || i.resolveWith(c, d)
					}
				};
			if (g > 1)
				for (b = new Array(g), c = new Array(g), d = new Array(g); g > e; e++) f[e] && _.isFunction(f[e].promise) ? f[e].promise().done(j(e, d, f)).fail(i.reject).progress(j(e, c, b)) : --h;
			return h || i.resolveWith(d, f), i.promise()
		}
	});
	var pa;
	_.fn.ready = function(a) {
		return _.ready.promise().done(a), this
	}, _.extend({
		isReady: !1,
		readyWait: 1,
		holdReady: function(a) {
			a ? _.readyWait++ : _.ready(!0)
		},
		ready: function(a) {
			(a === !0 ? --_.readyWait : _.isReady) || (_.isReady = !0, a !== !0 && --_.readyWait > 0 || (pa.resolveWith(Z, [_]), _.fn.triggerHandler && (_(Z).triggerHandler("ready"), _(Z).off("ready"))))
		}
	}), _.ready.promise = function(b) {
		return pa || (pa = _.Deferred(), "complete" === Z.readyState ? setTimeout(_.ready) : (Z.addEventListener("DOMContentLoaded", g, !1), a.addEventListener("load", g, !1))), pa.promise(b)
	}, _.ready.promise();
	var qa = _.access = function(a, b, c, d, e, f, g) {
		var h = 0,
			i = a.length,
			j = null == c;
		if ("object" === _.type(c)) {
			e = !0;
			for (h in c) _.access(a, b, h, c[h], !0, f, g)
		} else if (void 0 !== d && (e = !0, _.isFunction(d) || (g = !0), j && (g ? (b.call(a, d), b = null) : (j = b, b = function(a, b, c) {
				return j.call(_(a), c)
			})), b))
			for (; i > h; h++) b(a[h], c, g ? d : d.call(a[h], h, b(a[h], c)));
		return e ? a : j ? b.call(a) : i ? b(a[0], c) : f
	};
	_.acceptData = function(a) {
		return 1 === a.nodeType || 9 === a.nodeType || !+a.nodeType
	}, h.uid = 1, h.accepts = _.acceptData, h.prototype = {
		key: function(a) {
			if (!h.accepts(a)) return 0;
			var b = {},
				c = a[this.expando];
			if (!c) {
				c = h.uid++;
				try {
					b[this.expando] = {
						value: c
					}, Object.defineProperties(a, b)
				} catch (d) {
					b[this.expando] = c, _.extend(a, b)
				}
			}
			return this.cache[c] || (this.cache[c] = {}), c
		},
		set: function(a, b, c) {
			var d, e = this.key(a),
				f = this.cache[e];
			if ("string" == typeof b) f[b] = c;
			else if (_.isEmptyObject(f)) _.extend(this.cache[e], b);
			else
				for (d in b) f[d] = b[d];
			return f
		},
		get: function(a, b) {
			var c = this.cache[this.key(a)];
			return void 0 === b ? c : c[b]
		},
		access: function(a, b, c) {
			var d;
			return void 0 === b || b && "string" == typeof b && void 0 === c ? (d = this.get(a, b), void 0 !== d ? d : this.get(a, _.camelCase(b))) : (this.set(a, b, c), void 0 !== c ? c : b)
		},
		remove: function(a, b) {
			var c, d, e, f = this.key(a),
				g = this.cache[f];
			if (void 0 === b) this.cache[f] = {};
			else {
				_.isArray(b) ? d = b.concat(b.map(_.camelCase)) : (e = _.camelCase(b), b in g ? d = [b, e] : (d = e, d = d in g ? [d] : d.match(na) || [])), c = d.length;
				for (; c--;) delete g[d[c]]
			}
		},
		hasData: function(a) {
			return !_.isEmptyObject(this.cache[a[this.expando]] || {})
		},
		discard: function(a) {
			a[this.expando] && delete this.cache[a[this.expando]]
		}
	};
	var ra = new h,
		sa = new h,
		ta = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,
		ua = /([A-Z])/g;
	_.extend({
		hasData: function(a) {
			return sa.hasData(a) || ra.hasData(a)
		},
		data: function(a, b, c) {
			return sa.access(a, b, c)
		},
		removeData: function(a, b) {
			sa.remove(a, b)
		},
		_data: function(a, b, c) {
			return ra.access(a, b, c)
		},
		_removeData: function(a, b) {
			ra.remove(a, b)
		}
	}), _.fn.extend({
		data: function(a, b) {
			var c, d, e, f = this[0],
				g = f && f.attributes;
			if (void 0 === a) {
				if (this.length && (e = sa.get(f), 1 === f.nodeType && !ra.get(f, "hasDataAttrs"))) {
					for (c = g.length; c--;) g[c] && (d = g[c].name, 0 === d.indexOf("data-") && (d = _.camelCase(d.slice(5)), i(f, d, e[d])));
					ra.set(f, "hasDataAttrs", !0)
				}
				return e
			}
			return "object" == typeof a ? this.each(function() {
				sa.set(this, a)
			}) : qa(this, function(b) {
				var c, d = _.camelCase(a);
				if (f && void 0 === b) {
					if (c = sa.get(f, a), void 0 !== c) return c;
					if (c = sa.get(f, d), void 0 !== c) return c;
					if (c = i(f, d, void 0), void 0 !== c) return c
				} else this.each(function() {
					var c = sa.get(this, d);
					sa.set(this, d, b), -1 !== a.indexOf("-") && void 0 !== c && sa.set(this, a, b)
				})
			}, null, b, arguments.length > 1, null, !0)
		},
		removeData: function(a) {
			return this.each(function() {
				sa.remove(this, a)
			})
		}
	}), _.extend({
		queue: function(a, b, c) {
			var d;
			return a ? (b = (b || "fx") + "queue", d = ra.get(a, b), c && (!d || _.isArray(c) ? d = ra.access(a, b, _.makeArray(c)) : d.push(c)), d || []) : void 0
		},
		dequeue: function(a, b) {
			b = b || "fx";
			var c = _.queue(a, b),
				d = c.length,
				e = c.shift(),
				f = _._queueHooks(a, b),
				g = function() {
					_.dequeue(a, b)
				};
			"inprogress" === e && (e = c.shift(), d--), e && ("fx" === b && c.unshift("inprogress"), delete f.stop, e.call(a, g, f)), !d && f && f.empty.fire()
		},
		_queueHooks: function(a, b) {
			var c = b + "queueHooks";
			return ra.get(a, c) || ra.access(a, c, {
				empty: _.Callbacks("once memory").add(function() {
					ra.remove(a, [b + "queue", c])
				})
			})
		}
	}), _.fn.extend({
		queue: function(a, b) {
			var c = 2;
			return "string" != typeof a && (b = a, a = "fx", c--), arguments.length < c ? _.queue(this[0], a) : void 0 === b ? this : this.each(function() {
				var c = _.queue(this, a, b);
				_._queueHooks(this, a), "fx" === a && "inprogress" !== c[0] && _.dequeue(this, a)
			})
		},
		dequeue: function(a) {
			return this.each(function() {
				_.dequeue(this, a)
			})
		},
		clearQueue: function(a) {
			return this.queue(a || "fx", [])
		},
		promise: function(a, b) {
			var c, d = 1,
				e = _.Deferred(),
				f = this,
				g = this.length,
				h = function() {
					--d || e.resolveWith(f, [f])
				};
			for ("string" != typeof a && (b = a, a = void 0), a = a || "fx"; g--;) c = ra.get(f[g], a + "queueHooks"), c && c.empty && (d++, c.empty.add(h));
			return h(), e.promise(b)
		}
	});
	var va = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,
		wa = ["Top", "Right", "Bottom", "Left"],
		xa = function(a, b) {
			return a = b || a, "none" === _.css(a, "display") || !_.contains(a.ownerDocument, a)
		},
		ya = /^(?:checkbox|radio)$/i;
	! function() {
		var a = Z.createDocumentFragment(),
			b = a.appendChild(Z.createElement("div")),
			c = Z.createElement("input");
		c.setAttribute("type", "radio"), c.setAttribute("checked", "checked"), c.setAttribute("name", "t"), b.appendChild(c), Y.checkClone = b.cloneNode(!0).cloneNode(!0).lastChild.checked, b.innerHTML = "<textarea>x</textarea>", Y.noCloneChecked = !!b.cloneNode(!0).lastChild.defaultValue
	}();
	var za = "undefined";
	Y.focusinBubbles = "onfocusin" in a;
	var Aa = /^key/,
		Ba = /^(?:mouse|pointer|contextmenu)|click/,
		Ca = /^(?:focusinfocus|focusoutblur)$/,
		Da = /^([^.]*)(?:\.(.+)|)$/;
	_.event = {
		global: {},
		add: function(a, b, c, d, e) {
			var f, g, h, i, j, k, l, m, n, o, p, q = ra.get(a);
			if (q)
				for (c.handler && (f = c, c = f.handler, e = f.selector), c.guid || (c.guid = _.guid++), (i = q.events) || (i = q.events = {}), (g = q.handle) || (g = q.handle = function(b) {
						return typeof _ !== za && _.event.triggered !== b.type ? _.event.dispatch.apply(a, arguments) : void 0
					}), b = (b || "").match(na) || [""], j = b.length; j--;) h = Da.exec(b[j]) || [], n = p = h[1], o = (h[2] || "").split(".").sort(), n && (l = _.event.special[n] || {}, n = (e ? l.delegateType : l.bindType) || n, l = _.event.special[n] || {}, k = _.extend({
					type: n,
					origType: p,
					data: d,
					handler: c,
					guid: c.guid,
					selector: e,
					needsContext: e && _.expr.match.needsContext.test(e),
					namespace: o.join(".")
				}, f), (m = i[n]) || (m = i[n] = [], m.delegateCount = 0, l.setup && l.setup.call(a, d, o, g) !== !1 || a.addEventListener && a.addEventListener(n, g, !1)), l.add && (l.add.call(a, k), k.handler.guid || (k.handler.guid = c.guid)), e ? m.splice(m.delegateCount++, 0, k) : m.push(k), _.event.global[n] = !0)
		},
		remove: function(a, b, c, d, e) {
			var f, g, h, i, j, k, l, m, n, o, p, q = ra.hasData(a) && ra.get(a);
			if (q && (i = q.events)) {
				for (b = (b || "").match(na) || [""], j = b.length; j--;)
					if (h = Da.exec(b[j]) || [], n = p = h[1], o = (h[2] || "").split(".").sort(), n) {
						for (l = _.event.special[n] || {}, n = (d ? l.delegateType : l.bindType) || n, m = i[n] || [], h = h[2] && new RegExp("(^|\\.)" + o.join("\\.(?:.*\\.|)") + "(\\.|$)"), g = f = m.length; f--;) k = m[f], !e && p !== k.origType || c && c.guid !== k.guid || h && !h.test(k.namespace) || d && d !== k.selector && ("**" !== d || !k.selector) || (m.splice(f, 1), k.selector && m.delegateCount--, l.remove && l.remove.call(a, k));
						g && !m.length && (l.teardown && l.teardown.call(a, o, q.handle) !== !1 || _.removeEvent(a, n, q.handle), delete i[n])
					} else
						for (n in i) _.event.remove(a, n + b[j], c, d, !0);
				_.isEmptyObject(i) && (delete q.handle, ra.remove(a, "events"))
			}
		},
		trigger: function(b, c, d, e) {
			var f, g, h, i, j, k, l, m = [d || Z],
				n = X.call(b, "type") ? b.type : b,
				o = X.call(b, "namespace") ? b.namespace.split(".") : [];
			if (g = h = d = d || Z, 3 !== d.nodeType && 8 !== d.nodeType && !Ca.test(n + _.event.triggered) && (n.indexOf(".") >= 0 && (o = n.split("."), n = o.shift(), o.sort()), j = n.indexOf(":") < 0 && "on" + n, b = b[_.expando] ? b : new _.Event(n, "object" == typeof b && b), b.isTrigger = e ? 2 : 3, b.namespace = o.join("."), b.namespace_re = b.namespace ? new RegExp("(^|\\.)" + o.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, b.result = void 0, b.target || (b.target = d), c = null == c ? [b] : _.makeArray(c, [b]), l = _.event.special[n] || {}, e || !l.trigger || l.trigger.apply(d, c) !== !1)) {
				if (!e && !l.noBubble && !_.isWindow(d)) {
					for (i = l.delegateType || n, Ca.test(i + n) || (g = g.parentNode); g; g = g.parentNode) m.push(g), h = g;
					h === (d.ownerDocument || Z) && m.push(h.defaultView || h.parentWindow || a)
				}
				for (f = 0;
					(g = m[f++]) && !b.isPropagationStopped();) b.type = f > 1 ? i : l.bindType || n, k = (ra.get(g, "events") || {})[b.type] && ra.get(g, "handle"), k && k.apply(g, c), k = j && g[j], k && k.apply && _.acceptData(g) && (b.result = k.apply(g, c), b.result === !1 && b.preventDefault());
				return b.type = n, e || b.isDefaultPrevented() || l._default && l._default.apply(m.pop(), c) !== !1 || !_.acceptData(d) || j && _.isFunction(d[n]) && !_.isWindow(d) && (h = d[j], h && (d[j] = null), _.event.triggered = n, d[n](), _.event.triggered = void 0, h && (d[j] = h)), b.result
			}
		},
		dispatch: function(a) {
			a = _.event.fix(a);
			var b, c, d, e, f, g = [],
				h = R.call(arguments),
				i = (ra.get(this, "events") || {})[a.type] || [],
				j = _.event.special[a.type] || {};
			if (h[0] = a, a.delegateTarget = this, !j.preDispatch || j.preDispatch.call(this, a) !== !1) {
				for (g = _.event.handlers.call(this, a, i), b = 0;
					(e = g[b++]) && !a.isPropagationStopped();)
					for (a.currentTarget = e.elem, c = 0;
						(f = e.handlers[c++]) && !a.isImmediatePropagationStopped();)(!a.namespace_re || a.namespace_re.test(f.namespace)) && (a.handleObj = f, a.data = f.data, d = ((_.event.special[f.origType] || {}).handle || f.handler).apply(e.elem, h), void 0 !== d && (a.result = d) === !1 && (a.preventDefault(), a.stopPropagation()));
				return j.postDispatch && j.postDispatch.call(this, a), a.result
			}
		},
		handlers: function(a, b) {
			var c, d, e, f, g = [],
				h = b.delegateCount,
				i = a.target;
			if (h && i.nodeType && (!a.button || "click" !== a.type))
				for (; i !== this; i = i.parentNode || this)
					if (i.disabled !== !0 || "click" !== a.type) {
						for (d = [], c = 0; h > c; c++) f = b[c], e = f.selector + " ", void 0 === d[e] && (d[e] = f.needsContext ? _(e, this).index(i) >= 0 : _.find(e, this, null, [i]).length), d[e] && d.push(f);
						d.length && g.push({
							elem: i,
							handlers: d
						})
					}
			return h < b.length && g.push({
				elem: this,
				handlers: b.slice(h)
			}), g
		},
		props: "altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),
		fixHooks: {},
		keyHooks: {
			props: "char charCode key keyCode".split(" "),
			filter: function(a, b) {
				return null == a.which && (a.which = null != b.charCode ? b.charCode : b.keyCode), a
			}
		},
		mouseHooks: {
			props: "button buttons clientX clientY offsetX offsetY pageX pageY screenX screenY toElement".split(" "),
			filter: function(a, b) {
				var c, d, e, f = b.button;
				return null == a.pageX && null != b.clientX && (c = a.target.ownerDocument || Z, d = c.documentElement, e = c.body, a.pageX = b.clientX + (d && d.scrollLeft || e && e.scrollLeft || 0) - (d && d.clientLeft || e && e.clientLeft || 0), a.pageY = b.clientY + (d && d.scrollTop || e && e.scrollTop || 0) - (d && d.clientTop || e && e.clientTop || 0)), a.which || void 0 === f || (a.which = 1 & f ? 1 : 2 & f ? 3 : 4 & f ? 2 : 0), a
			}
		},
		fix: function(a) {
			if (a[_.expando]) return a;
			var b, c, d, e = a.type,
				f = a,
				g = this.fixHooks[e];
			for (g || (this.fixHooks[e] = g = Ba.test(e) ? this.mouseHooks : Aa.test(e) ? this.keyHooks : {}), d = g.props ? this.props.concat(g.props) : this.props, a = new _.Event(f), b = d.length; b--;) c = d[b], a[c] = f[c];
			return a.target || (a.target = Z), 3 === a.target.nodeType && (a.target = a.target.parentNode), g.filter ? g.filter(a, f) : a
		},
		special: {
			load: {
				noBubble: !0
			},
			focus: {
				trigger: function() {
					return this !== l() && this.focus ? (this.focus(), !1) : void 0
				},
				delegateType: "focusin"
			},
			blur: {
				trigger: function() {
					return this === l() && this.blur ? (this.blur(), !1) : void 0
				},
				delegateType: "focusout"
			},
			click: {
				trigger: function() {
					return "checkbox" === this.type && this.click && _.nodeName(this, "input") ? (this.click(), !1) : void 0
				},
				_default: function(a) {
					return _.nodeName(a.target, "a")
				}
			},
			beforeunload: {
				postDispatch: function(a) {
					void 0 !== a.result && a.originalEvent && (a.originalEvent.returnValue = a.result)
				}
			}
		},
		simulate: function(a, b, c, d) {
			var e = _.extend(new _.Event, c, {
				type: a,
				isSimulated: !0,
				originalEvent: {}
			});
			d ? _.event.trigger(e, null, b) : _.event.dispatch.call(b, e), e.isDefaultPrevented() && c.preventDefault()
		}
	}, _.removeEvent = function(a, b, c) {
		a.removeEventListener && a.removeEventListener(b, c, !1)
	}, _.Event = function(a, b) {
		return this instanceof _.Event ? (a && a.type ? (this.originalEvent = a, this.type = a.type, this.isDefaultPrevented = a.defaultPrevented || void 0 === a.defaultPrevented && a.returnValue === !1 ? j : k) : this.type = a, b && _.extend(this, b), this.timeStamp = a && a.timeStamp || _.now(), void(this[_.expando] = !0)) : new _.Event(a, b)
	}, _.Event.prototype = {
		isDefaultPrevented: k,
		isPropagationStopped: k,
		isImmediatePropagationStopped: k,
		preventDefault: function() {
			var a = this.originalEvent;
			this.isDefaultPrevented = j, a && a.preventDefault && a.preventDefault()
		},
		stopPropagation: function() {
			var a = this.originalEvent;
			this.isPropagationStopped = j, a && a.stopPropagation && a.stopPropagation()
		},
		stopImmediatePropagation: function() {
			var a = this.originalEvent;
			this.isImmediatePropagationStopped = j, a && a.stopImmediatePropagation && a.stopImmediatePropagation(), this.stopPropagation()
		}
	}, _.each({
		mouseenter: "mouseover",
		mouseleave: "mouseout",
		pointerenter: "pointerover",
		pointerleave: "pointerout"
	}, function(a, b) {
		_.event.special[a] = {
			delegateType: b,
			bindType: b,
			handle: function(a) {
				var c, d = this,
					e = a.relatedTarget,
					f = a.handleObj;
				return (!e || e !== d && !_.contains(d, e)) && (a.type = f.origType, c = f.handler.apply(this, arguments), a.type = b), c
			}
		}
	}), Y.focusinBubbles || _.each({
		focus: "focusin",
		blur: "focusout"
	}, function(a, b) {
		var c = function(a) {
			_.event.simulate(b, a.target, _.event.fix(a), !0)
		};
		_.event.special[b] = {
			setup: function() {
				var d = this.ownerDocument || this,
					e = ra.access(d, b);
				e || d.addEventListener(a, c, !0), ra.access(d, b, (e || 0) + 1)
			},
			teardown: function() {
				var d = this.ownerDocument || this,
					e = ra.access(d, b) - 1;
				e ? ra.access(d, b, e) : (d.removeEventListener(a, c, !0), ra.remove(d, b))
			}
		}
	}), _.fn.extend({
		on: function(a, b, c, d, e) {
			var f, g;
			if ("object" == typeof a) {
				"string" != typeof b && (c = c || b, b = void 0);
				for (g in a) this.on(g, b, c, a[g], e);
				return this
			}
			if (null == c && null == d ? (d = b, c = b = void 0) : null == d && ("string" == typeof b ? (d = c, c = void 0) : (d = c, c = b, b = void 0)), d === !1) d = k;
			else if (!d) return this;
			return 1 === e && (f = d, d = function(a) {
				return _().off(a), f.apply(this, arguments)
			}, d.guid = f.guid || (f.guid = _.guid++)), this.each(function() {
				_.event.add(this, a, d, c, b)
			})
		},
		one: function(a, b, c, d) {
			return this.on(a, b, c, d, 1)
		},
		off: function(a, b, c) {
			var d, e;
			if (a && a.preventDefault && a.handleObj) return d = a.handleObj, _(a.delegateTarget).off(d.namespace ? d.origType + "." + d.namespace : d.origType, d.selector, d.handler), this;
			if ("object" == typeof a) {
				for (e in a) this.off(e, b, a[e]);
				return this
			}
			return (b === !1 || "function" == typeof b) && (c = b, b = void 0), c === !1 && (c = k), this.each(function() {
				_.event.remove(this, a, c, b)
			})
		},
		trigger: function(a, b) {
			return this.each(function() {
				_.event.trigger(a, b, this)
			})
		},
		triggerHandler: function(a, b) {
			var c = this[0];
			return c ? _.event.trigger(a, b, c, !0) : void 0
		}
	});
	var Ea = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,
		Fa = /<([\w:]+)/,
		Ga = /<|&#?\w+;/,
		Ha = /<(?:script|style|link)/i,
		Ia = /checked\s*(?:[^=]|=\s*.checked.)/i,
		Ja = /^$|\/(?:java|ecma)script/i,
		Ka = /^true\/(.*)/,
		La = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g,
		Ma = {
			option: [1, "<select multiple='multiple'>", "</select>"],
			thead: [1, "<table>", "</table>"],
			col: [2, "<table><colgroup>", "</colgroup></table>"],
			tr: [2, "<table><tbody>", "</tbody></table>"],
			td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
			_default: [0, "", ""]
		};
	Ma.optgroup = Ma.option, Ma.tbody = Ma.tfoot = Ma.colgroup = Ma.caption = Ma.thead, Ma.th = Ma.td, _.extend({
		clone: function(a, b, c) {
			var d, e, f, g, h = a.cloneNode(!0),
				i = _.contains(a.ownerDocument, a);
			if (!(Y.noCloneChecked || 1 !== a.nodeType && 11 !== a.nodeType || _.isXMLDoc(a)))
				for (g = r(h), f = r(a), d = 0, e = f.length; e > d; d++) s(f[d], g[d]);
			if (b)
				if (c)
					for (f = f || r(a), g = g || r(h), d = 0, e = f.length; e > d; d++) q(f[d], g[d]);
				else q(a, h);
			return g = r(h, "script"), g.length > 0 && p(g, !i && r(a, "script")), h
		},
		buildFragment: function(a, b, c, d) {
			for (var e, f, g, h, i, j, k = b.createDocumentFragment(), l = [], m = 0, n = a.length; n > m; m++)
				if (e = a[m], e || 0 === e)
					if ("object" === _.type(e)) _.merge(l, e.nodeType ? [e] : e);
					else if (Ga.test(e)) {
				for (f = f || k.appendChild(b.createElement("div")), g = (Fa.exec(e) || ["", ""])[1].toLowerCase(), h = Ma[g] || Ma._default, f.innerHTML = h[1] + e.replace(Ea, "<$1></$2>") + h[2], j = h[0]; j--;) f = f.lastChild;
				_.merge(l, f.childNodes), f = k.firstChild, f.textContent = ""
			} else l.push(b.createTextNode(e));
			for (k.textContent = "", m = 0; e = l[m++];)
				if ((!d || -1 === _.inArray(e, d)) && (i = _.contains(e.ownerDocument, e), f = r(k.appendChild(e), "script"), i && p(f), c))
					for (j = 0; e = f[j++];) Ja.test(e.type || "") && c.push(e);
			return k
		},
		cleanData: function(a) {
			for (var b, c, d, e, f = _.event.special, g = 0; void 0 !== (c = a[g]); g++) {
				if (_.acceptData(c) && (e = c[ra.expando], e && (b = ra.cache[e]))) {
					if (b.events)
						for (d in b.events) f[d] ? _.event.remove(c, d) : _.removeEvent(c, d, b.handle);
					ra.cache[e] && delete ra.cache[e]
				}
				delete sa.cache[c[sa.expando]]
			}
		}
	}), _.fn.extend({
		text: function(a) {
			return qa(this, function(a) {
				return void 0 === a ? _.text(this) : this.empty().each(function() {
					(1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) && (this.textContent = a)
				})
			}, null, a, arguments.length)
		},
		append: function() {
			return this.domManip(arguments, function(a) {
				if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
					var b = m(this, a);
					b.appendChild(a)
				}
			})
		},
		prepend: function() {
			return this.domManip(arguments, function(a) {
				if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
					var b = m(this, a);
					b.insertBefore(a, b.firstChild)
				}
			})
		},
		before: function() {
			return this.domManip(arguments, function(a) {
				this.parentNode && this.parentNode.insertBefore(a, this)
			})
		},
		after: function() {
			return this.domManip(arguments, function(a) {
				this.parentNode && this.parentNode.insertBefore(a, this.nextSibling)
			})
		},
		remove: function(a, b) {
			for (var c, d = a ? _.filter(a, this) : this, e = 0; null != (c = d[e]); e++) b || 1 !== c.nodeType || _.cleanData(r(c)), c.parentNode && (b && _.contains(c.ownerDocument, c) && p(r(c, "script")), c.parentNode.removeChild(c));
			return this
		},
		empty: function() {
			for (var a, b = 0; null != (a = this[b]); b++) 1 === a.nodeType && (_.cleanData(r(a, !1)), a.textContent = "");
			return this
		},
		clone: function(a, b) {
			return a = null == a ? !1 : a, b = null == b ? a : b, this.map(function() {
				return _.clone(this, a, b)
			})
		},
		html: function(a) {
			return qa(this, function(a) {
				var b = this[0] || {},
					c = 0,
					d = this.length;
				if (void 0 === a && 1 === b.nodeType) return b.innerHTML;
				if ("string" == typeof a && !Ha.test(a) && !Ma[(Fa.exec(a) || ["", ""])[1].toLowerCase()]) {
					a = a.replace(Ea, "<$1></$2>");
					try {
						for (; d > c; c++) b = this[c] || {}, 1 === b.nodeType && (_.cleanData(r(b, !1)), b.innerHTML = a);
						b = 0
					} catch (e) {}
				}
				b && this.empty().append(a)
			}, null, a, arguments.length)
		},
		replaceWith: function() {
			var a = arguments[0];
			return this.domManip(arguments, function(b) {
				a = this.parentNode, _.cleanData(r(this)), a && a.replaceChild(b, this)
			}), a && (a.length || a.nodeType) ? this : this.remove()
		},
		detach: function(a) {
			return this.remove(a, !0)
		},
		domManip: function(a, b) {
			a = S.apply([], a);
			var c, d, e, f, g, h, i = 0,
				j = this.length,
				k = this,
				l = j - 1,
				m = a[0],
				p = _.isFunction(m);
			if (p || j > 1 && "string" == typeof m && !Y.checkClone && Ia.test(m)) return this.each(function(c) {
				var d = k.eq(c);
				p && (a[0] = m.call(this, c, d.html())), d.domManip(a, b)
			});
			if (j && (c = _.buildFragment(a, this[0].ownerDocument, !1, this), d = c.firstChild, 1 === c.childNodes.length && (c = d), d)) {
				for (e = _.map(r(c, "script"), n), f = e.length; j > i; i++) g = c, i !== l && (g = _.clone(g, !0, !0), f && _.merge(e, r(g, "script"))), b.call(this[i], g, i);
				if (f)
					for (h = e[e.length - 1].ownerDocument, _.map(e, o), i = 0; f > i; i++) g = e[i], Ja.test(g.type || "") && !ra.access(g, "globalEval") && _.contains(h, g) && (g.src ? _._evalUrl && _._evalUrl(g.src) : _.globalEval(g.textContent.replace(La, "")))
			}
			return this
		}
	}), _.each({
		appendTo: "append",
		prependTo: "prepend",
		insertBefore: "before",
		insertAfter: "after",
		replaceAll: "replaceWith"
	}, function(a, b) {
		_.fn[a] = function(a) {
			for (var c, d = [], e = _(a), f = e.length - 1, g = 0; f >= g; g++) c = g === f ? this : this.clone(!0), _(e[g])[b](c), T.apply(d, c.get());
			return this.pushStack(d)
		}
	});
	var Na, Oa = {},
		Pa = /^margin/,
		Qa = new RegExp("^(" + va + ")(?!px)[a-z%]+$", "i"),
		Ra = function(b) {
			return b.ownerDocument.defaultView.opener ? b.ownerDocument.defaultView.getComputedStyle(b, null) : a.getComputedStyle(b, null)
		};
	! function() {
		function b() {
			g.style.cssText = "-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;display:block;margin-top:1%;top:1%;border:1px;padding:1px;width:4px;position:absolute", g.innerHTML = "", e.appendChild(f);
			var b = a.getComputedStyle(g, null);
			c = "1%" !== b.top, d = "4px" === b.width, e.removeChild(f)
		}
		var c, d, e = Z.documentElement,
			f = Z.createElement("div"),
			g = Z.createElement("div");
		g.style && (g.style.backgroundClip = "content-box", g.cloneNode(!0).style.backgroundClip = "", Y.clearCloneStyle = "content-box" === g.style.backgroundClip, f.style.cssText = "border:0;width:0;height:0;top:0;left:-9999px;margin-top:1px;position:absolute", f.appendChild(g), a.getComputedStyle && _.extend(Y, {
			pixelPosition: function() {
				return b(), c
			},
			boxSizingReliable: function() {
				return null == d && b(), d
			},
			reliableMarginRight: function() {
				var b, c = g.appendChild(Z.createElement("div"));
				return c.style.cssText = g.style.cssText = "-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;margin:0;border:0;padding:0", c.style.marginRight = c.style.width = "0", g.style.width = "1px", e.appendChild(f), b = !parseFloat(a.getComputedStyle(c, null).marginRight), e.removeChild(f), g.removeChild(c), b
			}
		}))
	}(), _.swap = function(a, b, c, d) {
		var e, f, g = {};
		for (f in b) g[f] = a.style[f], a.style[f] = b[f];
		e = c.apply(a, d || []);
		for (f in b) a.style[f] = g[f];
		return e
	};
	var Sa = /^(none|table(?!-c[ea]).+)/,
		Ta = new RegExp("^(" + va + ")(.*)$", "i"),
		Ua = new RegExp("^([+-])=(" + va + ")", "i"),
		Va = {
			position: "absolute",
			visibility: "hidden",
			display: "block"
		},
		Wa = {
			letterSpacing: "0",
			fontWeight: "400"
		},
		Xa = ["Webkit", "O", "Moz", "ms"];
	_.extend({
		cssHooks: {
			opacity: {
				get: function(a, b) {
					if (b) {
						var c = v(a, "opacity");
						return "" === c ? "1" : c
					}
				}
			}
		},
		cssNumber: {
			columnCount: !0,
			fillOpacity: !0,
			flexGrow: !0,
			flexShrink: !0,
			fontWeight: !0,
			lineHeight: !0,
			opacity: !0,
			order: !0,
			orphans: !0,
			widows: !0,
			zIndex: !0,
			zoom: !0
		},
		cssProps: {
			"float": "cssFloat"
		},
		style: function(a, b, c, d) {
			if (a && 3 !== a.nodeType && 8 !== a.nodeType && a.style) {
				var e, f, g, h = _.camelCase(b),
					i = a.style;
				return b = _.cssProps[h] || (_.cssProps[h] = x(i, h)), g = _.cssHooks[b] || _.cssHooks[h], void 0 === c ? g && "get" in g && void 0 !== (e = g.get(a, !1, d)) ? e : i[b] : (f = typeof c, "string" === f && (e = Ua.exec(c)) && (c = (e[1] + 1) * e[2] + parseFloat(_.css(a, b)), f = "number"), void(null != c && c === c && ("number" !== f || _.cssNumber[h] || (c += "px"), Y.clearCloneStyle || "" !== c || 0 !== b.indexOf("background") || (i[b] = "inherit"), g && "set" in g && void 0 === (c = g.set(a, c, d)) || (i[b] = c))))
			}
		},
		css: function(a, b, c, d) {
			var e, f, g, h = _.camelCase(b);
			return b = _.cssProps[h] || (_.cssProps[h] = x(a.style, h)), g = _.cssHooks[b] || _.cssHooks[h], g && "get" in g && (e = g.get(a, !0, c)), void 0 === e && (e = v(a, b, d)), "normal" === e && b in Wa && (e = Wa[b]), "" === c || c ? (f = parseFloat(e), c === !0 || _.isNumeric(f) ? f || 0 : e) : e
		}
	}), _.each(["height", "width"], function(a, b) {
		_.cssHooks[b] = {
			get: function(a, c, d) {
				return c ? Sa.test(_.css(a, "display")) && 0 === a.offsetWidth ? _.swap(a, Va, function() {
					return A(a, b, d)
				}) : A(a, b, d) : void 0
			},
			set: function(a, c, d) {
				var e = d && Ra(a);
				return y(a, c, d ? z(a, b, d, "border-box" === _.css(a, "boxSizing", !1, e), e) : 0)
			}
		}
	}), _.cssHooks.marginRight = w(Y.reliableMarginRight, function(a, b) {
		return b ? _.swap(a, {
			display: "inline-block"
		}, v, [a, "marginRight"]) : void 0
	}), _.each({
		margin: "",
		padding: "",
		border: "Width"
	}, function(a, b) {
		_.cssHooks[a + b] = {
			expand: function(c) {
				for (var d = 0, e = {}, f = "string" == typeof c ? c.split(" ") : [c]; 4 > d; d++) e[a + wa[d] + b] = f[d] || f[d - 2] || f[0];
				return e
			}
		}, Pa.test(a) || (_.cssHooks[a + b].set = y)
	}), _.fn.extend({
		css: function(a, b) {
			return qa(this, function(a, b, c) {
				var d, e, f = {},
					g = 0;
				if (_.isArray(b)) {
					for (d = Ra(a), e = b.length; e > g; g++) f[b[g]] = _.css(a, b[g], !1, d);
					return f
				}
				return void 0 !== c ? _.style(a, b, c) : _.css(a, b)
			}, a, b, arguments.length > 1)
		},
		show: function() {
			return B(this, !0)
		},
		hide: function() {
			return B(this)
		},
		toggle: function(a) {
			return "boolean" == typeof a ? a ? this.show() : this.hide() : this.each(function() {
				xa(this) ? _(this).show() : _(this).hide()
			})
		}
	}), _.Tween = C, C.prototype = {
		constructor: C,
		init: function(a, b, c, d, e, f) {
			this.elem = a, this.prop = c, this.easing = e || "swing", this.options = b, this.start = this.now = this.cur(), this.end = d, this.unit = f || (_.cssNumber[c] ? "" : "px")
		},
		cur: function() {
			var a = C.propHooks[this.prop];
			return a && a.get ? a.get(this) : C.propHooks._default.get(this)
		},
		run: function(a) {
			var b, c = C.propHooks[this.prop];
			return this.pos = b = this.options.duration ? _.easing[this.easing](a, this.options.duration * a, 0, 1, this.options.duration) : a, this.now = (this.end - this.start) * b + this.start, this.options.step && this.options.step.call(this.elem, this.now, this), c && c.set ? c.set(this) : C.propHooks._default.set(this), this
		}
	}, C.prototype.init.prototype = C.prototype, C.propHooks = {
		_default: {
			get: function(a) {
				var b;
				return null == a.elem[a.prop] || a.elem.style && null != a.elem.style[a.prop] ? (b = _.css(a.elem, a.prop, ""), b && "auto" !== b ? b : 0) : a.elem[a.prop]
			},
			set: function(a) {
				_.fx.step[a.prop] ? _.fx.step[a.prop](a) : a.elem.style && (null != a.elem.style[_.cssProps[a.prop]] || _.cssHooks[a.prop]) ? _.style(a.elem, a.prop, a.now + a.unit) : a.elem[a.prop] = a.now
			}
		}
	}, C.propHooks.scrollTop = C.propHooks.scrollLeft = {
		set: function(a) {
			a.elem.nodeType && a.elem.parentNode && (a.elem[a.prop] = a.now)
		}
	}, _.easing = {
		linear: function(a) {
			return a
		},
		swing: function(a) {
			return .5 - Math.cos(a * Math.PI) / 2
		}
	}, _.fx = C.prototype.init, _.fx.step = {};
	var Ya, Za, $a = /^(?:toggle|show|hide)$/,
		_a = new RegExp("^(?:([+-])=|)(" + va + ")([a-z%]*)$", "i"),
		ab = /queueHooks$/,
		bb = [G],
		cb = {
			"*": [function(a, b) {
				var c = this.createTween(a, b),
					d = c.cur(),
					e = _a.exec(b),
					f = e && e[3] || (_.cssNumber[a] ? "" : "px"),
					g = (_.cssNumber[a] || "px" !== f && +d) && _a.exec(_.css(c.elem, a)),
					h = 1,
					i = 20;
				if (g && g[3] !== f) {
					f = f || g[3], e = e || [], g = +d || 1;
					do h = h || ".5", g /= h, _.style(c.elem, a, g + f); while (h !== (h = c.cur() / d) && 1 !== h && --i)
				}
				return e && (g = c.start = +g || +d || 0, c.unit = f, c.end = e[1] ? g + (e[1] + 1) * e[2] : +e[2]), c
			}]
		};
	_.Animation = _.extend(I, {
			tweener: function(a, b) {
				_.isFunction(a) ? (b = a, a = ["*"]) : a = a.split(" ");
				for (var c, d = 0, e = a.length; e > d; d++) c = a[d], cb[c] = cb[c] || [], cb[c].unshift(b)
			},
			prefilter: function(a, b) {
				b ? bb.unshift(a) : bb.push(a)
			}
		}), _.speed = function(a, b, c) {
			var d = a && "object" == typeof a ? _.extend({}, a) : {
				complete: c || !c && b || _.isFunction(a) && a,
				duration: a,
				easing: c && b || b && !_.isFunction(b) && b
			};
			return d.duration = _.fx.off ? 0 : "number" == typeof d.duration ? d.duration : d.duration in _.fx.speeds ? _.fx.speeds[d.duration] : _.fx.speeds._default, (null == d.queue || d.queue === !0) && (d.queue = "fx"), d.old = d.complete, d.complete = function() {
				_.isFunction(d.old) && d.old.call(this), d.queue && _.dequeue(this, d.queue)
			}, d
		}, _.fn.extend({
			fadeTo: function(a, b, c, d) {
				return this.filter(xa).css("opacity", 0).show().end().animate({
					opacity: b
				}, a, c, d)
			},
			animate: function(a, b, c, d) {
				var e = _.isEmptyObject(a),
					f = _.speed(b, c, d),
					g = function() {
						var b = I(this, _.extend({}, a), f);
						(e || ra.get(this, "finish")) && b.stop(!0)
					};
				return g.finish = g, e || f.queue === !1 ? this.each(g) : this.queue(f.queue, g)
			},
			stop: function(a, b, c) {
				var d = function(a) {
					var b = a.stop;
					delete a.stop, b(c)
				};
				return "string" != typeof a && (c = b, b = a, a = void 0), b && a !== !1 && this.queue(a || "fx", []), this.each(function() {
					var b = !0,
						e = null != a && a + "queueHooks",
						f = _.timers,
						g = ra.get(this);
					if (e) g[e] && g[e].stop && d(g[e]);
					else
						for (e in g) g[e] && g[e].stop && ab.test(e) && d(g[e]);
					for (e = f.length; e--;) f[e].elem !== this || null != a && f[e].queue !== a || (f[e].anim.stop(c), b = !1, f.splice(e, 1));
					(b || !c) && _.dequeue(this, a)
				})
			},
			finish: function(a) {
				return a !== !1 && (a = a || "fx"), this.each(function() {
					var b, c = ra.get(this),
						d = c[a + "queue"],
						e = c[a + "queueHooks"],
						f = _.timers,
						g = d ? d.length : 0;
					for (c.finish = !0, _.queue(this, a, []), e && e.stop && e.stop.call(this, !0),
						b = f.length; b--;) f[b].elem === this && f[b].queue === a && (f[b].anim.stop(!0), f.splice(b, 1));
					for (b = 0; g > b; b++) d[b] && d[b].finish && d[b].finish.call(this);
					delete c.finish
				})
			}
		}), _.each(["toggle", "show", "hide"], function(a, b) {
			var c = _.fn[b];
			_.fn[b] = function(a, d, e) {
				return null == a || "boolean" == typeof a ? c.apply(this, arguments) : this.animate(E(b, !0), a, d, e)
			}
		}), _.each({
			slideDown: E("show"),
			slideUp: E("hide"),
			slideToggle: E("toggle"),
			fadeIn: {
				opacity: "show"
			},
			fadeOut: {
				opacity: "hide"
			},
			fadeToggle: {
				opacity: "toggle"
			}
		}, function(a, b) {
			_.fn[a] = function(a, c, d) {
				return this.animate(b, a, c, d)
			}
		}), _.timers = [], _.fx.tick = function() {
			var a, b = 0,
				c = _.timers;
			for (Ya = _.now(); b < c.length; b++) a = c[b], a() || c[b] !== a || c.splice(b--, 1);
			c.length || _.fx.stop(), Ya = void 0
		}, _.fx.timer = function(a) {
			_.timers.push(a), a() ? _.fx.start() : _.timers.pop()
		}, _.fx.interval = 13, _.fx.start = function() {
			Za || (Za = setInterval(_.fx.tick, _.fx.interval))
		}, _.fx.stop = function() {
			clearInterval(Za), Za = null
		}, _.fx.speeds = {
			slow: 600,
			fast: 200,
			_default: 400
		}, _.fn.delay = function(a, b) {
			return a = _.fx ? _.fx.speeds[a] || a : a, b = b || "fx", this.queue(b, function(b, c) {
				var d = setTimeout(b, a);
				c.stop = function() {
					clearTimeout(d)
				}
			})
		},
		function() {
			var a = Z.createElement("input"),
				b = Z.createElement("select"),
				c = b.appendChild(Z.createElement("option"));
			a.type = "checkbox", Y.checkOn = "" !== a.value, Y.optSelected = c.selected, b.disabled = !0, Y.optDisabled = !c.disabled, a = Z.createElement("input"), a.value = "t", a.type = "radio", Y.radioValue = "t" === a.value
		}();
	var db, eb, fb = _.expr.attrHandle;
	_.fn.extend({
		attr: function(a, b) {
			return qa(this, _.attr, a, b, arguments.length > 1)
		},
		removeAttr: function(a) {
			return this.each(function() {
				_.removeAttr(this, a)
			})
		}
	}), _.extend({
		attr: function(a, b, c) {
			var d, e, f = a.nodeType;
			return a && 3 !== f && 8 !== f && 2 !== f ? typeof a.getAttribute === za ? _.prop(a, b, c) : (1 === f && _.isXMLDoc(a) || (b = b.toLowerCase(), d = _.attrHooks[b] || (_.expr.match.bool.test(b) ? eb : db)), void 0 === c ? d && "get" in d && null !== (e = d.get(a, b)) ? e : (e = _.find.attr(a, b), null == e ? void 0 : e) : null !== c ? d && "set" in d && void 0 !== (e = d.set(a, c, b)) ? e : (a.setAttribute(b, c + ""), c) : void _.removeAttr(a, b)) : void 0
		},
		removeAttr: function(a, b) {
			var c, d, e = 0,
				f = b && b.match(na);
			if (f && 1 === a.nodeType)
				for (; c = f[e++];) d = _.propFix[c] || c, _.expr.match.bool.test(c) && (a[d] = !1), a.removeAttribute(c)
		},
		attrHooks: {
			type: {
				set: function(a, b) {
					if (!Y.radioValue && "radio" === b && _.nodeName(a, "input")) {
						var c = a.value;
						return a.setAttribute("type", b), c && (a.value = c), b
					}
				}
			}
		}
	}), eb = {
		set: function(a, b, c) {
			return b === !1 ? _.removeAttr(a, c) : a.setAttribute(c, c), c
		}
	}, _.each(_.expr.match.bool.source.match(/\w+/g), function(a, b) {
		var c = fb[b] || _.find.attr;
		fb[b] = function(a, b, d) {
			var e, f;
			return d || (f = fb[b], fb[b] = e, e = null != c(a, b, d) ? b.toLowerCase() : null, fb[b] = f), e
		}
	});
	var gb = /^(?:input|select|textarea|button)$/i;
	_.fn.extend({
		prop: function(a, b) {
			return qa(this, _.prop, a, b, arguments.length > 1)
		},
		removeProp: function(a) {
			return this.each(function() {
				delete this[_.propFix[a] || a]
			})
		}
	}), _.extend({
		propFix: {
			"for": "htmlFor",
			"class": "className"
		},
		prop: function(a, b, c) {
			var d, e, f, g = a.nodeType;
			return a && 3 !== g && 8 !== g && 2 !== g ? (f = 1 !== g || !_.isXMLDoc(a), f && (b = _.propFix[b] || b, e = _.propHooks[b]), void 0 !== c ? e && "set" in e && void 0 !== (d = e.set(a, c, b)) ? d : a[b] = c : e && "get" in e && null !== (d = e.get(a, b)) ? d : a[b]) : void 0
		},
		propHooks: {
			tabIndex: {
				get: function(a) {
					return a.hasAttribute("tabindex") || gb.test(a.nodeName) || a.href ? a.tabIndex : -1
				}
			}
		}
	}), Y.optSelected || (_.propHooks.selected = {
		get: function(a) {
			var b = a.parentNode;
			return b && b.parentNode && b.parentNode.selectedIndex, null
		}
	}), _.each(["tabIndex", "readOnly", "maxLength", "cellSpacing", "cellPadding", "rowSpan", "colSpan", "useMap", "frameBorder", "contentEditable"], function() {
		_.propFix[this.toLowerCase()] = this
	});
	var hb = /[\t\r\n\f]/g;
	_.fn.extend({
		addClass: function(a) {
			var b, c, d, e, f, g, h = "string" == typeof a && a,
				i = 0,
				j = this.length;
			if (_.isFunction(a)) return this.each(function(b) {
				_(this).addClass(a.call(this, b, this.className))
			});
			if (h)
				for (b = (a || "").match(na) || []; j > i; i++)
					if (c = this[i], d = 1 === c.nodeType && (c.className ? (" " + c.className + " ").replace(hb, " ") : " ")) {
						for (f = 0; e = b[f++];) d.indexOf(" " + e + " ") < 0 && (d += e + " ");
						g = _.trim(d), c.className !== g && (c.className = g)
					}
			return this
		},
		removeClass: function(a) {
			var b, c, d, e, f, g, h = 0 === arguments.length || "string" == typeof a && a,
				i = 0,
				j = this.length;
			if (_.isFunction(a)) return this.each(function(b) {
				_(this).removeClass(a.call(this, b, this.className))
			});
			if (h)
				for (b = (a || "").match(na) || []; j > i; i++)
					if (c = this[i], d = 1 === c.nodeType && (c.className ? (" " + c.className + " ").replace(hb, " ") : "")) {
						for (f = 0; e = b[f++];)
							for (; d.indexOf(" " + e + " ") >= 0;) d = d.replace(" " + e + " ", " ");
						g = a ? _.trim(d) : "", c.className !== g && (c.className = g)
					}
			return this
		},
		toggleClass: function(a, b) {
			var c = typeof a;
			return "boolean" == typeof b && "string" === c ? b ? this.addClass(a) : this.removeClass(a) : this.each(_.isFunction(a) ? function(c) {
				_(this).toggleClass(a.call(this, c, this.className, b), b)
			} : function() {
				if ("string" === c)
					for (var b, d = 0, e = _(this), f = a.match(na) || []; b = f[d++];) e.hasClass(b) ? e.removeClass(b) : e.addClass(b);
				else(c === za || "boolean" === c) && (this.className && ra.set(this, "__className__", this.className), this.className = this.className || a === !1 ? "" : ra.get(this, "__className__") || "")
			})
		},
		hasClass: function(a) {
			for (var b = " " + a + " ", c = 0, d = this.length; d > c; c++)
				if (1 === this[c].nodeType && (" " + this[c].className + " ").replace(hb, " ").indexOf(b) >= 0) return !0;
			return !1
		}
	});
	var ib = /\r/g;
	_.fn.extend({
		val: function(a) {
			var b, c, d, e = this[0];
			return arguments.length ? (d = _.isFunction(a), this.each(function(c) {
				var e;
				1 === this.nodeType && (e = d ? a.call(this, c, _(this).val()) : a, null == e ? e = "" : "number" == typeof e ? e += "" : _.isArray(e) && (e = _.map(e, function(a) {
					return null == a ? "" : a + ""
				})), b = _.valHooks[this.type] || _.valHooks[this.nodeName.toLowerCase()], b && "set" in b && void 0 !== b.set(this, e, "value") || (this.value = e))
			})) : e ? (b = _.valHooks[e.type] || _.valHooks[e.nodeName.toLowerCase()], b && "get" in b && void 0 !== (c = b.get(e, "value")) ? c : (c = e.value, "string" == typeof c ? c.replace(ib, "") : null == c ? "" : c)) : void 0
		}
	}), _.extend({
		valHooks: {
			option: {
				get: function(a) {
					var b = _.find.attr(a, "value");
					return null != b ? b : _.trim(_.text(a))
				}
			},
			select: {
				get: function(a) {
					for (var b, c, d = a.options, e = a.selectedIndex, f = "select-one" === a.type || 0 > e, g = f ? null : [], h = f ? e + 1 : d.length, i = 0 > e ? h : f ? e : 0; h > i; i++)
						if (c = d[i], !(!c.selected && i !== e || (Y.optDisabled ? c.disabled : null !== c.getAttribute("disabled")) || c.parentNode.disabled && _.nodeName(c.parentNode, "optgroup"))) {
							if (b = _(c).val(), f) return b;
							g.push(b)
						}
					return g
				},
				set: function(a, b) {
					for (var c, d, e = a.options, f = _.makeArray(b), g = e.length; g--;) d = e[g], (d.selected = _.inArray(d.value, f) >= 0) && (c = !0);
					return c || (a.selectedIndex = -1), f
				}
			}
		}
	}), _.each(["radio", "checkbox"], function() {
		_.valHooks[this] = {
			set: function(a, b) {
				return _.isArray(b) ? a.checked = _.inArray(_(a).val(), b) >= 0 : void 0
			}
		}, Y.checkOn || (_.valHooks[this].get = function(a) {
			return null === a.getAttribute("value") ? "on" : a.value
		})
	}), _.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "), function(a, b) {
		_.fn[b] = function(a, c) {
			return arguments.length > 0 ? this.on(b, null, a, c) : this.trigger(b)
		}
	}), _.fn.extend({
		hover: function(a, b) {
			return this.mouseenter(a).mouseleave(b || a)
		},
		bind: function(a, b, c) {
			return this.on(a, null, b, c)
		},
		unbind: function(a, b) {
			return this.off(a, null, b)
		},
		delegate: function(a, b, c, d) {
			return this.on(b, a, c, d)
		},
		undelegate: function(a, b, c) {
			return 1 === arguments.length ? this.off(a, "**") : this.off(b, a || "**", c)
		}
	});
	var jb = _.now(),
		kb = /\?/;
	_.parseJSON = function(a) {
		return JSON.parse(a + "")
	}, _.parseXML = function(a) {
		var b, c;
		if (!a || "string" != typeof a) return null;
		try {
			c = new DOMParser, b = c.parseFromString(a, "text/xml")
		} catch (d) {
			b = void 0
		}
		return (!b || b.getElementsByTagName("parsererror").length) && _.error("Invalid XML: " + a), b
	};
	var lb = /#.*$/,
		mb = /([?&])_=[^&]*/,
		nb = /^(.*?):[ \t]*([^\r\n]*)$/gm,
		ob = /^(?:about|app|app-storage|.+-extension|file|res|widget):$/,
		pb = /^(?:GET|HEAD)$/,
		qb = /^\/\//,
		rb = /^([\w.+-]+:)(?:\/\/(?:[^\/?#]*@|)([^\/?#:]*)(?::(\d+)|)|)/,
		sb = {},
		tb = {},
		ub = "*/".concat("*"),
		vb = a.location.href,
		wb = rb.exec(vb.toLowerCase()) || [];
	_.extend({
		active: 0,
		lastModified: {},
		etag: {},
		ajaxSettings: {
			url: vb,
			type: "GET",
			isLocal: ob.test(wb[1]),
			global: !0,
			processData: !0,
			async: !0,
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			accepts: {
				"*": ub,
				text: "text/plain",
				html: "text/html",
				xml: "application/xml, text/xml",
				json: "application/json, text/javascript"
			},
			contents: {
				xml: /xml/,
				html: /html/,
				json: /json/
			},
			responseFields: {
				xml: "responseXML",
				text: "responseText",
				json: "responseJSON"
			},
			converters: {
				"* text": String,
				"text html": !0,
				"text json": _.parseJSON,
				"text xml": _.parseXML
			},
			flatOptions: {
				url: !0,
				context: !0
			}
		},
		ajaxSetup: function(a, b) {
			return b ? L(L(a, _.ajaxSettings), b) : L(_.ajaxSettings, a)
		},
		ajaxPrefilter: J(sb),
		ajaxTransport: J(tb),
		ajax: function(a, b) {
			function c(a, b, c, g) {
				var i, k, r, s, u, w = b;
				2 !== t && (t = 2, h && clearTimeout(h), d = void 0, f = g || "", v.readyState = a > 0 ? 4 : 0, i = a >= 200 && 300 > a || 304 === a, c && (s = M(l, v, c)), s = N(l, s, v, i), i ? (l.ifModified && (u = v.getResponseHeader("Last-Modified"), u && (_.lastModified[e] = u), u = v.getResponseHeader("etag"), u && (_.etag[e] = u)), 204 === a || "HEAD" === l.type ? w = "nocontent" : 304 === a ? w = "notmodified" : (w = s.state, k = s.data, r = s.error, i = !r)) : (r = w, (a || !w) && (w = "error", 0 > a && (a = 0))), v.status = a, v.statusText = (b || w) + "", i ? o.resolveWith(m, [k, w, v]) : o.rejectWith(m, [v, w, r]), v.statusCode(q), q = void 0, j && n.trigger(i ? "ajaxSuccess" : "ajaxError", [v, l, i ? k : r]), p.fireWith(m, [v, w]), j && (n.trigger("ajaxComplete", [v, l]), --_.active || _.event.trigger("ajaxStop")))
			}
			"object" == typeof a && (b = a, a = void 0), b = b || {};
			var d, e, f, g, h, i, j, k, l = _.ajaxSetup({}, b),
				m = l.context || l,
				n = l.context && (m.nodeType || m.jquery) ? _(m) : _.event,
				o = _.Deferred(),
				p = _.Callbacks("once memory"),
				q = l.statusCode || {},
				r = {},
				s = {},
				t = 0,
				u = "canceled",
				v = {
					readyState: 0,
					getResponseHeader: function(a) {
						var b;
						if (2 === t) {
							if (!g)
								for (g = {}; b = nb.exec(f);) g[b[1].toLowerCase()] = b[2];
							b = g[a.toLowerCase()]
						}
						return null == b ? null : b
					},
					getAllResponseHeaders: function() {
						return 2 === t ? f : null
					},
					setRequestHeader: function(a, b) {
						var c = a.toLowerCase();
						return t || (a = s[c] = s[c] || a, r[a] = b), this
					},
					overrideMimeType: function(a) {
						return t || (l.mimeType = a), this
					},
					statusCode: function(a) {
						var b;
						if (a)
							if (2 > t)
								for (b in a) q[b] = [q[b], a[b]];
							else v.always(a[v.status]);
						return this
					},
					abort: function(a) {
						var b = a || u;
						return d && d.abort(b), c(0, b), this
					}
				};
			if (o.promise(v).complete = p.add, v.success = v.done, v.error = v.fail, l.url = ((a || l.url || vb) + "").replace(lb, "").replace(qb, wb[1] + "//"), l.type = b.method || b.type || l.method || l.type, l.dataTypes = _.trim(l.dataType || "*").toLowerCase().match(na) || [""], null == l.crossDomain && (i = rb.exec(l.url.toLowerCase()), l.crossDomain = !(!i || i[1] === wb[1] && i[2] === wb[2] && (i[3] || ("http:" === i[1] ? "80" : "443")) === (wb[3] || ("http:" === wb[1] ? "80" : "443")))), l.data && l.processData && "string" != typeof l.data && (l.data = _.param(l.data, l.traditional)), K(sb, l, b, v), 2 === t) return v;
			j = _.event && l.global, j && 0 === _.active++ && _.event.trigger("ajaxStart"), l.type = l.type.toUpperCase(), l.hasContent = !pb.test(l.type), e = l.url, l.hasContent || (l.data && (e = l.url += (kb.test(e) ? "&" : "?") + l.data, delete l.data), l.cache === !1 && (l.url = mb.test(e) ? e.replace(mb, "$1_=" + jb++) : e + (kb.test(e) ? "&" : "?") + "_=" + jb++)), l.ifModified && (_.lastModified[e] && v.setRequestHeader("If-Modified-Since", _.lastModified[e]), _.etag[e] && v.setRequestHeader("If-None-Match", _.etag[e])), (l.data && l.hasContent && l.contentType !== !1 || b.contentType) && v.setRequestHeader("Content-Type", l.contentType), v.setRequestHeader("Accept", l.dataTypes[0] && l.accepts[l.dataTypes[0]] ? l.accepts[l.dataTypes[0]] + ("*" !== l.dataTypes[0] ? ", " + ub + "; q=0.01" : "") : l.accepts["*"]);
			for (k in l.headers) v.setRequestHeader(k, l.headers[k]);
			if (l.beforeSend && (l.beforeSend.call(m, v, l) === !1 || 2 === t)) return v.abort();
			u = "abort";
			for (k in {
					success: 1,
					error: 1,
					complete: 1
				}) v[k](l[k]);
			if (d = K(tb, l, b, v)) {
				v.readyState = 1, j && n.trigger("ajaxSend", [v, l]), l.async && l.timeout > 0 && (h = setTimeout(function() {
					v.abort("timeout")
				}, l.timeout));
				try {
					t = 1, d.send(r, c)
				} catch (w) {
					if (!(2 > t)) throw w;
					c(-1, w)
				}
			} else c(-1, "No Transport");
			return v
		},
		getJSON: function(a, b, c) {
			return _.get(a, b, c, "json")
		},
		getScript: function(a, b) {
			return _.get(a, void 0, b, "script")
		}
	}), _.each(["get", "post"], function(a, b) {
		_[b] = function(a, c, d, e) {
			return _.isFunction(c) && (e = e || d, d = c, c = void 0), _.ajax({
				url: a,
				type: b,
				dataType: e,
				data: c,
				success: d
			})
		}
	}), _._evalUrl = function(a) {
		return _.ajax({
			url: a,
			type: "GET",
			dataType: "script",
			async: !1,
			global: !1,
			"throws": !0
		})
	}, _.fn.extend({
		wrapAll: function(a) {
			var b;
			return _.isFunction(a) ? this.each(function(b) {
				_(this).wrapAll(a.call(this, b))
			}) : (this[0] && (b = _(a, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && b.insertBefore(this[0]), b.map(function() {
				for (var a = this; a.firstElementChild;) a = a.firstElementChild;
				return a
			}).append(this)), this)
		},
		wrapInner: function(a) {
			return this.each(_.isFunction(a) ? function(b) {
				_(this).wrapInner(a.call(this, b))
			} : function() {
				var b = _(this),
					c = b.contents();
				c.length ? c.wrapAll(a) : b.append(a)
			})
		},
		wrap: function(a) {
			var b = _.isFunction(a);
			return this.each(function(c) {
				_(this).wrapAll(b ? a.call(this, c) : a)
			})
		},
		unwrap: function() {
			return this.parent().each(function() {
				_.nodeName(this, "body") || _(this).replaceWith(this.childNodes)
			}).end()
		}
	}), _.expr.filters.hidden = function(a) {
		return a.offsetWidth <= 0 && a.offsetHeight <= 0
	}, _.expr.filters.visible = function(a) {
		return !_.expr.filters.hidden(a)
	};
	var xb = /%20/g,
		yb = /\[\]$/,
		zb = /\r?\n/g,
		Ab = /^(?:submit|button|image|reset|file)$/i,
		Bb = /^(?:input|select|textarea|keygen)/i;
	_.param = function(a, b) {
		var c, d = [],
			e = function(a, b) {
				b = _.isFunction(b) ? b() : null == b ? "" : b, d[d.length] = encodeURIComponent(a) + "=" + encodeURIComponent(b)
			};
		if (void 0 === b && (b = _.ajaxSettings && _.ajaxSettings.traditional), _.isArray(a) || a.jquery && !_.isPlainObject(a)) _.each(a, function() {
			e(this.name, this.value)
		});
		else
			for (c in a) O(c, a[c], b, e);
		return d.join("&").replace(xb, "+")
	}, _.fn.extend({
		serialize: function() {
			return _.param(this.serializeArray())
		},
		serializeArray: function() {
			return this.map(function() {
				var a = _.prop(this, "elements");
				return a ? _.makeArray(a) : this
			}).filter(function() {
				var a = this.type;
				return this.name && !_(this).is(":disabled") && Bb.test(this.nodeName) && !Ab.test(a) && (this.checked || !ya.test(a))
			}).map(function(a, b) {
				var c = _(this).val();
				return null == c ? null : _.isArray(c) ? _.map(c, function(a) {
					return {
						name: b.name,
						value: a.replace(zb, "\r\n")
					}
				}) : {
					name: b.name,
					value: c.replace(zb, "\r\n")
				}
			}).get()
		}
	}), _.ajaxSettings.xhr = function() {
		try {
			return new XMLHttpRequest
		} catch (a) {}
	};
	var Cb = 0,
		Db = {},
		Eb = {
			0: 200,
			1223: 204
		},
		Fb = _.ajaxSettings.xhr();
	a.attachEvent && a.attachEvent("onunload", function() {
		for (var a in Db) Db[a]()
	}), Y.cors = !!Fb && "withCredentials" in Fb, Y.ajax = Fb = !!Fb, _.ajaxTransport(function(a) {
		var b;
		return Y.cors || Fb && !a.crossDomain ? {
			send: function(c, d) {
				var e, f = a.xhr(),
					g = ++Cb;
				if (f.open(a.type, a.url, a.async, a.username, a.password), a.xhrFields)
					for (e in a.xhrFields) f[e] = a.xhrFields[e];
				a.mimeType && f.overrideMimeType && f.overrideMimeType(a.mimeType), a.crossDomain || c["X-Requested-With"] || (c["X-Requested-With"] = "XMLHttpRequest");
				for (e in c) f.setRequestHeader(e, c[e]);
				b = function(a) {
					return function() {
						b && (delete Db[g], b = f.onload = f.onerror = null, "abort" === a ? f.abort() : "error" === a ? d(f.status, f.statusText) : d(Eb[f.status] || f.status, f.statusText, "string" == typeof f.responseText ? {
							text: f.responseText
						} : void 0, f.getAllResponseHeaders()))
					}
				}, f.onload = b(), f.onerror = b("error"), b = Db[g] = b("abort");
				try {
					f.send(a.hasContent && a.data || null)
				} catch (h) {
					if (b) throw h
				}
			},
			abort: function() {
				b && b()
			}
		} : void 0
	}), _.ajaxSetup({
		accepts: {
			script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
		},
		contents: {
			script: /(?:java|ecma)script/
		},
		converters: {
			"text script": function(a) {
				return _.globalEval(a), a
			}
		}
	}), _.ajaxPrefilter("script", function(a) {
		void 0 === a.cache && (a.cache = !1), a.crossDomain && (a.type = "GET")
	}), _.ajaxTransport("script", function(a) {
		if (a.crossDomain) {
			var b, c;
			return {
				send: function(d, e) {
					b = _("<script>").prop({
						async: !0,
						charset: a.scriptCharset,
						src: a.url
					}).on("load error", c = function(a) {
						b.remove(), c = null, a && e("error" === a.type ? 404 : 200, a.type)
					}), Z.head.appendChild(b[0])
				},
				abort: function() {
					c && c()
				}
			}
		}
	});
	var Gb = [],
		Hb = /(=)\?(?=&|$)|\?\?/;
	_.ajaxSetup({
		jsonp: "callback",
		jsonpCallback: function() {
			var a = Gb.pop() || _.expando + "_" + jb++;
			return this[a] = !0, a
		}
	}), _.ajaxPrefilter("json jsonp", function(b, c, d) {
		var e, f, g, h = b.jsonp !== !1 && (Hb.test(b.url) ? "url" : "string" == typeof b.data && !(b.contentType || "").indexOf("application/x-www-form-urlencoded") && Hb.test(b.data) && "data");
		return h || "jsonp" === b.dataTypes[0] ? (e = b.jsonpCallback = _.isFunction(b.jsonpCallback) ? b.jsonpCallback() : b.jsonpCallback, h ? b[h] = b[h].replace(Hb, "$1" + e) : b.jsonp !== !1 && (b.url += (kb.test(b.url) ? "&" : "?") + b.jsonp + "=" + e), b.converters["script json"] = function() {
			return g || _.error(e + " was not called"), g[0]
		}, b.dataTypes[0] = "json", f = a[e], a[e] = function() {
			g = arguments
		}, d.always(function() {
			a[e] = f, b[e] && (b.jsonpCallback = c.jsonpCallback, Gb.push(e)), g && _.isFunction(f) && f(g[0]), g = f = void 0
		}), "script") : void 0
	}), _.parseHTML = function(a, b, c) {
		if (!a || "string" != typeof a) return null;
		"boolean" == typeof b && (c = b, b = !1), b = b || Z;
		var d = ga.exec(a),
			e = !c && [];
		return d ? [b.createElement(d[1])] : (d = _.buildFragment([a], b, e), e && e.length && _(e).remove(), _.merge([], d.childNodes))
	};
	var Ib = _.fn.load;
	_.fn.load = function(a, b, c) {
		if ("string" != typeof a && Ib) return Ib.apply(this, arguments);
		var d, e, f, g = this,
			h = a.indexOf(" ");
		return h >= 0 && (d = _.trim(a.slice(h)), a = a.slice(0, h)), _.isFunction(b) ? (c = b, b = void 0) : b && "object" == typeof b && (e = "POST"), g.length > 0 && _.ajax({
			url: a,
			type: e,
			dataType: "html",
			data: b
		}).done(function(a) {
			f = arguments, g.html(d ? _("<div>").append(_.parseHTML(a)).find(d) : a)
		}).complete(c && function(a, b) {
			g.each(c, f || [a.responseText, b, a])
		}), this
	}, _.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], function(a, b) {
		_.fn[b] = function(a) {
			return this.on(b, a)
		}
	}), _.expr.filters.animated = function(a) {
		return _.grep(_.timers, function(b) {
			return a === b.elem
		}).length
	};
	var Jb = a.document.documentElement;
	_.offset = {
		setOffset: function(a, b, c) {
			var d, e, f, g, h, i, j, k = _.css(a, "position"),
				l = _(a),
				m = {};
			"static" === k && (a.style.position = "relative"), h = l.offset(), f = _.css(a, "top"), i = _.css(a, "left"), j = ("absolute" === k || "fixed" === k) && (f + i).indexOf("auto") > -1, j ? (d = l.position(), g = d.top, e = d.left) : (g = parseFloat(f) || 0, e = parseFloat(i) || 0), _.isFunction(b) && (b = b.call(a, c, h)), null != b.top && (m.top = b.top - h.top + g), null != b.left && (m.left = b.left - h.left + e), "using" in b ? b.using.call(a, m) : l.css(m)
		}
	}, _.fn.extend({
		offset: function(a) {
			if (arguments.length) return void 0 === a ? this : this.each(function(b) {
				_.offset.setOffset(this, a, b)
			});
			var b, c, d = this[0],
				e = {
					top: 0,
					left: 0
				},
				f = d && d.ownerDocument;
			return f ? (b = f.documentElement, _.contains(b, d) ? (typeof d.getBoundingClientRect !== za && (e = d.getBoundingClientRect()), c = P(f), {
				top: e.top + c.pageYOffset - b.clientTop,
				left: e.left + c.pageXOffset - b.clientLeft
			}) : e) : void 0
		},
		position: function() {
			if (this[0]) {
				var a, b, c = this[0],
					d = {
						top: 0,
						left: 0
					};
				return "fixed" === _.css(c, "position") ? b = c.getBoundingClientRect() : (a = this.offsetParent(), b = this.offset(), _.nodeName(a[0], "html") || (d = a.offset()), d.top += _.css(a[0], "borderTopWidth", !0), d.left += _.css(a[0], "borderLeftWidth", !0)), {
					top: b.top - d.top - _.css(c, "marginTop", !0),
					left: b.left - d.left - _.css(c, "marginLeft", !0)
				}
			}
		},
		offsetParent: function() {
			return this.map(function() {
				for (var a = this.offsetParent || Jb; a && !_.nodeName(a, "html") && "static" === _.css(a, "position");) a = a.offsetParent;
				return a || Jb
			})
		}
	}), _.each({
		scrollLeft: "pageXOffset",
		scrollTop: "pageYOffset"
	}, function(b, c) {
		var d = "pageYOffset" === c;
		_.fn[b] = function(e) {
			return qa(this, function(b, e, f) {
				var g = P(b);
				return void 0 === f ? g ? g[c] : b[e] : void(g ? g.scrollTo(d ? a.pageXOffset : f, d ? f : a.pageYOffset) : b[e] = f)
			}, b, e, arguments.length, null)
		}
	}), _.each(["top", "left"], function(a, b) {
		_.cssHooks[b] = w(Y.pixelPosition, function(a, c) {
			return c ? (c = v(a, b), Qa.test(c) ? _(a).position()[b] + "px" : c) : void 0
		})
	}), _.each({
		Height: "height",
		Width: "width"
	}, function(a, b) {
		_.each({
			padding: "inner" + a,
			content: b,
			"": "outer" + a
		}, function(c, d) {
			_.fn[d] = function(d, e) {
				var f = arguments.length && (c || "boolean" != typeof d),
					g = c || (d === !0 || e === !0 ? "margin" : "border");
				return qa(this, function(b, c, d) {
					var e;
					return _.isWindow(b) ? b.document.documentElement["client" + a] : 9 === b.nodeType ? (e = b.documentElement, Math.max(b.body["scroll" + a], e["scroll" + a], b.body["offset" + a], e["offset" + a], e["client" + a])) : void 0 === d ? _.css(b, c, g) : _.style(b, c, d, g)
				}, b, f ? d : void 0, f, null)
			}
		})
	}), _.fn.size = function() {
		return this.length
	}, _.fn.andSelf = _.fn.addBack, "function" == typeof define && define.amd && define("jquery", [], function() {
		return _
	});
	var Kb = a.jQuery,
		Lb = a.$;
	return _.noConflict = function(b) {
		return a.$ === _ && (a.$ = Lb), b && a.jQuery === _ && (a.jQuery = Kb), _
	}, typeof b === za && (a.jQuery = a.$ = _), _
}), self = "undefined" != typeof window ? window : "undefined" != typeof WorkerGlobalScope && self instanceof WorkerGlobalScope ? self : {};
var Prism = function() {
	var a = /\blang(?:uage)?-(?!\*)(\w+)\b/i,
		b = self.Prism = {
			util: {
				encode: function(a) {
					return a instanceof c ? new c(a.type, b.util.encode(a.content), a.alias) : "Array" === b.util.type(a) ? a.map(b.util.encode) : a.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/\u00a0/g, " ")
				},
				type: function(a) {
					return Object.prototype.toString.call(a).match(/\[object (\w+)\]/)[1]
				},
				clone: function(a) {
					var c = b.util.type(a);
					switch (c) {
						case "Object":
							var d = {};
							for (var e in a) a.hasOwnProperty(e) && (d[e] = b.util.clone(a[e]));
							return d;
						case "Array":
							return a.map(function(a) {
								return b.util.clone(a)
							})
					}
					return a
				}
			},
			languages: {
				extend: function(a, c) {
					var d = b.util.clone(b.languages[a]);
					for (var e in c) d[e] = c[e];
					return d
				},
				insertBefore: function(a, c, d, e) {
					e = e || b.languages;
					var f = e[a];
					if (2 == arguments.length) {
						d = arguments[1];
						for (var g in d) d.hasOwnProperty(g) && (f[g] = d[g]);
						return f
					}
					var h = {};
					for (var i in f)
						if (f.hasOwnProperty(i)) {
							if (i == c)
								for (var g in d) d.hasOwnProperty(g) && (h[g] = d[g]);
							h[i] = f[i]
						}
					return b.languages.DFS(b.languages, function(b, c) {
						c === e[a] && b != a && (this[b] = h)
					}), e[a] = h
				},
				DFS: function(a, c, d) {
					for (var e in a) a.hasOwnProperty(e) && (c.call(a, e, a[e], d || e), "Object" === b.util.type(a[e]) ? b.languages.DFS(a[e], c) : "Array" === b.util.type(a[e]) && b.languages.DFS(a[e], c, e))
				}
			},
			highlightAll: function(a, c) {
				for (var d, e = document.querySelectorAll('code[class*="language-"], [class*="language-"] code, code[class*="lang-"], [class*="lang-"] code'), f = 0; d = e[f++];) b.highlightElement(d, a === !0, c)
			},
			highlightElement: function(d, e, f) {
				for (var g, h, i = d; i && !a.test(i.className);) i = i.parentNode;
				if (i && (g = (i.className.match(a) || [, ""])[1], h = b.languages[g]), h) {
					d.className = d.className.replace(a, "").replace(/\s+/g, " ") + " language-" + g, i = d.parentNode, /pre/i.test(i.nodeName) && (i.className = i.className.replace(a, "").replace(/\s+/g, " ") + " language-" + g);
					var j = d.textContent;
					if (j) {
						j = j.replace(/^(?:\r?\n|\r)/, "");
						var k = {
							element: d,
							language: g,
							grammar: h,
							code: j
						};
						if (b.hooks.run("before-highlight", k), e && self.Worker) {
							var l = new Worker(b.filename);
							l.onmessage = function(a) {
								k.highlightedCode = c.stringify(JSON.parse(a.data), g), b.hooks.run("before-insert", k), k.element.innerHTML = k.highlightedCode, f && f.call(k.element), b.hooks.run("after-highlight", k)
							}, l.postMessage(JSON.stringify({
								language: k.language,
								code: k.code
							}))
						} else k.highlightedCode = b.highlight(k.code, k.grammar, k.language), b.hooks.run("before-insert", k), k.element.innerHTML = k.highlightedCode, f && f.call(d), b.hooks.run("after-highlight", k)
					}
				}
			},
			highlight: function(a, d, e) {
				var f = b.tokenize(a, d);
				return c.stringify(b.util.encode(f), e)
			},
			tokenize: function(a, c) {
				var d = b.Token,
					e = [a],
					f = c.rest;
				if (f) {
					for (var g in f) c[g] = f[g];
					delete c.rest
				}
				a: for (var g in c)
					if (c.hasOwnProperty(g) && c[g]) {
						var h = c[g];
						h = "Array" === b.util.type(h) ? h : [h];
						for (var i = 0; i < h.length; ++i) {
							var j = h[i],
								k = j.inside,
								l = !!j.lookbehind,
								m = 0,
								n = j.alias;
							j = j.pattern || j;
							for (var o = 0; o < e.length; o++) {
								var p = e[o];
								if (e.length > a.length) break a;
								if (!(p instanceof d)) {
									j.lastIndex = 0;
									var q = j.exec(p);
									if (q) {
										l && (m = q[1].length);
										var r = q.index - 1 + m,
											q = q[0].slice(m),
											s = q.length,
											t = r + s,
											u = p.slice(0, r + 1),
											v = p.slice(t + 1),
											w = [o, 1];
										u && w.push(u);
										var x = new d(g, k ? b.tokenize(q, k) : q, n);
										w.push(x), v && w.push(v), Array.prototype.splice.apply(e, w)
									}
								}
							}
						}
					}
				return e
			},
			hooks: {
				all: {},
				add: function(a, c) {
					var d = b.hooks.all;
					d[a] = d[a] || [], d[a].push(c)
				},
				run: function(a, c) {
					var d = b.hooks.all[a];
					if (d && d.length)
						for (var e, f = 0; e = d[f++];) e(c)
				}
			}
		},
		c = b.Token = function(a, b, c) {
			this.type = a, this.content = b, this.alias = c
		};
	if (c.stringify = function(a, d, e) {
			if ("string" == typeof a) return a;
			if ("Array" === b.util.type(a)) return a.map(function(b) {
				return c.stringify(b, d, a)
			}).join("");
			var f = {
				type: a.type,
				content: c.stringify(a.content, d, e),
				tag: "span",
				classes: ["token", a.type],
				attributes: {},
				language: d,
				parent: e
			};
			if ("comment" == f.type && (f.attributes.spellcheck = "true"), a.alias) {
				var g = "Array" === b.util.type(a.alias) ? a.alias : [a.alias];
				Array.prototype.push.apply(f.classes, g)
			}
			b.hooks.run("wrap", f);
			var h = "";
			for (var i in f.attributes) h += i + '="' + (f.attributes[i] || "") + '"';
			return "<" + f.tag + ' class="' + f.classes.join(" ") + '" ' + h + ">" + f.content + "</" + f.tag + ">"
		}, !self.document) return self.addEventListener ? (self.addEventListener("message", function(a) {
		var c = JSON.parse(a.data),
			d = c.language,
			e = c.code;
		self.postMessage(JSON.stringify(b.util.encode(b.tokenize(e, b.languages[d])))), self.close()
	}, !1), self.Prism) : self.Prism;
	var d = document.getElementsByTagName("script");
	return d = d[d.length - 1], d && (b.filename = d.src, document.addEventListener && !d.hasAttribute("data-manual") && document.addEventListener("DOMContentLoaded", b.highlightAll)), self.Prism
}();
"undefined" != typeof module && module.exports && (module.exports = Prism), Prism.languages.markup = {
		comment: /<!--[\w\W]*?-->/,
		prolog: /<\?.+?\?>/,
		doctype: /<!DOCTYPE.+?>/,
		cdata: /<!\[CDATA\[[\w\W]*?]]>/i,
		tag: {
			pattern: /<\/?[\w:-]+\s*(?:\s+[\w:-]+(?:=(?:("|')(\\?[\w\W])*?\1|[^\s'">=]+))?\s*)*\/?>/i,
			inside: {
				tag: {
					pattern: /^<\/?[\w:-]+/i,
					inside: {
						punctuation: /^<\/?/,
						namespace: /^[\w-]+?:/
					}
				},
				"attr-value": {
					pattern: /=(?:('|")[\w\W]*?(\1)|[^\s>]+)/i,
					inside: {
						punctuation: /=|>|"/
					}
				},
				punctuation: /\/?>/,
				"attr-name": {
					pattern: /[\w:-]+/,
					inside: {
						namespace: /^[\w-]+?:/
					}
				}
			}
		},
		entity: /&#?[\da-z]{1,8};/i
	}, Prism.hooks.add("wrap", function(a) {
		"entity" === a.type && (a.attributes.title = a.content.replace(/&amp;/, "&"))
	}), Prism.languages.css = {
		comment: /\/\*[\w\W]*?\*\//,
		atrule: {
			pattern: /@[\w-]+?.*?(;|(?=\s*\{))/i,
			inside: {
				punctuation: /[;:]/
			}
		},
		url: /url\((?:(["'])(\\\n|\\?.)*?\1|.*?)\)/i,
		selector: /[^\{\}\s][^\{\};]*(?=\s*\{)/,
		string: /("|')(\\\n|\\?.)*?\1/,
		property: /(\b|\B)[\w-]+(?=\s*:)/i,
		important: /\B!important\b/i,
		punctuation: /[\{\};:]/,
		"function": /[-a-z0-9]+(?=\()/i
	}, Prism.languages.markup && (Prism.languages.insertBefore("markup", "tag", {
		style: {
			pattern: /<style[\w\W]*?>[\w\W]*?<\/style>/i,
			inside: {
				tag: {
					pattern: /<style[\w\W]*?>|<\/style>/i,
					inside: Prism.languages.markup.tag.inside
				},
				rest: Prism.languages.css
			},
			alias: "language-css"
		}
	}), Prism.languages.insertBefore("inside", "attr-value", {
		"style-attr": {
			pattern: /\s*style=("|').*?\1/i,
			inside: {
				"attr-name": {
					pattern: /^\s*style/i,
					inside: Prism.languages.markup.tag.inside
				},
				punctuation: /^\s*=\s*['"]|['"]\s*$/,
				"attr-value": {
					pattern: /.+/i,
					inside: Prism.languages.css
				}
			},
			alias: "language-css"
		}
	}, Prism.languages.markup.tag)), Prism.languages.clike = {
		comment: [{
			pattern: /(^|[^\\])\/\*[\w\W]*?\*\//,
			lookbehind: !0
		}, {
			pattern: /(^|[^\\:])\/\/.+/,
			lookbehind: !0
		}],
		string: /("|')(\\\n|\\?.)*?\1/,
		"class-name": {
			pattern: /((?:(?:class|interface|extends|implements|trait|instanceof|new)\s+)|(?:catch\s+\())[a-z0-9_\.\\]+/i,
			lookbehind: !0,
			inside: {
				punctuation: /(\.|\\)/
			}
		},
		keyword: /\b(if|else|while|do|for|return|in|instanceof|function|new|try|throw|catch|finally|null|break|continue)\b/,
		"boolean": /\b(true|false)\b/,
		"function": {
			pattern: /[a-z0-9_]+\(/i,
			inside: {
				punctuation: /\(/
			}
		},
		number: /\b-?(0x[\dA-Fa-f]+|\d*\.?\d+([Ee]-?\d+)?)\b/,
		operator: /[-+]{1,2}|!|<=?|>=?|={1,3}|&{1,2}|\|?\||\?|\*|\/|~|\^|%/,
		ignore: /&(lt|gt|amp);/i,
		punctuation: /[{}[\];(),.:]/
	}, Prism.languages.javascript = Prism.languages.extend("clike", {
		keyword: /\b(break|case|catch|class|const|continue|debugger|default|delete|do|else|enum|export|extends|false|finally|for|function|get|if|implements|import|in|instanceof|interface|let|new|null|package|private|protected|public|return|set|static|super|switch|this|throw|true|try|typeof|var|void|while|with|yield)\b/,
		number: /\b-?(0x[\dA-Fa-f]+|\d*\.?\d+([Ee][+-]?\d+)?|NaN|-?Infinity)\b/,
		"function": /(?!\d)[a-z0-9_$]+(?=\()/i
	}), Prism.languages.insertBefore("javascript", "keyword", {
		regex: {
			pattern: /(^|[^\/])\/(?!\/)(\[.+?]|\\.|[^\/\r\n])+\/[gim]{0,3}(?=\s*($|[\r\n,.;})]))/,
			lookbehind: !0
		}
	}), Prism.languages.markup && Prism.languages.insertBefore("markup", "tag", {
		script: {
			pattern: /<script[\w\W]*?>[\w\W]*?<\/script>/i,
			inside: {
				tag: {
					pattern: /<script[\w\W]*?>|<\/script>/i,
					inside: Prism.languages.markup.tag.inside
				},
				rest: Prism.languages.javascript
			},
			alias: "language-javascript"
		}
	}),
	function() {
		self.Prism && self.document && document.querySelector && (self.Prism.fileHighlight = function() {
			var a = {
				js: "javascript",
				html: "markup",
				svg: "markup",
				xml: "markup",
				py: "python",
				rb: "ruby",
				ps1: "powershell",
				psm1: "powershell"
			};
			Array.prototype.slice.call(document.querySelectorAll("pre[data-src]")).forEach(function(b) {
				var c = b.getAttribute("data-src"),
					d = (c.match(/\.(\w+)$/) || [, ""])[1],
					e = a[d] || d,
					f = document.createElement("code");
				f.className = "language-" + e, b.textContent = "", f.textContent = "Loading…", b.appendChild(f);
				var g = new XMLHttpRequest;
				g.open("GET", c, !0), g.onreadystatechange = function() {
					4 == g.readyState && (g.status < 400 && g.responseText ? (f.textContent = g.responseText, Prism.highlightElement(f)) : f.textContent = g.status >= 400 ? "✖ Error " + g.status + " while fetching file: " + g.statusText : "✖ Error: File does not exist or is empty")
				}, g.send(null)
			})
		}, self.Prism.fileHighlight())
	}(); /*! formstone v0.8.21 [core.js] 2015-10-10 | MIT License | formstone.it */
var Formstone = window.Formstone = function(a, b, c) {
	"use strict";

	function d(a) {
		m.Plugins[a].initialized || (m.Plugins[a].methods._setup.call(c), m.Plugins[a].initialized = !0)
	}

	function e(a, b, c, d) {
		var e, f = {
			raw: {}
		};
		d = d || {};
		for (e in d) d.hasOwnProperty(e) && ("classes" === a ? (f.raw[d[e]] = b + "-" + d[e], f[d[e]] = "." + b + "-" + d[e]) : (f.raw[e] = d[e], f[e] = d[e] + "." + b));
		for (e in c) c.hasOwnProperty(e) && ("classes" === a ? (f.raw[e] = c[e].replace(/{ns}/g, b), f[e] = c[e].replace(/{ns}/g, "." + b)) : (f.raw[e] = c[e].replace(/.{ns}/g, ""), f[e] = c[e].replace(/{ns}/g, b)));
		return f
	}

	function f() {
		var a, b = {
				transition: "transitionend",
				MozTransition: "transitionend",
				OTransition: "otransitionend",
				WebkitTransition: "webkitTransitionEnd"
			},
			d = ["transition", "-webkit-transition"],
			e = {
				transform: "transform",
				MozTransform: "-moz-transform",
				OTransform: "-o-transform",
				msTransform: "-ms-transform",
				webkitTransform: "-webkit-transform"
			},
			f = "transitionend",
			g = "",
			h = "",
			i = c.createElement("div");
		for (a in b)
			if (b.hasOwnProperty(a) && a in i.style) {
				f = b[a], m.support.transition = !0;
				break
			}
		p.transitionEnd = f + ".{ns}";
		for (a in d)
			if (d.hasOwnProperty(a) && d[a] in i.style) {
				g = d[a];
				break
			}
		m.transition = g;
		for (a in e)
			if (e.hasOwnProperty(a) && e[a] in i.style) {
				m.support.transform = !0, h = e[a];
				break
			}
		m.transform = h
	}

	function g() {
		m.windowWidth = m.$window.width(), m.windowHeight = m.$window.height(), q = l.startTimer(q, r, h)
	}

	function h() {
		for (var a in m.ResizeHandlers) m.ResizeHandlers.hasOwnProperty(a) && m.ResizeHandlers[a].callback.call(b, m.windowWidth, m.windowHeight)
	}

	function i() {
		if (m.support.raf) {
			m.window.requestAnimationFrame(i);
			for (var a in m.RAFHandlers) m.RAFHandlers.hasOwnProperty(a) && m.RAFHandlers[a].callback.call(b)
		}
	}

	function j(a, b) {
		return parseInt(a.priority) - parseInt(b.priority)
	}
	var k = function() {
			this.Version = "0.8.21", this.Plugins = {}, this.DontConflict = !1, this.Conflicts = {
				fn: {}
			}, this.ResizeHandlers = [], this.RAFHandlers = [], this.window = b, this.$window = a(b), this.document = c, this.$document = a(c), this.$body = null, this.windowWidth = 0, this.windowHeight = 0, this.userAgent = b.navigator.userAgent || b.navigator.vendor || b.opera, this.isFirefox = /Firefox/i.test(this.userAgent), this.isChrome = /Chrome/i.test(this.userAgent), this.isSafari = /Safari/i.test(this.userAgent) && !this.isChrome, this.isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(this.userAgent), this.isFirefoxMobile = this.isFirefox && this.isMobile, this.transform = null, this.transition = null, this.support = {
				file: !!(b.File && b.FileList && b.FileReader),
				history: !!(b.history && b.history.pushState && b.history.replaceState),
				matchMedia: !(!b.matchMedia && !b.msMatchMedia),
				pointer: !!b.PointerEvent,
				raf: !(!b.requestAnimationFrame || !b.cancelAnimationFrame),
				touch: !!("ontouchstart" in b || b.DocumentTouch && c instanceof b.DocumentTouch),
				transition: !1,
				transform: !1
			}
		},
		l = {
			killEvent: function(a, b) {
				try {
					a.preventDefault(), a.stopPropagation(), b && a.stopImmediatePropagation()
				} catch (c) {}
			},
			startTimer: function(a, b, c, d) {
				return l.clearTimer(a), d ? setInterval(c, b) : setTimeout(c, b)
			},
			clearTimer: function(a, b) {
				a && (b ? clearInterval(a) : clearTimeout(a), a = null)
			},
			sortAsc: function(a, b) {
				return parseInt(a, 10) - parseInt(b, 10)
			},
			sortDesc: function(a, b) {
				return parseInt(b, 10) - parseInt(a, 10)
			}
		},
		m = new k,
		n = a.Deferred(),
		o = {
			base: "{ns}",
			element: "{ns}-element"
		},
		p = {
			namespace: ".{ns}",
			beforeUnload: "beforeunload.{ns}",
			blur: "blur.{ns}",
			change: "change.{ns}",
			click: "click.{ns}",
			dblClick: "dblclick.{ns}",
			drag: "drag.{ns}",
			dragEnd: "dragend.{ns}",
			dragEnter: "dragenter.{ns}",
			dragLeave: "dragleave.{ns}",
			dragOver: "dragover.{ns}",
			dragStart: "dragstart.{ns}",
			drop: "drop.{ns}",
			error: "error.{ns}",
			focus: "focus.{ns}",
			focusIn: "focusin.{ns}",
			focusOut: "focusout.{ns}",
			input: "input.{ns}",
			keyDown: "keydown.{ns}",
			keyPress: "keypress.{ns}",
			keyUp: "keyup.{ns}",
			load: "load.{ns}",
			mouseDown: "mousedown.{ns}",
			mouseEnter: "mouseenter.{ns}",
			mouseLeave: "mouseleave.{ns}",
			mouseMove: "mousemove.{ns}",
			mouseOut: "mouseout.{ns}",
			mouseOver: "mouseover.{ns}",
			mouseUp: "mouseup.{ns}",
			panStart: "panstart.{ns}",
			pan: "pan.{ns}",
			panEnd: "panend.{ns}",
			resize: "resize.{ns}",
			scaleStart: "scalestart.{ns}",
			scaleEnd: "scaleend.{ns}",
			scale: "scale.{ns}",
			scroll: "scroll.{ns}",
			select: "select.{ns}",
			swipe: "swipe.{ns}",
			touchCancel: "touchcancel.{ns}",
			touchEnd: "touchend.{ns}",
			touchLeave: "touchleave.{ns}",
			touchMove: "touchmove.{ns}",
			touchStart: "touchstart.{ns}"
		};
	k.prototype.NoConflict = function() {
		m.DontConflict = !0;
		for (var b in m.Plugins) m.Plugins.hasOwnProperty(b) && (a[b] = m.Conflicts[b], a.fn[b] = m.Conflicts.fn[b])
	}, k.prototype.Plugin = function(c, f) {
		return m.Plugins[c] = function(c, d) {
			function f(b) {
				var e, f, g, i = "object" === a.type(b),
					j = this,
					k = a();
				for (b = a.extend(!0, {}, d.defaults || {}, i ? b : {}), f = 0, g = j.length; g > f; f++)
					if (e = j.eq(f), !h(e)) {
						var l = "__" + d.guid++,
							m = d.classes.raw.base + l,
							n = e.data(c + "-options"),
							o = a.extend(!0, {
								$el: e,
								guid: l,
								rawGuid: m,
								dotGuid: "." + m
							}, b, "object" === a.type(n) ? n : {});
						e.addClass(d.classes.raw.element).data(s, o), d.methods._construct.apply(e, [o].concat(Array.prototype.slice.call(arguments, i ? 1 : 0))), k = k.add(e)
					}
				for (f = 0, g = k.length; g > f; f++) e = k.eq(f), d.methods._postConstruct.apply(e, [h(e)]);
				return j
			}

			function g() {
				d.functions.iterate.apply(this, [d.methods._destruct].concat(Array.prototype.slice.call(arguments, 1))), this.removeClass(d.classes.raw.element).removeData(s)
			}

			function h(a) {
				return a.data(s)
			}

			function i(b) {
				if (this instanceof a) {
					var c = d.methods[b];
					return "object" !== a.type(b) && b ? c && 0 !== b.indexOf("_") ? d.functions.iterate.apply(this, [c].concat(Array.prototype.slice.call(arguments, 1))) : this : f.apply(this, arguments)
				}
			}

			function k(c) {
				var e = d.utilities[c] || d.utilities._initialize || !1;
				return e ? e.apply(b, Array.prototype.slice.call(arguments, "object" === a.type(c) ? 0 : 1)) : void 0
			}

			function n(b) {
				d.defaults = a.extend(!0, d.defaults, b || {})
			}

			function q(b) {
				for (var c = this, d = 0, e = c.length; e > d; d++) {
					var f = c.eq(d),
						g = h(f) || {};
					"undefined" !== a.type(g.$el) && b.apply(f, [g].concat(Array.prototype.slice.call(arguments, 1)))
				}
				return c
			}
			var r = "fs-" + c,
				s = "fs" + c.replace(/(^|\s)([a-z])/g, function(a, b, c) {
					return b + c.toUpperCase()
				});
			return d.initialized = !1, d.priority = d.priority || 10, d.classes = e("classes", r, o, d.classes), d.events = e("events", c, p, d.events), d.functions = a.extend({
				getData: h,
				iterate: q
			}, l, d.functions), d.methods = a.extend(!0, {
				_setup: a.noop,
				_construct: a.noop,
				_postConstruct: a.noop,
				_destruct: a.noop,
				_resize: !1,
				destroy: g
			}, d.methods), d.utilities = a.extend(!0, {
				_initialize: !1,
				_delegate: !1,
				defaults: n
			}, d.utilities), d.widget && (m.Conflicts.fn[c] = a.fn[c], a.fn[s] = i, m.DontConflict || (a.fn[c] = a.fn[s])), m.Conflicts[c] = a[c], a[s] = d.utilities._delegate || k, m.DontConflict || (a[c] = a[s]), d.namespace = c, d.namespaceClean = s, d.guid = 0, d.methods._resize && (m.ResizeHandlers.push({
				namespace: c,
				priority: d.priority,
				callback: d.methods._resize
			}), m.ResizeHandlers.sort(j)), d.methods._raf && (m.RAFHandlers.push({
				namespace: c,
				priority: d.priority,
				callback: d.methods._raf
			}), m.RAFHandlers.sort(j)), d
		}(c, f), n.then(function() {
			d(c)
		}), m.Plugins[c]
	};
	var q = null,
		r = 20;
	return m.$window.on("resize.fs", g), g(), i(), a(function() {
		m.$body = a("body"), n.resolve()
	}), p.clickTouchStart = p.click + " " + p.touchStart, f(), m
}(jQuery, window, document); /*! formstone v0.8.21 [analytics.js] 2015-10-10 | MIT License | formstone.it */
! function(a, b, c) {
	"use strict";

	function d() {
		v = b.$body
	}

	function e() {
		s.scrollDepth && l()
	}

	function f() {
		if (arguments.length && "object" !== a.type(arguments[0]))
			if ("destroy" === arguments[0]) h.apply(this);
			else {
				var b = Array.prototype.slice.call(arguments, 1);
				switch (arguments[0]) {
					case "pageview":
						o.apply(this, b);
						break;
					case "event":
						n.apply(this, b)
				}
			} else g.apply(this, arguments);
		return null
	}

	function g(b) {
		!y && v.length && (y = !0, s = a.extend(s, b || {}), s.autoEvents && v.find("a").not("[" + A + "]").each(i), s.scrollDepth && (l(), u.on(x.scroll, j).one(x.load, e)), v.on(x.click, "*[" + A + "]", m))
	}

	function h() {
		y && v.length && (u.off(x.namespace), v.off(x.namespace), y = !1)
	}

	function i() {
		var b, d = a(this),
			e = "undefined" !== a.type(d[0].href) ? d[0].href : "",
			f = document.domain.split(".").reverse(),
			g = null !== e.match(f[1] + "." + f[0]);
		if (e.match(/^mailto\:/i)) b = "Email, Click, " + e.replace(/^mailto\:/i, "");
		else if (e.match(/^tel\:/i)) b = "Telephone, Click, " + e.replace(/^tel\:/i, "");
		else if (e.match(s.filetypes)) {
			var h = /[.]/.exec(e) ? /[^.]+$/.exec(e) : c;
			b = "File, Download:" + h[0] + ", " + e.replace(/ /g, "-")
		} else g || (b = "ExternalLink, Click, " + e);
		b && d.attr(A, b)
	}

	function j() {
		w.startTimer(C, 250, k)
	}

	function k() {
		for (var a, c = u.scrollTop() + b.windowHeight, d = 1 / s.scrollStops, e = d, f = 1; f <= s.scrollStops; f++) a = Math.round(100 * e).toString(), !B[D][a].passed && c > B[D][a].edge && (B[D][a].passed = !0, n({
			eventCategory: "ScrollDepth",
			eventAction: D,
			eventLabel: a
		})), e += d
	}

	function l() {
		var b, c = a.mediaquery("state"),
			d = v.outerHeight(),
			e = {},
			f = 1 / s.scrollStops,
			g = f,
			h = 0;
		c.minWidth && (D = "MinWidth:" + c.minWidth + "px");
		for (var i = 1; i <= s.scrollStops; i++) h = parseInt(d * g), b = Math.round(100 * g).toString(), e[b] = {
			edge: "100" === b ? h - 10 : h,
			passsed: B[D] && B[D][b] ? B[D][b].passed : !1
		}, g += f;
		B[D] = e
	}

	function m(b) {
		var c = a(this),
			d = c.attr("href"),
			e = c.data(z).split(",");
		s.eventCallback && b.preventDefault();
		for (var f in e) e.hasOwnProperty(f) && (e[f] = a.trim(e[f]));
		n({
			eventCategory: e[0],
			eventAction: e[1],
			eventLabel: e[2] || d,
			eventValue: e[3],
			nonInteraction: e[4]
		}, c)
	}

	function n(b, c) {
		var d = (t.location, a.extend({
			hitType: "event"
		}, b));
		if ("undefined" !== a.type(c) && !c.attr("data-analytics-stop")) {
			var e = "undefined" !== a.type(c[0].href) ? c[0].href : "",
				f = !e.match(/^mailto\:/i) && !e.match(/^tel\:/i) && e.indexOf(":") < 0 ? t.location.protocol + "//" + t.location.hostname + "/" + e : e;
			if ("" !== f) {
				var g = c.attr("target");
				if (g) t.open(f, g);
				else if (s.eventCallback) {
					var h = "hitCallback";
					d[h] = function() {
						E && (w.clearTimer(E), q(f))
					}, E = w.startTimer(E, s.eventTimeout, d[h])
				}
			}
		}
		p(d)
	}

	function o(b) {
		var c = a.extend({
			hitType: "pageview"
		}, b);
		p(c)
	}

	function p(b) {
		if ("function" === a.type(t.ga))
			for (var c = t.ga.getAll(), d = 0, e = c.length; e > d; d++) t.ga(c[d].get("name") + ".send", b)
	}

	function q(a) {
		document.location = a
	}
	var r = b.Plugin("analytics", {
			methods: {
				_setup: d,
				_resize: e
			},
			utilities: {
				_delegate: f
			}
		}),
		s = {
			autoEvents: !1,
			filetypes: /\.(zip|exe|dmg|pdf|doc.*|xls.*|ppt.*|mp3|txt|rar|wma|mov|avi|wmv|flv|wav)$/i,
			eventCallback: !1,
			eventTimeout: 1e3,
			scrollDepth: !1,
			scrollStops: 5
		},
		t = b.window,
		u = b.$window,
		v = null,
		w = r.functions,
		x = r.events,
		y = !1,
		z = "analytics-event",
		A = "data-" + z,
		B = {},
		C = null,
		D = "Site",
		E = null
}(jQuery, Formstone), /*! formstone v0.8.21 [asap.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b, c) {
	"use strict";

	function d(c) {
		!s && b.support.history && (q = b.$body, s = a.extend(u, c), s.render === a.noop && (s.render = j), s.transitionOut === a.noop && (s.transitionOut = function() {
			return a.Deferred().resolve()
		}), history.state ? (C = history.state.id, B = history.state.url) : (B = window.location.href, n(C, B)), v.on(y.popState, g), e())
	}

	function e() {
		q && !q.hasClass(z.base) && q.on(y.click, u.selector, f).addClass(z.base)
	}

	function f(a) {
		var b = a.currentTarget;
		a.which > 1 || a.metaKey || a.ctrlKey || a.shiftKey || a.altKey || window.location.protocol !== b.protocol || window.location.host !== b.host || "_blank" === b.target || (!b.hash || b.href.replace(b.hash, "") !== window.location.href.replace(location.hash, "") && b.href !== window.location.href + "#") && (x.killEvent(a), a.stopImmediatePropagation(), b.href !== B && h(b.href, !0))
	}

	function g(a) {
		r && r.abort();
		var b = a.originalEvent.state;
		C = b.id, b.url !== B && h(b.url, !1)
	}

	function h(b, c) {
		r && r.abort(), v.trigger(y.requested, [!1]), s.transitionOutDeferred = s.transitionOut.apply(w, [!1]);
		var d = o(b),
			e = d.params,
			f = d.hash,
			g = d.clean,
			h = "User error",
			j = null,
			k = a.Deferred();
		e[s.requestKey] = !0, r = a.ajax({
			url: g,
			data: e,
			dataType: "json",
			cache: s.cache,
			xhr: function() {
				var a = new w.XMLHttpRequest;
				return a.addEventListener("progress", function(a) {
					if (a.lengthComputable) {
						var b = a.loaded / a.total;
						v.trigger(y.progress, [b])
					}
				}, !1), a
			},
			success: function(c) {
				j = "string" === a.type(c) ? a.parseJSON(c) : c, c.location && (b = c.location, d = o(b), f = d.hash), k.resolve()
			},
			error: function(a, b, c) {
				h = c, k.reject()
			}
		}), a.when(k, s.transitionOutDeferred).done(function() {
			i(d, j, c)
		}).fail(function() {
			v.trigger(y.failed, [h])
		})
	}

	function i(b, d, e) {
		v.trigger(y.loaded, [d]), a.fsAnalytics !== c && a.fsAnalytics("pageview"), s.render.call(this, d, b.hash), B = b.url, e && (C++, m(C, B)), v.trigger(y.rendered, [d]);
		var f = !1;
		if ("" !== b.hash) {
			var g = a(b.hash);
			g.length && (f = g.offset().top)
		}
		f !== !1 && v.scrollTop(f)
	}

	function j(b) {
		if ("undefined" !== a.type(b)) {
			var c;
			for (var d in b) b.hasOwnProperty(d) && (c = a(d), c.length && c.html(b[d]))
		}
	}

	function k(a) {
		s && b.support.history ? a && h(a, !0) : window.location.href = a
	}

	function l(a) {
		var b = history.state;
		B = a, n(b.id, a)
	}

	function m(a, b) {
		history.pushState({
			id: a,
			url: b
		}, A + a, b)
	}

	function n(a, b) {
		history.replaceState({
			id: a,
			url: b
		}, A + a, b)
	}

	function o(a) {
		var b = a.indexOf("?"),
			c = a.indexOf("#"),
			d = {},
			e = "",
			f = a;
		return c > -1 && (e = a.slice(c), f = a.slice(0, c)), b > -1 && (d = p(a.slice(b + 1, c > -1 ? c : a.length)), f = a.slice(0, b)), {
			hash: e,
			params: d,
			url: a,
			clean: f
		}
	}

	function p(a) {
		for (var b = {}, c = a.slice(a.indexOf("?") + 1).split("&"), d = 0; d < c.length; d++) {
			var e = c[d].split("=");
			b[e[0]] = e[1]
		}
		return b
	}
	var q, r, s, t = b.Plugin("asap", {
			utilities: {
				_initialize: d,
				load: k,
				replace: l
			},
			events: {
				failed: "failed",
				loaded: "loaded",
				popState: "popstate",
				progress: "progress",
				requested: "requested",
				rendered: "rendered"
			}
		}),
		u = {
			cache: !0,
			selector: "a",
			render: a.noop,
			requestKey: "fs-asap",
			transitionOut: a.noop
		},
		v = b.$window,
		w = v[0],
		x = t.functions,
		y = t.events,
		z = t.classes.raw,
		A = "asap-",
		B = "",
		C = 1
}(jQuery, Formstone), /*! formstone v0.8.21 [background.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c() {
		y.iterate.call(A, r)
	}

	function d() {
		A = a(v.base)
	}

	function e(b) {
		b.youTubeGuid = 0, b.$container = a('<div class="' + w.container + '"></div>').appendTo(this), this.addClass([w.base, b.customClass].join(" "));
		var c = b.source;
		b.source = null, g(b, c, !0), d()
	}

	function f(a) {
		a.$container.remove(), this.removeClass([w.base, a.customClass].join(" ")).off(x.namespace), d()
	}

	function g(b, c, d) {
		if (c !== b.source) {
			if (b.source = c, b.responsive = !1, b.isYouTube = !1, "object" === a.type(c) && "string" === a.type(c.video)) {
				var e = c.video.match(/(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/ ]{11})/i);
				e && e.length >= 1 && (b.isYouTube = !0, b.videoId = e[1])
			}
			var f = !b.isYouTube && "object" === a.type(c) && (c.hasOwnProperty("mp4") || c.hasOwnProperty("ogg") || c.hasOwnProperty("webm"));
			if (b.video = b.isYouTube || f, b.playing = !1, b.isYouTube) b.playerReady = !1, b.posterLoaded = !1, k(b, c, d);
			else if ("object" === a.type(c) && c.hasOwnProperty("poster")) j(b, c, d);
			else {
				var g = c;
				if ("object" === a.type(c)) {
					var l, m = [],
						n = [];
					for (l in c) c.hasOwnProperty(l) && n.push(l);
					n.sort(y.sortAsc);
					for (l in n) n.hasOwnProperty(l) && m.push({
						width: parseInt(n[l]),
						url: c[n[l]],
						mq: window.matchMedia("(min-width: " + parseInt(n[l]) + "px)")
					});
					b.responsive = !0, b.sources = m, g = h(b)
				}
				i(b, g, !1, d)
			}
		} else b.$el.trigger(x.loaded)
	}

	function h(a) {
		var b = a.source;
		if (a.responsive) {
			b = a.sources[0].url;
			for (var c in a.sources) a.sources.hasOwnProperty(c) && a.sources[c].mq.matches && (b = a.sources[c].url)
		}
		return b
	}

	function i(b, c, d, e) {
		var f = [w.media, w.image, e !== !0 ? w.animated : ""].join(" "),
			g = a('<div class="' + f + '"><img></div>'),
			h = g.find("img"),
			i = c;
		h.one(x.load, function() {
			B && g.addClass(w["native"]).css({
				backgroundImage: "url('" + i + "')"
			}), g.fsTransition({
				property: "opacity"
			}, function() {
				d || l(b)
			}).css({
				opacity: 1
			}), s(b), (!d || e) && b.$el.trigger(x.loaded)
		}).attr("src", i), b.responsive && g.addClass(w.responsive), b.$container.append(g), (h[0].complete || 4 === h[0].readyState) && h.trigger(x.load), b.currentSource = i
	}

	function j(c, d, e) {
		if (c.source && c.source.poster && (i(c, c.source.poster, !0, !0), e = !1), !b.isMobile) {
			var f = [w.media, w.video, e !== !0 ? w.animated : ""].join(" "),
				g = '<div class="' + f + '">';
			g += "<video", c.loop && (g += " loop"), c.mute && (g += " muted"), g += ">", c.source.webm && (g += '<source src="' + c.source.webm + '" type="video/webm" />'), c.source.mp4 && (g += '<source src="' + c.source.mp4 + '" type="video/mp4" />'), c.source.ogg && (g += '<source src="' + c.source.ogg + '" type="video/ogg" />'), g += "</video>", g += "</div>";
			var h = a(g),
				j = h.find("video");
			j.one(x.loadedMetaData, function() {
				h.fsTransition({
					property: "opacity"
				}, function() {
					l(c)
				}).css({
					opacity: 1
				}), s(c), c.$el.trigger(x.loaded), c.autoPlay && o(c)
			}), c.$container.append(h)
		}
	}

	function k(c, d, e) {
		if (!c.videoId) {
			var f = d.match(/^.*(?:youtu.be\/|v\/|e\/|u\/\w+\/|embed\/|v=)([^#\&\?]*).*/);
			c.videoId = f[1]
		}
		if (c.posterLoaded || (c.source.poster || (c.source.poster = "http://img.youtube.com/vi/" + c.videoId + "/0.jpg"), c.posterLoaded = !0, i(c, c.source.poster, !0, e), e = !1), !b.isMobile)
			if (a("script[src*='youtube.com/iframe_api']").length || a("head").append('<script src="//www.youtube.com/iframe_api"></script>'), C) {
				var g = c.guid + "_" + c.youTubeGuid++,
					h = [w.media, w.embed, e !== !0 ? w.animated : ""].join(" "),
					j = '<div class="' + h + '">';
				j += '<div id="' + g + '"></div>', j += "</div>";
				var k = a(j),
					m = a.extend(!0, {}, {
						controls: 0,
						rel: 0,
						showinfo: 0,
						wmode: "transparent",
						enablejsapi: 1,
						version: 3,
						playerapiid: g,
						loop: c.loop ? 1 : 0,
						autoplay: 1,
						origin: z.location.protocol + "//" + z.location.host
					}, c.youtubeOptions);
				c.$container.append(k), c.player && (c.oldPlayer = c.player, c.player = null), c.player = new z.YT.Player(g, {
					videoId: c.videoId,
					playerVars: m,
					events: {
						onReady: function() {
							c.playerReady = !0, c.mute && c.player.mute(), c.autoPlay && c.player.playVideo()
						},
						onStateChange: function(a) {
							c.playing || a.data !== z.YT.PlayerState.PLAYING ? c.loop && c.playing && a.data === z.YT.PlayerState.ENDED && c.player.playVideo() : (c.playing = !0, c.autoPlay || c.player.pauseVideo(), k.fsTransition({
								property: "opacity"
							}, function() {
								l(c)
							}).css({
								opacity: 1
							}), s(c), c.$el.trigger(x.loaded)), c.$el.find(v.embed).addClass(w.ready)
						},
						onPlaybackQualityChange: function() {},
						onPlaybackRateChange: function() {},
						onError: function() {},
						onApiChange: function() {}
					}
				}), s(c)
			} else D.push({
				data: c,
				source: d
			})
	}

	function l(a) {
		var b = a.$container.find(v.media);
		b.length >= 1 && (b.not(":last").remove(), a.oldPlayer = null)
	}

	function m(a) {
		var b = a.$container.find(v.media);
		b.length >= 1 && b.fsTransition({
			property: "opacity"
		}, function() {
			b.remove(), delete a.source
		}).css({
			opacity: 0
		})
	}

	function n(a) {
		if (a.video) {
			if (a.isYouTube && a.playerReady) a.player.pauseVideo();
			else {
				var b = a.$container.find("video");
				b.length && b[0].pause()
			}
			a.playing = !1
		}
	}

	function o(a) {
		if (a.video) {
			if (a.isYouTube && a.playerReady) a.player.playVideo();
			else {
				var b = a.$container.find("video");
				b.length && b[0].play()
			}
			a.playing = !0
		}
	}

	function p(a) {
		if (a.video) {
			if (a.isYouTube && a.playerReady) a.player.mute();
			else {
				var b = a.$container.find("video");
				b.length && (b[0].muted = !0)
			}
			a.playing = !0
		}
	}

	function q(a) {
		if (a.video) {
			if (a.isYouTube && a.playerReady) a.player.unMute();
			else {
				var b = a.$container.find("video");
				b.length && (b[0].muted = !1)
			}
			a.playing = !0
		}
	}

	function r(a) {
		if (a.responsive) {
			var b = h(a);
			b !== a.currentSource ? i(a, b, !1, !0) : s(a)
		} else s(a)
	}

	function s(a) {
		for (var b = a.$container.find(v.media), c = 0, d = b.length; d > c; c++) {
			var e = b.eq(c),
				f = a.isYouTube ? "iframe" : e.find("video").length ? "video" : "img",
				g = e.find(f);
			if (g.length && ("img" !== f || !B)) {
				var h = a.$el.outerWidth(),
					i = a.$el.outerHeight(),
					j = t(a, g);
				a.width = j.width, a.height = j.height, a.left = 0, a.top = 0;
				var k = a.isYouTube ? a.embedRatio : a.width / a.height;
				a.height = i, a.width = a.height * k, a.width < h && (a.width = h, a.height = a.width / k), a.left = -(a.width - h) / 2, a.top = -(a.height - i) / 2, e.css({
					height: a.height,
					width: a.width,
					left: a.left,
					top: a.top
				})
			}
		}
	}

	function t(b, c) {
		if (b.isYouTube) return {
			height: 500,
			width: 500 / b.embedRatio
		};
		if (c.is("img")) {
			var d = c[0];
			if ("undefined" !== a.type(d.naturalHeight)) return {
				height: d.naturalHeight,
				width: d.naturalWidth
			};
			var e = new Image;
			return e.src = d.src, {
				height: e.height,
				width: e.width
			}
		}
		return {
			height: c[0].videoHeight,
			width: c[0].videoWidth
		}
	}
	var u = b.Plugin("background", {
			widget: !0,
			defaults: {
				autoPlay: !0,
				customClass: "",
				embedRatio: 1.777777,
				loop: !0,
				mute: !0,
				source: null,
				youtubeOptions: {}
			},
			classes: ["container", "media", "animated", "responsive", "native", "fixed", "ready"],
			events: {
				loaded: "loaded",
				ready: "ready",
				loadedMetaData: "loadedmetadata"
			},
			methods: {
				_construct: e,
				_destruct: f,
				_resize: c,
				play: o,
				pause: n,
				mute: p,
				unmute: q,
				resize: s,
				load: g,
				unload: m
			}
		}),
		v = u.classes,
		w = v.raw,
		x = u.events,
		y = u.functions,
		z = b.window,
		A = [],
		B = "backgroundSize" in b.document.documentElement.style,
		C = !1,
		D = [];
	z.onYouTubeIframeAPIReady = function() {
		C = !0;
		for (var a in D) D.hasOwnProperty(a) && k(D[a].data, D[a].source);
		D = []
	}
}(jQuery, Formstone), /*! formstone v0.8.21 [carousel.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c() {
		J.iterate.call(K, i)
	}

	function d() {
		K = a(G.base)
	}

	function e(c) {
		var e, f = [H.base, c.customClass, c.rtl ? H.rtl : H.ltr];
		c.maxWidth = c.maxWidth === 1 / 0 ? "100000px" : c.maxWidth, c.mq = "(min-width:" + c.minWidth + ") and (max-width:" + c.maxWidth + ")", c.customControls = "object" === a.type(c.controls) && c.controls.previous && c.controls.next, b.support.transform || (c.useMargin = !0);
		var i = "",
			k = "",
			l = [H.control, H.control_previous].join(" "),
			m = [H.control, H.control_next].join(" ");
		if (c.controls && !c.customControls && (i += '<div class="' + H.controls + '">', i += '<button type="button" class="' + l + '">' + c.labels.previous + "</button>", i += '<button type="button" class="' + m + '">' + c.labels.next + "</button>", i += "</div>"), c.pagination && (k += '<div class="' + H.pagination + '">', k += "</div>"), c.autoHeight && f.push(H.auto_height), c.contained && f.push(H.contained), c.single && f.push(H.single), this.addClass(f.join(" ")).wrapInner('<div class="' + H.wrapper + '"><div class="' + H.container + '"><div class="' + H.canister + '"></div></div></div>').append(i).wrapInner('<div class="' + H.viewport + '"></div>').append(k), c.$viewport = this.find(G.viewport).eq(0), c.$container = this.find(G.container).eq(0), c.$canister = this.find(G.canister).eq(0), c.$pagination = this.find(G.pagination).eq(0), c.$paginationItems = c.$pagination.find(G.page), c.$controlPrevious = c.$controlNext = a(""), c.customControls ? (c.$controls = a(c.controls.container).addClass([H.controls, H.controls_custom].join(" ")), c.$controlPrevious = a(c.controls.previous).addClass(l), c.$controlNext = a(c.controls.next).addClass(m)) : (c.$controls = this.find(G.controls).eq(0), c.$controlPrevious = c.$controls.find(G.control_previous), c.$controlNext = c.$controls.find(G.control_next)), c.$controlItems = c.$controlPrevious.add(c.$controlNext), c.index = 0, c.enabled = !1, c.leftPosition = 0, c.autoTimer = null, c.resizeTimer = null, "object" === a.type(c.show)) {
			var n = c.show,
				o = [],
				p = [];
			for (e in n) n.hasOwnProperty(e) && p.push(e);
			p.sort(J.sortAsc);
			for (e in p) p.hasOwnProperty(e) && o.push({
				width: parseInt(p[e]),
				count: n[p[e]],
				mq: window.matchMedia("(min-width: " + parseInt(p[e]) + "px)")
			});
			c.show = o
		}
		j(c), a.fsMediaquery("bind", c.rawGuid, c.mq, {
			enter: function() {
				h.call(c.$el, c)
			},
			leave: function() {
				g.call(c.$el, c)
			}
		}), d()
	}

	function f(b) {
		J.clearTimer(b.autoTimer), J.startTimer(b.resizeTimer), g.call(this, b), a.fsMediaquery("unbind", b.rawGuid), b.$controlItems.removeClass([G.control, H.control_previous, G.control_next, G.visible].join(" ")).off(I.namespace), b.$images.off(I.namespace), b.$canister.fsTouch("destroy"), b.$items.removeClass([H.item, H.visible, G.item_previous, G.item_next].join(" ")).unwrap().unwrap().unwrap().unwrap(), b.pagination && b.$pagination.remove(), b.controls && !b.customControls && b.$controls.remove(), b.customControls && b.$controls.removeClass([H.controls, H.controls_custom, H.visible].join(" ")), this.removeClass([H.base, H.ltr, H.rtl, H.enabled, H.animated, H.contained, H.single, H.auto_height, H.customClass].join(" ")), d()
	}

	function g(a) {
		a.enabled && (J.clearTimer(a.autoTimer), a.enabled = !1, this.removeClass([H.enabled, H.animated].join(" ")).off(I.namespace), a.$canister.fsTouch("destroy").off(I.namespace).attr("style", "").css(M, "none"), a.$items.css({
			width: "",
			height: ""
		}).removeClass([H.visible, G.item_previous, G.item_next].join(" ")), a.$images.off(I.namespace), a.$controlItems.off(I.namespace), a.$pagination.html(""), u(a), a.useMargin ? a.$canister.css({
			marginLeft: ""
		}) : a.$canister.css(L, ""), a.index = 0)
	}

	function h(a) {
		a.enabled || (a.enabled = !0, this.addClass(H.enabled).on(I.click, G.page, a, s), a.$controlItems.on(I.click, a, r), a.$canister.fsTouch({
			axis: "x",
			pan: !0,
			swipe: !0
		}).on(I.panStart, a, y).on(I.pan, a, z).on(I.panEnd, a, A).on(I.swipe, a, B).css(M, ""), j(a), a.$images.on(I.load, a, p), a.autoAdvance && (a.autoTimer = J.startTimer(a.autoTimer, a.autoTime, function() {
			q(a)
		}, !0)), i.call(this, a))
	}

	function i(a) {
		if (a.enabled) {
			var b, c, d, e, f, g, h, i;
			if (a.count = a.$items.length, a.count < 1) return u(a), void a.$canister.css({
				height: ""
			});
			for (this.removeClass(H.animated), a.containerWidth = a.$container.outerWidth(!1), a.visible = x(a), a.perPage = a.paged ? 1 : a.visible, a.itemMargin = parseInt(a.$items.eq(0).css("marginRight")) + parseInt(a.$items.eq(0).css("marginLeft")), a.itemWidth = (a.containerWidth - a.itemMargin * (a.visible - 1)) / a.visible, a.itemHeight = 0, a.pageWidth = a.paged ? a.itemWidth : a.containerWidth, a.pageCount = Math.ceil(a.count / a.perPage), a.canisterWidth = (a.pageWidth + a.itemMargin) * a.pageCount, a.$canister.css({
					width: a.canisterWidth,
					height: ""
				}), a.$items.css({
					width: a.itemWidth,
					height: ""
				}).removeClass(H.visible), a.pages = [], c = 0, d = 0; c < a.count; c += a.perPage) {
				if (f = a.$items.slice(c, c + a.perPage), h = 0, f.length < a.perPage && (f = 0 === c ? a.$items : a.$items.slice(a.$items.length - a.perPage)), g = f.eq(a.rtl ? f.length - 1 : 0), i = g.position().left, a.autoHeight)
					for (e = 0; e < f.length; e++) b = f.eq(e).outerHeight(), b > h && (h = b);
				else h = g.outerHeight();
				a.pages.push({
					left: a.rtl ? i - (a.canisterWidth - a.pageWidth - a.itemMargin) : i,
					height: h,
					$items: f
				}), h > a.itemHeight && (a.itemHeight = h), d++
			}
			a.paged && (a.pageCount -= a.count % a.visible), a.pageCount <= 0 && (a.pageCount = 1), a.maxMove = -a.pages[a.pageCount - 1].left, a.autoHeight ? a.$canister.css({
				height: a.pages[0].height
			}) : a.matchHeight && a.$items.css({
				height: a.itemHeight
			});
			var j = "";
			for (c = 0; c < a.pageCount; c++) j += '<button type="button" class="' + H.page + '">' + (c + 1) + "</button>";
			a.$pagination.html(j), a.pageCount <= 1 ? u(a) : v(a), a.$paginationItems = a.$el.find(G.page), t(a, a.index, !1), setTimeout(function() {
				a.$el.addClass(H.animated)
			}, 5)
		}
	}

	function j(a) {
		a.$items = a.$canister.children().not(":hidden").addClass(H.item), a.$images = a.$canister.find("img"), a.totalImages = a.$images.length
	}

	function k(a) {
		a.enabled && l.call(this, a, !1)
	}

	function l(a, b) {
		a.$images.off(I.namespace), b !== !1 && a.$canister.html(b), a.index = 0, j(a), i.call(this, a)
	}

	function m(a, b, c) {
		a.enabled && (J.clearTimer(a.autoTimer), t(a, b - 1, !0, c))
	}

	function n(a) {
		var b = a.index - 1;
		a.infinite && 0 > b && (b = a.pageCount - 1), t(a, b)
	}

	function o(a) {
		var b = a.index + 1;
		a.infinite && b >= a.pageCount && (b = 0), t(a, b)
	}

	function p(a) {
		var b = a.data;
		b.resizeTimer = J.startTimer(b.resizeTimer, 20, function() {
			i.call(b.$el, b)
		})
	}

	function q(a) {
		var b = a.index + 1;
		b >= a.pageCount && (b = 0), t(a, b)
	}

	function r(b) {
		J.killEvent(b);
		var c = b.data,
			d = c.index + (a(b.currentTarget).hasClass(H.control_next) ? 1 : -1);
		J.clearTimer(c.autoTimer), t(c, d)
	}

	function s(b) {
		J.killEvent(b);
		var c = b.data,
			d = c.$paginationItems.index(a(b.currentTarget));
		J.clearTimer(c.autoTimer), t(c, d)
	}

	function t(a, b, c, d) {
		if (0 > b && (b = a.infinite ? a.pageCount - 1 : 0), b >= a.pageCount && (b = a.infinite ? 0 : a.pageCount - 1), !(a.count < 1)) {
			a.pages[b] && (a.leftPosition = -a.pages[b].left), a.leftPosition = D(a, a.leftPosition), a.useMargin ? a.$canister.css({
				marginLeft: a.leftPosition
			}) : c === !1 ? (a.$canister.css(M, "none").css(L, "translateX(" + a.leftPosition + "px)"), setTimeout(function() {
				a.$canister.css(M, "")
			}, 5)) : a.$canister.css(L, "translateX(" + a.leftPosition + "px)"), a.$items.removeClass([H.visible, H.item_previous, H.item_next].join(" "));
			for (var e = 0, f = a.pages.length; f > e; e++) e === b ? a.pages[e].$items.addClass(H.visible) : a.pages[e].$items.not(a.pages[b].$items).addClass(b > e ? H.item_previous : H.item_next);
			a.autoHeight && a.$canister.css({
				height: a.pages[b].height
			}), c !== !1 && d !== !0 && b !== a.index && (a.infinite || b > -1 && b < a.pageCount) && a.$el.trigger(I.update, [b]), a.index = b, w(a)
		}
	}

	function u(a) {
		a.$controls.removeClass(H.visible), a.$controlItems.removeClass(H.visible), a.$pagination.removeClass(H.visible)
	}

	function v(a) {
		a.$controls.addClass(H.visible), a.$controlItems.addClass(H.visible), a.$pagination.addClass(H.visible)
	}

	function w(a) {
		a.$paginationItems.removeClass(H.active).eq(a.index).addClass(H.active), a.infinite ? a.$controlItems.addClass(H.visible) : a.pageCount < 1 ? a.$controlItems.removeClass(H.visible) : (a.$controlItems.addClass(H.visible), a.index <= 0 ? a.$controlPrevious.removeClass(H.visible) : (a.index >= a.pageCount - 1 || !a.single && a.leftPosition === a.maxMove) && a.$controlNext.removeClass(H.visible))
	}

	function x(b) {
		var c = 1;
		if (b.single) return c;
		if ("array" === a.type(b.show))
			for (var d in b.show) b.show.hasOwnProperty(d) && b.show[d].mq.matches && (c = b.show[d].count);
		else c = b.show;
		return b.fill && b.count < c ? b.count : c
	}

	function y(a) {
		var b = a.data;
		if (b.useMargin) b.leftPosition = parseInt(b.$canister.css("marginLeft"));
		else {
			var c = b.$canister.css(L).split(",");
			b.leftPosition = parseInt(c[4])
		}
		b.$canister.css(M, "none"), z(a), b.isTouching = !0
	}

	function z(a) {
		var b = a.data;
		b.touchLeft = D(b, b.leftPosition + a.deltaX), b.useMargin ? b.$canister.css({
			marginLeft: b.touchLeft
		}) : b.$canister.css(L, "translateX(" + b.touchLeft + "px)")
	}

	function A(a) {
		var b = a.data,
			c = E(b, a),
			d = a.deltaX > -50 && a.deltaX < 50 ? b.index : b.index + c;
		C(b, d)
	}

	function B(a) {
		var b = a.data,
			c = E(b, a),
			d = b.index + c;
		C(b, d)
	}

	function C(a, b) {
		a.$canister.css(M, ""), t(a, b), a.isTouching = !1
	}

	function D(a, b) {
		return isNaN(b) ? b = 0 : a.rtl ? (b > a.maxMove && (b = a.maxMove), 0 > b && (b = 0)) : (b < a.maxMove && (b = a.maxMove), b > 0 && (b = 0)), b
	}

	function E(a, b) {
		return a.rtl ? "right" === b.directionX ? 1 : -1 : "left" === b.directionX ? 1 : -1
	}
	var F = b.Plugin("carousel", {
			widget: !0,
			defaults: {
				autoAdvance: !1,
				autoHeight: !1,
				autoTime: 8e3,
				contained: !0,
				controls: !0,
				customClass: "",
				fill: !1,
				infinite: !1,
				labels: {
					next: "Next",
					previous: "Previous"
				},
				matchHeight: !1,
				maxWidth: 1 / 0,
				minWidth: "0px",
				paged: !1,
				pagination: !0,
				show: 1,
				single: !1,
				rtl: !1,
				useMargin: !1
			},
			classes: ["ltr", "rtl", "viewport", "wrapper", "container", "canister", "item", "item_previous", "item_next", "controls", "controls_custom", "control", "control_previous", "control_next", "pagination", "page", "animated", "enabled", "visible", "active", "auto_height", "contained", "single"],
			events: {
				update: "update"
			},
			methods: {
				_construct: e,
				_destruct: f,
				_resize: c,
				disable: g,
				enable: h,
				jump: m,
				previous: n,
				next: o,
				reset: k,
				resize: i,
				update: l
			}
		}),
		G = F.classes,
		H = G.raw,
		I = F.events,
		J = F.functions,
		K = [],
		L = b.transform,
		M = b.transition
}(jQuery, Formstone), /*! formstone v0.8.21 [checkbox.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(b) {
		var c = this.closest("label"),
			d = c.length ? c.eq(0) : a("label[for=" + this.attr("id") + "]"),
			e = [p.base, b.customClass].join(" "),
			f = "";
		b.radio = "radio" === this.attr("type"), b.group = this.attr("name"), f += '<div class="' + p.marker + '">', f += '<div class="' + p.flag + '"></div>', b.toggle && (e += " " + p.toggle, f += '<span class="' + [p.state, p.state_on].join(" ") + '">' + b.labels.on + "</span>", f += '<span class="' + [p.state, p.state_off].join(" ") + '">' + b.labels.off + "</span>"), b.radio && (e += " " + p.radio), f += "</div>", d.length ? d.addClass(p.label).wrap('<div class="' + e + '"></div>').before(f) : this.before('<div class=" ' + e + '">' + f + "</div>"), b.$checkbox = d.length ? d.parents(o.base) : this.prev(o.base), b.$marker = b.$checkbox.find(o.marker), b.$states = b.$checkbox.find(o.state), b.$label = d, this.is(":checked") && b.$checkbox.addClass(p.checked), this.is(":disabled") && b.$checkbox.addClass(p.disabled), this.wrap('<div class="' + p.element_wrapper + '"></div>'), this.on(q.focus, b, l).on(q.blur, b, m).on(q.change, b, i).on(q.click, b, h).on(q.deselect, b, k), b.$checkbox.on(q.click, b, h)
	}

	function d(a) {
		a.$checkbox.off(q.namespace), a.$marker.remove(), a.$states.remove(), a.$label.unwrap().removeClass(p.label), this.unwrap().off(q.namespace)
	}

	function e(a) {
		this.prop("disabled", !1), a.$checkbox.removeClass(p.disabled)
	}

	function f(a) {
		this.prop("disabled", !0), a.$checkbox.addClass(p.disabled)
	}

	function g(a) {
		var b = a.$el.is(":disabled"),
			c = a.$el.is(":checked");
		b || (c ? j({
			data: a
		}) : k({
			data: a
		}))
	}

	function h(b) {
		b.stopPropagation();
		var c = b.data;
		a(b.target).is(c.$el) || (b.preventDefault(), c.$el.trigger("click"))
	}

	function i(a) {
		var b = a.data,
			c = b.$el.is(":disabled"),
			d = b.$el.is(":checked");
		c || (b.radio ? j(a) : d ? j(a) : k(a))
	}

	function j(b) {
		b.data.radio && a('input[name="' + b.data.group + '"]').not(b.data.$el).trigger("deselect"), b.data.$checkbox.addClass(p.checked)
	}

	function k(a) {
		a.data.$checkbox.removeClass(p.checked)
	}

	function l(a) {
		a.data.$checkbox.addClass(p.focus)
	}

	function m(a) {
		a.data.$checkbox.removeClass(p.focus)
	}
	var n = b.Plugin("checkbox", {
			widget: !0,
			defaults: {
				customClass: "",
				toggle: !1,
				labels: {
					on: "ON",
					off: "OFF"
				}
			},
			classes: ["element_wrapper", "label", "marker", "flag", "radio", "focus", "checked", "disabled", "toggle", "state", "state_on", "state_off"],
			methods: {
				_construct: c,
				_destruct: d,
				enable: e,
				disable: f,
				update: g
			},
			events: {
				deselect: "deselect"
			}
		}),
		o = n.classes,
		p = o.raw,
		q = n.events;
	n.functions
}(jQuery, Formstone), /*! formstone v0.8.21 [cookie.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(b, c, h) {
		if ("object" === a.type(b)) g = a.extend(g, b);
		else if (h = a.extend({}, g, h || {}), "undefined" !== a.type(b)) {
			if ("undefined" === a.type(c)) return e(b);
			null === c ? f(b) : d(b, c, h)
		}
		return null
	}

	function d(b, c, d) {
		var e = !1,
			f = new Date;
		d.expires && "number" === a.type(d.expires) && (f.setTime(f.getTime() + d.expires), e = f.toGMTString());
		var g = d.domain ? "; domain=" + d.domain : "",
			i = e ? "; expires=" + e : "",
			j = e ? "; max-age=" + d.expires / 1e3 : "",
			k = d.path ? "; path=" + d.path : "",
			l = d.secure ? "; secure" : "";
		h.cookie = b + "=" + c + i + j + g + k + l
	}

	function e(a) {
		for (var b = a + "=", c = h.cookie.split(";"), d = 0; d < c.length; d++) {
			for (var e = c[d];
				" " === e.charAt(0);) e = e.substring(1, e.length);
			if (0 === e.indexOf(b)) return e.substring(b.length, e.length)
		}
		return null
	}

	function f(a) {
		d(a, "", {
			expires: -6048e5
		})
	}
	var g = (b.Plugin("cookie", {
			utilities: {
				_delegate: c
			}
		}), {
			domain: null,
			expires: 6048e5,
			path: null,
			secure: null
		}),
		h = b.document
}(jQuery, Formstone), /*! formstone v0.8.21 [dropdown.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b, c) {
	"use strict";

	function d() {
		I = b.$body
	}

	function e(d) {
		d.multiple = this.prop("multiple"), d.disabled = this.is(":disabled"), d.multiple ? d.links = !1 : d.external && (d.links = !0);
		var e = this.find("[selected]").not(":disabled"),
			f = this.find(":selected").not(":disabled"),
			g = f.text(),
			h = this.find("option").index(f);
		d.multiple || "" === d.label || e.length ? d.label = "" : (f = this.prepend('<option value="" class="' + D.item_placeholder + '" selected>' + d.label + "</option>"), g = d.label, h = 0);
		var i = this.find("option, optgroup"),
			l = i.filter("option");
		d.tabIndex = this[0].tabIndex, this[0].tabIndex = -1;
		var m = [D.base, d.customClass];
		d.mobile || b.isMobile ? m.push(D.mobile) : d.cover && m.push(D.cover), d.multiple && m.push(D.multiple), d.disabled && m.push(D.disabled);
		var n = '<div class="' + m.join(" ") + '" tabindex="' + d.tabIndex + '"></div>',
			o = "";
		d.multiple || (o += '<button type="button" class="' + D.selected + '">', o += a("<span></span>").text(z(g, d.trim)).html(), o += "</button>"), o += '<div class="' + D.options + '">', o += "</div>", this.wrap(n).after(o), d.$dropdown = this.parent(C.base), d.$allOptions = i, d.$options = l, d.$selected = d.$dropdown.find(C.selected), d.$wrapper = d.$dropdown.find(C.options), d.$placeholder = d.$dropdown.find(C.placeholder), d.index = -1, d.closed = !0, d.focused = !1, j(d), d.multiple || v(h, d), a.fn.fsScrollbar !== c && d.$wrapper.fsScrollbar(), d.$selected.on(E.click, d, k), d.$dropdown.on(E.click, C.item, d, q).on(E.close, d, p), this.on(E.change, d, r), b.isMobile || (d.$dropdown.on(E.focusIn, d, s).on(E.focusOut, d, t), this.on(E.focusIn, d, function(a) {
			a.data.$dropdown.trigger(E.raw.focusIn)
		}))
	}

	function f(b) {
		b.$dropdown.hasClass(D.open) && b.$selected.trigger(E.click), a.fn.fsScrollbar !== c && b.$wrapper.fsScrollbar("destroy"), b.$el[0].tabIndex = b.tabIndex, b.$dropdown.off(E.namespace), b.$options.off(E.namespace), b.$placeholder.remove(), b.$selected.remove(), b.$wrapper.remove(), b.$el.off(E.namespace).show().unwrap()
	}

	function g(a, b) {
		if ("undefined" != typeof b) {
			var c = a.$items.index(a.$items.filter("[data-value=" + b + "]"));
			a.$items.eq(c).addClass(D.item_disabled), a.$options.eq(c).prop("disabled", !0)
		} else a.$dropdown.hasClass(D.open) && a.$selected.trigger(E.click), a.$dropdown.addClass(D.disabled), a.$el.prop("disabled", !0), a.disabled = !0
	}

	function h(a, b) {
		if ("undefined" != typeof b) {
			var c = a.$items.index(a.$items.filter("[data-value=" + b + "]"));
			a.$items.eq(c).removeClass(D.item_disabled), a.$options.eq(c).prop("disabled", !1)
		} else a.$dropdown.removeClass(D.disabled), a.$el.prop("disabled", !1), a.disabled = !1
	}

	function i(a) {
		var b = a.index;
		a.$allOptions = a.$el.find("option, optgroup"), a.$options = a.$allOptions.filter("option"), a.index = -1, b = a.$options.index(a.$options.filter(":selected")), j(a), a.multiple || v(b, a)
	}

	function j(b) {
		for (var c = "", d = 0, e = 0, f = b.$allOptions.length; f > e; e++) {
			var g = b.$allOptions.eq(e),
				h = [];
			if ("OPTGROUP" === g[0].tagName) h.push(D.group), g.is(":disabled") && h.push(D.disabled), c += '<span class="' + h.join(" ") + '">' + g.attr("label") + "</span>";
			else {
				var i = g.val(),
					j = g.data("label");
				g.attr("value") || g.attr("value", i), h.push(D.item), g.hasClass(D.item_placeholder) && h.push(D.item_placeholder), g.is(":selected") && h.push(D.item_selected), g.is(":disabled") && h.push(D.item_disabled), c += '<button type="button" class="' + h.join(" ") + '" ', c += 'data-value="' + i + '">', c += j ? j : a("<span></span>").html(z(g.text(), b.trim)).text(), c += "</button>", d++
			}
		}
		b.$items = b.$wrapper.html(c).find(C.item)
	}

	function k(a) {
		F.killEvent(a);
		var c = a.data;
		if (!c.disabled)
			if (c.mobile || !b.isMobile || b.isFirefoxMobile) c.closed ? m(c) : n(c);
			else {
				var d = c.$el[0];
				if (H.createEvent) {
					var e = H.createEvent("MouseEvents");
					e.initMouseEvent("mousedown", !1, !0, G, 0, 0, 0, 0, 0, !1, !1, !1, !1, 0, null), d.dispatchEvent(e)
				} else d.fireEvent && d.fireEvent("onmousedown")
			}
		l(c)
	}

	function l(b) {
		a(C.base).not(b.$dropdown).trigger(E.close, [b])
	}

	function m(a) {
		if (a.closed) {
			var b = a.$dropdown.offset(),
				c = I.outerHeight(),
				d = a.$wrapper.outerHeight(!0);
			a.index >= 0 ? a.$items.eq(a.index).position() : {
				left: 0,
				top: 0
			}, b.top + d > c - a.bottomEdge && a.$dropdown.addClass(D.bottom), I.on(E.click + a.dotGuid, ":not(" + C.options + ")", a, o), a.$dropdown.trigger(E.focusIn), a.$dropdown.addClass(D.open), w(a), a.closed = !1
		}
	}

	function n(a) {
		a && !a.closed && (I.off(E.click + a.dotGuid), a.$dropdown.removeClass([D.open, D.bottom].join(" ")), a.closed = !0)
	}

	function o(b) {
		F.killEvent(b);
		var c = b.data;
		c && 0 === a(b.currentTarget).parents(C.base).length && (n(c), c.$dropdown.trigger(E.focusOut))
	}

	function p(a) {
		var b = a.data;
		b && (n(b), b.$dropdown.trigger(E.focusOut))
	}

	function q(b) {
		F.killEvent(b);
		var c = a(this),
			d = b.data;
		if (!d.disabled) {
			if (d.$wrapper.is(":visible")) {
				var e = d.$items.index(c);
				e !== d.index && (v(e, d), x(d))
			}
			d.multiple || n(d), d.$dropdown.trigger(E.focusIn)
		}
	}

	function r(b, c) {
		var d = a(this),
			e = b.data;
		if (!c && !e.multiple) {
			var f = e.$options.index(e.$options.filter("[value='" + A(d.val()) + "']"));
			v(f, e), x(e)
		}
	}

	function s(b) {
		F.killEvent(b);
		var c = (a(b.currentTarget), b.data);
		c.disabled || c.multiple || c.focused || (l(c), c.focused = !0, c.$dropdown.addClass(D.focus).on(E.keyDown + c.dotGuid, c, u))
	}

	function t(b) {
		F.killEvent(b);
		var c = (a(b.currentTarget), b.data);
		c.focused && c.closed && (c.focused = !1, c.$dropdown.removeClass(D.focus).off(E.keyDown + c.dotGuid), c.multiple || n(c))
	}

	function u(c) {
		var d = c.data;
		if (13 === c.keyCode) d.closed || (n(d), v(d.index, d)), x(d);
		else if (!(9 === c.keyCode || c.metaKey || c.altKey || c.ctrlKey || c.shiftKey)) {
			F.killEvent(c);
			var e = d.$items.length - 1,
				f = d.index < 0 ? 0 : d.index;
			if (a.inArray(c.keyCode, b.isFirefox ? [38, 40, 37, 39] : [38, 40]) > -1) f += 38 === c.keyCode || b.isFirefox && 37 === c.keyCode ? -1 : 1, 0 > f && (f = 0), f > e && (f = e);
			else {
				var g, h, i = String.fromCharCode(c.keyCode).toUpperCase();
				for (h = d.index + 1; e >= h; h++)
					if (g = d.$options.eq(h).text().charAt(0).toUpperCase(), g === i) {
						f = h;
						break
					}
				if (0 > f || f === d.index)
					for (h = 0; e >= h; h++)
						if (g = d.$options.eq(h).text().charAt(0).toUpperCase(), g === i) {
							f = h;
							break
						}
			}
			f >= 0 && (v(f, d), w(d))
		}
	}

	function v(a, b) {
		var c = b.$items.eq(a),
			d = b.$options.eq(a),
			e = c.hasClass(D.item_selected),
			f = c.hasClass(D.item_disabled);
		if (!f)
			if (b.multiple) e ? (d.prop("selected", null), c.removeClass(D.item_selected)) : (d.prop("selected", !0), c.addClass(D.item_selected));
			else if (a > -1 && a < b.$items.length) {
			var g = d.data("label") || c.html();
			b.$selected.html(g).removeClass(C.item_placeholder), b.$items.filter(C.item_selected).removeClass(D.item_selected), b.$el[0].selectedIndex = a, c.addClass(D.item_selected), b.index = a
		} else "" !== b.label && b.$selected.html(b.label)
	}

	function w(b) {
		var d = b.$items.eq(b.index),
			e = b.index >= 0 && !d.hasClass(D.item_placeholder) ? d.position() : {
				left: 0,
				top: 0
			},
			f = (b.$wrapper.outerHeight() - d.outerHeight()) / 2;
		a.fn.fsScrollbar !== c ? b.$wrapper.fsScrollbar("resize").fsScrollbar("scroll", b.$wrapper.find(".fs-scrollbar-content").scrollTop() + e.top) : b.$wrapper.scrollTop(b.$wrapper.scrollTop() + e.top - f)
	}

	function x(a) {
		a.links ? y(a) : a.$el.trigger(E.raw.change, [!0])
	}

	function y(a) {
		var b = a.$el.val();
		a.external ? G.open(b) : G.location.href = b
	}

	function z(a, b) {
		return 0 === b ? a : a.length > b ? a.substring(0, b) + "..." : a
	}

	function A(a) {
		return "string" == typeof a ? a.replace(/([;&,\.\+\*\~':"\!\^#$%@\[\]\(\)=>\|])/g, "\\$1") : a
	}
	var B = b.Plugin("dropdown", {
			widget: !0,
			defaults: {
				bottomEdge: 0,
				cover: !1,
				customClass: "",
				label: "",
				external: !1,
				links: !1,
				mobile: !1,
				trim: 0
			},
			methods: {
				_setup: d,
				_construct: e,
				_destruct: f,
				disable: g,
				enable: h,
				update: i,
				open: m,
				close: n
			},
			classes: ["cover", "bottom", "multiple", "mobile", "open", "disabled", "focus", "selected", "options", "group", "item", "item_disabled", "item_selected", "item_placeholder"],
			events: {
				close: "close"
			}
		}),
		C = B.classes,
		D = C.raw,
		E = B.events,
		F = B.functions,
		G = b.window,
		H = (b.$window, b.document),
		I = null
}(jQuery, Formstone), /*! formstone v0.8.21 [equalize.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c() {
		n.iterate.call(o, g)
	}

	function d() {
		o = a(l.element)
	}

	function e(b) {
		b.maxWidth = b.maxWidth === 1 / 0 ? "100000px" : b.maxWidth, b.mq = "(min-width:" + b.minWidth + ") and (max-width:" + b.maxWidth + ")", b.type = "height" === b.property ? "outerHeight" : "outerWidth", b.target ? a.isArray(b.target) || (b.target = [b.target]) : b.target = ["> *"], d(), a.fsMediaquery("bind", b.rawGuid, b.mq, {
			enter: function() {
				i.call(b.$el, b)
			},
			leave: function() {
				h.call(b.$el, b)
			}
		})
	}

	function f(b) {
		j(b), a.fsMediaquery("unbind", b.rawGuid), d()
	}

	function g(a) {
		if (a.data && (a = a.data), a.enabled)
			for (var b, c, d, e = 0; e < a.target.length; e++) {
				b = 0, c = 0, d = a.$el.find(a.target[e]), d.css(a.property, "");
				for (var f = 0; f < d.length; f++) c = d.eq(f)[a.type](), c > b && (b = c);
				d.css(a.property, b)
			}
	}

	function h(a) {
		a.enabled && (a.enabled = !1, j(a))
	}

	function i(a) {
		if (!a.enabled) {
			a.enabled = !0;
			var b = a.$el.find("img");
			b.length && b.on(m.load, a, g), g(a)
		}
	}

	function j(a) {
		for (var b = 0; b < a.target.length; b++) a.$el.find(a.target[b]).css(a.property, "");
		a.$el.find("img").off(m.namespace)
	}
	var k = b.Plugin("equalize", {
			widget: !0,
			priority: 5,
			defaults: {
				maxWidth: 1 / 0,
				minWidth: "0px",
				property: "height",
				target: null
			},
			methods: {
				_construct: e,
				_destruct: f,
				_resize: c,
				resize: g
			}
		}),
		l = k.classes,
		m = (l.raw, k.events),
		n = k.functions,
		o = []
}(jQuery, Formstone), /*! formstone v0.8.21 [lightbox.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b, c) {
	"use strict";

	function d() {
		W = b.$body, X = a("html, body")
	}

	function e() {
		Y && j()
	}

	function f(a) {
		this.on(S.click, a, i)
	}

	function g() {
		k(), this.off(S.namespace)
	}

	function h(b, c) {
		b instanceof a && i.apply(U, [{
			data: a.extend(!0, {}, {
				$object: b
			}, P, c || {})
		}])
	}

	function i(c) {
		if (!Y) {
			var d = c.data,
				e = d.$el,
				f = d.$object,
				g = e && e[0].href ? e[0].href || "" : "",
				h = e && e[0].hash ? e[0].hash || "" : "",
				i = g.toLowerCase().split(".").pop().split(/\#|\?/),
				j = i[0],
				l = e ? e.data(O + "-type") : "",
				m = "image" === l || a.inArray(j, d.extensions) > -1 || "data:image" === g.substr(0, 10),
				o = M(g),
				q = "url" === l || !m && !o && "http" === g.substr(0, 4) && !h,
				r = "element" === l || !m && !o && !q && "#" === h.substr(0, 1),
				t = "undefined" != typeof f;
			if (r && (g = h), !(m || o || q || r || t)) return;
			if (T.killEvent(c), Y = a.extend({}, {
					visible: !1,
					gallery: {
						active: !1
					},
					isMobile: b.isMobile || d.mobile,
					isTouch: b.support.touch,
					isAnimating: !0,
					oldContentHeight: 0,
					oldContentWidth: 0
				}, d), Y.touch = d.touch && Y.isMobile && Y.isTouch, Y.margin *= 2, Y.type = m ? "image" : o ? "video" : "element", m || o) {
				var u = e.data(O + "-gallery");
				u && (Y.gallery.active = !0, Y.gallery.id = u, Y.gallery.$items = a("a[data-lightbox-gallery= " + Y.gallery.id + "], a[rel= " + Y.gallery.id + "]"), Y.gallery.index = Y.gallery.$items.index(Y.$el), Y.gallery.total = Y.gallery.$items.length - 1)
			}
			var v = "";
			Y.isMobile || (v += '<div class="' + [Q.raw.overlay, Y.customClass].join(" ") + '"></div>');
			var w = [Q.raw.base, Q.raw.loading, Q.raw.animating, Y.customClass];
			Y.fixed && w.push(Q.raw.fixed), Y.isMobile && w.push(Q.raw.mobile), Y.isTouch && w.push(Q.raw.touch), q && w.push(Q.raw.iframed), (r || t) && w.push(Q.raw.inline), v += '<div class="' + w.join(" ") + '">', v += '<button type="button" class="' + Q.raw.close + '">' + Y.labels.close + "</button>", v += '<span class="' + Q.raw.loading_icon + '"></span>', v += '<div class="' + Q.raw.container + '">', v += '<div class="' + Q.raw.content + '">', (m || o) && (v += '<div class="' + Q.raw.tools + '">', v += '<div class="' + Q.raw.controls + '">', Y.gallery.active && (v += '<button type="button" class="' + [Q.raw.control, Q.raw.control_previous].join(" ") + '">' + Y.labels.previous + "</button>", v += '<button type="button" class="' + [Q.raw.control, Q.raw.control_next].join(" ") + '">' + Y.labels.next + "</button>"), Y.isMobile && Y.isTouch && (v += '<button type="button" class="' + [Q.raw.caption_toggle].join(" ") + '">' + Y.labels.captionClosed + "</button>"), v += "</div>", v += '<div class="' + Q.raw.meta + '">', Y.gallery.active && (v += '<p class="' + Q.raw.position + '"', Y.gallery.total < 1 && (v += ' style="display: none;"'), v += ">", v += '<span class="' + Q.raw.position_current + '">' + (Y.gallery.index + 1) + "</span> ", v += Y.labels.count, v += ' <span class="' + Q.raw.position_total + '">' + (Y.gallery.total + 1) + "</span>", v += "</p>"), v += '<div class="' + Q.raw.caption + '">', v += Y.formatter.call(e, d), v += "</div></div>", v += "</div>"), v += "</div></div></div>", W.append(v), Y.$overlay = a(Q.overlay), Y.$lightbox = a(Q.base), Y.$close = a(Q.close), Y.$container = a(Q.container), Y.$content = a(Q.content), Y.$tools = a(Q.tools), Y.$meta = a(Q.meta), Y.$position = a(Q.position), Y.$caption = a(Q.caption), Y.$controlBox = a(Q.controls), Y.$controls = a(Q.control), Y.isMobile ? (Y.paddingVertical = Y.$close.outerHeight(), Y.paddingHorizontal = 0, Y.mobilePaddingVertical = parseInt(Y.$content.css("paddingTop"), 10) + parseInt(Y.$content.css("paddingBottom"), 10), Y.mobilePaddingHorizontal = parseInt(Y.$content.css("paddingLeft"), 10) + parseInt(Y.$content.css("paddingRight"), 10)) : (Y.paddingVertical = parseInt(Y.$lightbox.css("paddingTop"), 10) + parseInt(Y.$lightbox.css("paddingBottom"), 10), Y.paddingHorizontal = parseInt(Y.$lightbox.css("paddingLeft"), 10) + parseInt(Y.$lightbox.css("paddingRight"), 10), Y.mobilePaddingVertical = 0, Y.mobilePaddingHorizontal = 0), Y.contentHeight = Y.$lightbox.outerHeight() - Y.paddingVertical, Y.contentWidth = Y.$lightbox.outerWidth() - Y.paddingHorizontal, Y.controlHeight = Y.$controls.outerHeight(), n(), Y.gallery.active && (Y.$lightbox.addClass(R.has_controls), E()), V.on(S.keyDown, F), W.on(S.click, [Q.overlay, Q.close].join(", "), k), Y.gallery.active && Y.$lightbox.on(S.click, Q.control, D), Y.isMobile && Y.isTouch && Y.$lightbox.on(S.click, Q.caption_toggle, p), Y.$lightbox.fsTransition({
				property: "opacity"
			}, function() {
				m ? s(g) : o ? A(g) : q ? H(g) : r ? G(g) : t && I(Y.$object)
			}).addClass(Q.raw.open), Y.$overlay.addClass(Q.raw.open)
		}
	}

	function j(a) {
		"object" != typeof a && (Y.targetHeight = arguments[0], Y.targetWidth = arguments[1]), "element" === Y.type ? J(Y.$content.find("> :first-child")) : "image" === Y.type ? y() : "video" === Y.type && B(), m()
	}

	function k(a) {
		T.killEvent(a), Y && (Y.$lightbox.fsTransition("destroy"), Y.$container.fsTransition("destroy"), t(), Y.$lightbox.addClass(Q.raw.animating).fsTransition({
			property: "opacity"
		}, function() {
			Y.$lightbox.off(S.namespace), Y.$container.off(S.namespace), V.off(S.namespace), W.off(S.namespace), Y.$overlay.remove(), Y.$lightbox.remove(), Y = null, V.trigger(S.close)
		}), Y.$lightbox.removeClass(Q.raw.open), Y.$overlay.removeClass(Q.raw.open), Y.isMobile && X.removeClass(R.lock))
	}

	function l() {
		var a = o();
		Y.isMobile ? 0 : Y.duration, Y.isMobile || Y.$controls.css({
			marginTop: (Y.contentHeight - Y.controlHeight - Y.metaHeight) / 2
		}), Y.$lightbox.fsTransition({
			property: Y.contentHeight !== Y.oldContentHeight ? "height" : "width"
		}, function() {
			Y.$container.fsTransition({
				property: "opacity"
			}, function() {
				Y.$lightbox.removeClass(Q.raw.animating), Y.isAnimating = !1
			}), Y.$lightbox.removeClass(Q.raw.loading), Y.visible = !0, V.trigger(S.open), Y.gallery.active && C()
		}), Y.isMobile || Y.$lightbox.css({
			height: Y.contentHeight + Y.paddingVertical,
			width: Y.contentWidth + Y.paddingHorizontal,
			top: Y.fixed ? 0 : a.top
		});
		var b = Y.oldContentHeight !== Y.contentHeight || Y.oldContentWidth !== Y.contentWidth;
		(Y.isMobile || !b) && Y.$lightbox.fsTransition("resolve"), Y.oldContentHeight = Y.contentHeight, Y.oldContentWidth = Y.contentWidth, Y.isMobile && X.addClass(R.lock)
	}

	function m() {
		if (Y.visible && !Y.isMobile) {
			var a = o();
			Y.$controls.css({
				marginTop: (Y.contentHeight - Y.controlHeight - Y.metaHeight) / 2
			}), Y.$lightbox.css({
				height: Y.contentHeight + Y.paddingVertical,
				width: Y.contentWidth + Y.paddingHorizontal,
				top: Y.fixed ? 0 : a.top
			})
		}
	}

	function n() {
		var a = o();
		Y.$lightbox.css({
			top: Y.fixed ? 0 : a.top
		})
	}

	function o() {
		if (Y.isMobile) return {
			left: 0,
			top: 0
		};
		var a = {
			left: (b.windowWidth - Y.contentWidth - Y.paddingHorizontal) / 2,
			top: Y.top <= 0 ? (b.windowHeight - Y.contentHeight - Y.paddingVertical) / 2 : Y.top
		};
		return Y.fixed !== !0 && (a.top += V.scrollTop()), a
	}

	function p(a) {
		T.killEvent(a), Y.captionOpen ? q() : (Y.$lightbox.addClass(Q.raw.caption_open).find(Q.caption_toggle).text(Y.labels.captionOpen), Y.captionOpen = !0)
	}

	function q() {
		Y.$lightbox.removeClass(Q.raw.caption_open).find(Q.caption_toggle).text(Y.labels.captionClosed), Y.captionOpen = !1
	}

	function r() {
		var a = this.attr("title"),
			b = a !== c && a ? a.replace(/^\s+|\s+$/g, "") : !1;
		return b ? '<p class="caption">' + b + "</p>" : ""
	}

	function s(b) {
		Y.hasScaled = !1, Y.$imageContainer = a('<div class="' + Q.raw.image_container + '"><img></div>'), Y.$image = Y.$imageContainer.find("img"), Y.$image.one(S.load, function() {
			var a = L(Y.$image);
			Y.naturalHeight = a.naturalHeight, Y.naturalWidth = a.naturalWidth, Y.retina && (Y.naturalHeight /= 2, Y.naturalWidth /= 2), Y.$content.prepend(Y.$imageContainer), "" === Y.$caption.html() ? (Y.$caption.hide(), Y.$lightbox.removeClass(R.has_caption)) : (Y.$caption.show(), Y.$lightbox.addClass(R.has_caption)), y(), l(), Y.touch && (u(), w({
				scale: 1,
				deltaX: 0,
				deltaY: 0
			}), x(), Y.$container.fsTouch({
				pan: !0,
				scale: !0
			}).on(S.scaleStart, v).on(S.scaleEnd, x).on(S.scale, w))
		}).error(K).attr("src", b).addClass(Q.raw.image), (Y.$image[0].complete || 4 === Y.$image[0].readyState) && Y.$image.trigger(S.load)
	}

	function t() {
		Y.$image && Y.$image.length && Y.$container.fsTouch("destroy")
	}

	function u() {
		Y.scalePosition = Y.$imageContainer.position(), Y.scaleY = Y.scalePosition.top, Y.scaleX = Y.scalePosition.left, Y.scaleHeight = Y.$image.outerHeight(), Y.scaleWidth = Y.$image.outerWidth()
	}

	function v() {
		u(), Y.$lightbox.removeClass(Q.raw.animating)
	}

	function w(a) {
		Y.targetContainerY = Y.scaleY + a.deltaY, Y.targetContainerX = Y.scaleX + a.deltaX, Y.targetImageHeight = Y.scaleHeight * a.scale, Y.targetImageWidth = Y.scaleWidth * a.scale, Y.targetImageHeight < Y.scaleMinHeight && (Y.targetImageHeight = Y.scaleMinHeight), Y.targetImageHeight > Y.scaleMaxHeight && (Y.targetImageHeight = Y.scaleMaxHeight), Y.targetImageWidth < Y.scaleMinWidth && (Y.targetImageWidth = Y.scaleMinWidth), Y.targetImageWidth > Y.scaleMaxWidth && (Y.targetImageWidth = Y.scaleMaxWidth), Y.hasScaled = !0, Y.isScaling = !0, Y.$imageContainer.css({
			top: Y.targetContainerY,
			left: Y.targetContainerX
		}), Y.$image.css({
			height: Y.targetImageHeight,
			width: Y.targetImageWidth,
			top: -(Y.targetImageHeight / 2),
			left: -(Y.targetImageWidth / 2)
		})
	}

	function x() {
		u(), Y.isScaling = !1;
		var a = Y.$container.outerHeight() - Y.metaHeight,
			b = Y.$container.outerWidth();
		Y.scaleMinY = a - Y.scaleHeight / 2, Y.scaleMinX = b - Y.scaleWidth / 2, Y.scaleMaxY = Y.scaleHeight / 2, Y.scaleMaxX = Y.scaleWidth / 2, Y.scaleHeight < a ? Y.scalePosition.top = a / 2 : (Y.scalePosition.top < Y.scaleMinY && (Y.scalePosition.top = Y.scaleMinY), Y.scalePosition.top > Y.scaleMaxY && (Y.scalePosition.top = Y.scaleMaxY)), Y.scaleWidth < b ? Y.scalePosition.left = b / 2 : (Y.scalePosition.left < Y.scaleMinX && (Y.scalePosition.left = Y.scaleMinX), Y.scalePosition.left > Y.scaleMaxX && (Y.scalePosition.left = Y.scaleMaxX)), Y.$lightbox.addClass(Q.raw.animating), Y.$imageContainer.css({
			left: Y.scalePosition.left,
			top: Y.scalePosition.top
		})
	}

	function y() {
		var a = 0;
		for (Y.windowHeight = Y.viewportHeight = b.windowHeight - Y.mobilePaddingVertical - Y.paddingVertical, Y.windowWidth = Y.viewportWidth = b.windowWidth - Y.mobilePaddingHorizontal - Y.paddingHorizontal, Y.contentHeight = 1 / 0, Y.contentWidth = 1 / 0, Y.imageMarginTop = 0, Y.imageMarginLeft = 0; Y.contentHeight > Y.viewportHeight && 2 > a;) Y.imageHeight = 0 === a ? Y.naturalHeight : Y.$image.outerHeight(), Y.imageWidth = 0 === a ? Y.naturalWidth : Y.$image.outerWidth(), Y.metaHeight = 0 === a ? 0 : Y.metaHeight, Y.spacerHeight = 0 === a ? 0 : Y.spacerHeight, 0 === a && (Y.ratioHorizontal = Y.imageHeight / Y.imageWidth, Y.ratioVertical = Y.imageWidth / Y.imageHeight, Y.isWide = Y.imageWidth > Y.imageHeight), Y.imageHeight < Y.minHeight && (Y.minHeight = Y.imageHeight), Y.imageWidth < Y.minWidth && (Y.minWidth = Y.imageWidth), Y.isMobile ? (Y.isTouch ? (Y.$controlBox.css({
			width: b.windowWidth
		}), Y.spacerHeight = Y.$controls.outerHeight(!0)) : (Y.$tools.css({
			width: b.windowWidth
		}), Y.spacerHeight = Y.$tools.outerHeight(!0)), Y.contentHeight = Y.viewportHeight, Y.contentWidth = Y.viewportWidth, z(), Y.imageMarginTop = (Y.contentHeight - Y.targetImageHeight - Y.spacerHeight) / 2, Y.imageMarginLeft = (Y.contentWidth - Y.targetImageWidth) / 2) : (0 === a && (Y.viewportHeight -= Y.margin + Y.paddingVertical, Y.viewportWidth -= Y.margin + Y.paddingHorizontal), Y.viewportHeight -= Y.metaHeight, z(), Y.contentHeight = Y.targetImageHeight, Y.contentWidth = Y.targetImageWidth), Y.isMobile || Y.isTouch || Y.$meta.css({
			width: Y.contentWidth
		}), Y.hasScaled || (Y.$image.css({
			height: Y.targetImageHeight,
			width: Y.targetImageWidth
		}), Y.$image.css(Y.touch ? {
			top: -(Y.targetImageHeight / 2),
			left: -(Y.targetImageWidth / 2)
		} : {
			marginTop: Y.imageMarginTop,
			marginLeft: Y.imageMarginLeft
		})), Y.isMobile || (Y.metaHeight = Y.$meta.outerHeight(!0), Y.contentHeight += Y.metaHeight), a++;
		Y.touch && (Y.scaleMinHeight = Y.targetImageHeight, Y.scaleMinWidth = Y.targetImageWidth, Y.scaleMaxHeight = Y.naturalHeight, Y.scaleMaxWidth = Y.naturalWidth)
	}

	function z() {
		var a = Y.isMobile ? Y.contentHeight - Y.spacerHeight : Y.viewportHeight,
			b = Y.isMobile ? Y.contentWidth : Y.viewportWidth;
		Y.isWide ? (Y.targetImageWidth = b, Y.targetImageHeight = Y.targetImageWidth * Y.ratioHorizontal, Y.targetImageHeight > a && (Y.targetImageHeight = a, Y.targetImageWidth = Y.targetImageHeight * Y.ratioVertical)) : (Y.targetImageHeight = a, Y.targetImageWidth = Y.targetImageHeight * Y.ratioVertical, Y.targetImageWidth > b && (Y.targetImageWidth = b, Y.targetImageHeight = Y.targetImageWidth * Y.ratioHorizontal)), (Y.targetImageWidth > Y.imageWidth || Y.targetImageHeight > Y.imageHeight) && (Y.targetImageHeight = Y.imageHeight, Y.targetImageWidth = Y.imageWidth), (Y.targetImageWidth < Y.minWidth || Y.targetImageHeight < Y.minHeight) && (Y.targetImageWidth < Y.minWidth ? (Y.targetImageWidth = Y.minWidth, Y.targetImageHeight = Y.targetImageWidth * Y.ratioHorizontal) : (Y.targetImageHeight = Y.minHeight, Y.targetImageWidth = Y.targetImageHeight * Y.ratioVertical))
	}

	function A(b) {
		var c = b.match(/(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/ ]{11})/i),
			d = b.match(/(?:www\.|player\.)?vimeo.com\/(?:channels\/(?:\w+\/)?|groups\/([^\/]*)\/videos\/|album\/(\d+)\/video\/|video\/|)(\d+)(?:$|\/|\?)/),
			e = b.split("?"),
			f = null !== c ? "//www.youtube.com/embed/" + c[1] : "//player.vimeo.com/video/" + d[3];
		e.length >= 2 && (f += "?" + e.slice(1)[0].trim()), Y.$videoWrapper = a('<div class="' + Q.raw.video_wrapper + '"></div>'), Y.$video = a('<iframe class="' + Q.raw.video + '" frameborder="0" seamless="seamless" allowfullscreen></iframe>'), Y.$video.attr("src", f).addClass(Q.raw.video).prependTo(Y.$videoWrapper), Y.$content.prepend(Y.$videoWrapper), B(), l()
	}

	function B() {
		Y.windowHeight = Y.viewportHeight = b.windowHeight - Y.mobilePaddingVertical - Y.paddingVertical, Y.windowWidth = Y.viewportWidth = b.windowWidth - Y.mobilePaddingHorizontal - Y.paddingHorizontal, Y.videoMarginTop = 0, Y.videoMarginLeft = 0, Y.isMobile ? (Y.isTouch ? (Y.$controlBox.css({
			width: b.windowWidth
		}), Y.spacerHeight = Y.$controls.outerHeight(!0)) : (Y.$tools.css({
			width: b.windowWidth
		}), Y.spacerHeight = Y.$tools.outerHeight(!0)), Y.viewportHeight -= Y.spacerHeight, Y.targetVideoWidth = Y.viewportWidth, Y.targetVideoHeight = Y.targetVideoWidth * Y.videoRatio, Y.targetVideoHeight > Y.viewportHeight && (Y.targetVideoHeight = Y.viewportHeight, Y.targetVideoWidth = Y.targetVideoHeight / Y.videoRatio), Y.videoMarginTop = (Y.viewportHeight - Y.targetVideoHeight) / 2, Y.videoMarginLeft = (Y.viewportWidth - Y.targetVideoWidth) / 2) : (Y.viewportHeight = Y.windowHeight - Y.margin, Y.viewportWidth = Y.windowWidth - Y.margin, Y.targetVideoWidth = Y.videoWidth > Y.viewportWidth ? Y.viewportWidth : Y.videoWidth, Y.targetVideoWidth < Y.minWidth && (Y.targetVideoWidth = Y.minWidth), Y.targetVideoHeight = Y.targetVideoWidth * Y.videoRatio, Y.contentHeight = Y.targetVideoHeight, Y.contentWidth = Y.targetVideoWidth), Y.isMobile || Y.isTouch || Y.$meta.css({
			width: Y.contentWidth
		}), Y.$videoWrapper.css({
			height: Y.targetVideoHeight,
			width: Y.targetVideoWidth,
			marginTop: Y.videoMarginTop,
			marginLeft: Y.videoMarginLeft
		}), Y.isMobile || (Y.metaHeight = Y.$meta.outerHeight(!0), Y.contentHeight = Y.targetVideoHeight + Y.metaHeight)
	}

	function C() {
		var b = "";
		Y.gallery.index > 0 && (b = Y.gallery.$items.eq(Y.gallery.index - 1).attr("href"), M(b) || a('<img src="' + b + '">')), Y.gallery.index < Y.gallery.total && (b = Y.gallery.$items.eq(Y.gallery.index + 1).attr("href"), M(b) || a('<img src="' + b + '">'))
	}

	function D(b) {
		T.killEvent(b);
		var c = a(b.currentTarget);
		Y.isAnimating || c.hasClass(Q.raw.control_disabled) || (Y.isAnimating = !0, t(), q(), Y.gallery.index += c.hasClass(Q.raw.control_next) ? 1 : -1, Y.gallery.index > Y.gallery.total && (Y.gallery.index = Y.infinite ? 0 : Y.gallery.total), Y.gallery.index < 0 && (Y.gallery.index = Y.infinite ? Y.gallery.total : 0), Y.$lightbox.addClass(Q.raw.animating), Y.$container.fsTransition({
			property: "opacity"
		}, function() {
			"undefined" != typeof Y.$image && Y.$image.remove(), "undefined" != typeof Y.$videoWrapper && Y.$videoWrapper.remove(), Y.$el = Y.gallery.$items.eq(Y.gallery.index), Y.$caption.html(Y.formatter.call(Y.$el, Y)), Y.$position.find(Q.position_current).html(Y.gallery.index + 1);
			var a = Y.$el.attr("href"),
				b = M(a);
			b ? A(a) : s(a), E()
		}), Y.$lightbox.addClass(Q.raw.loading))
	}

	function E() {
		Y.$controls.removeClass(Q.raw.control_disabled), Y.infinite || (0 === Y.gallery.index && Y.$controls.filter(Q.control_previous).addClass(R.control_disabled), Y.gallery.index === Y.gallery.total && Y.$controls.filter(Q.control_next).addClass(R.control_disabled))
	}

	function F(a) {
		!Y.gallery.active || 37 !== a.keyCode && 39 !== a.keyCode ? 27 === a.keyCode && Y.$close.trigger(S.click) : (T.killEvent(a), Y.$controls.filter(37 === a.keyCode ? Q.control_previous : Q.control_next).trigger(S.click))
	}

	function G(b) {
		var c = a(b).find("> :first-child").clone();
		I(c)
	}

	function H(b) {
		b += b.indexOf("?") > -1 ? "&" + Y.requestKey + "=true" : "?" + Y.requestKey + "=true";
		var c = a('<iframe class="' + Q.raw.iframe + '" src="' + b + '"></iframe>');
		I(c)
	}

	function I(a) {
		Y.$content.append(a), J(a), l()
	}

	function J(a) {
		Y.windowHeight = b.windowHeight - Y.mobilePaddingVertical - Y.paddingVertical, Y.windowWidth = b.windowWidth - Y.mobilePaddingHorizontal - Y.paddingHorizontal, Y.objectHeight = a.outerHeight(!0), Y.objectWidth = a.outerWidth(!0), Y.targetHeight = Y.targetHeight || (Y.$el ? Y.$el.data(O + "-height") : null), Y.targetWidth = Y.targetWidth || (Y.$el ? Y.$el.data(O + "-width") : null), Y.maxHeight = Y.windowHeight < 0 ? Y.minHeight : Y.windowHeight, Y.isIframe = a.is("iframe"), Y.objectMarginTop = 0, Y.objectMarginLeft = 0, Y.isMobile || (Y.windowHeight -= Y.margin, Y.windowWidth -= Y.margin), Y.contentHeight = Y.targetHeight ? Y.targetHeight : Y.isIframe || Y.isMobile ? Y.windowHeight : Y.objectHeight, Y.contentWidth = Y.targetWidth ? Y.targetWidth : Y.isIframe || Y.isMobile ? Y.windowWidth : Y.objectWidth, (Y.isIframe || Y.isObject) && Y.isMobile ? (Y.contentHeight = Y.windowHeight, Y.contentWidth = Y.windowWidth) : Y.isObject && (Y.contentHeight = Y.contentHeight > Y.windowHeight ? Y.windowHeight : Y.contentHeight, Y.contentWidth = Y.contentWidth > Y.windowWidth ? Y.windowWidth : Y.contentWidth)
	}

	function K() {
		var b = a('<div class="' + Q.raw.error + '"><p>Error Loading Resource</p></div>');
		Y.type = "element", Y.$tools.remove(), Y.$image.off(S.namespace), I(b)
	}

	function L(a) {
		var b = a[0],
			c = new Image;
		return "undefined" != typeof b.naturalHeight ? {
			naturalHeight: b.naturalHeight,
			naturalWidth: b.naturalWidth
		} : "img" === b.tagName.toLowerCase() ? (c.src = b.src, {
			naturalHeight: c.height,
			naturalWidth: c.width
		}) : !1
	}

	function M(a) {
		return a.indexOf("youtube.com") > -1 || a.indexOf("youtu.be") > -1 || a.indexOf("vimeo.com") > -1
	}
	var N = b.Plugin("lightbox", {
			widget: !0,
			defaults: {
				customClass: "",
				extensions: ["jpg", "sjpg", "jpeg", "png", "gif"],
				fixed: !1,
				formatter: r,
				infinite: !1,
				labels: {
					close: "Close",
					count: "of",
					next: "Next",
					previous: "Previous",
					captionClosed: "View Caption",
					captionOpen: "Close Caption"
				},
				margin: 50,
				minHeight: 100,
				minWidth: 100,
				mobile: !1,
				retina: !1,
				requestKey: "fs-lightbox",
				top: 0,
				touch: !0,
				videoRatio: .5625,
				videoWidth: 800
			},
			classes: ["loading", "animating", "fixed", "mobile", "touch", "inline", "iframed", "open", "overlay", "close", "loading_icon", "container", "content", "image", "image_container", "video", "video_wrapper", "tools", "meta", "controls", "control", "control_previous", "control_next", "control_disabled", "position", "position_current", "position_total", "caption_toggle", "caption", "caption_open", "has_controls", "has_caption", "iframe", "error", "lock"],
			events: {
				open: "open",
				close: "close"
			},
			methods: {
				_setup: d,
				_construct: f,
				_destruct: g,
				_resize: e,
				resize: j
			},
			utilities: {
				_initialize: h,
				close: k
			}
		}),
		O = N.namespace,
		P = N.defaults,
		Q = N.classes,
		R = Q.raw,
		S = N.events,
		T = N.functions,
		U = b.window,
		V = b.$window,
		W = null,
		X = null,
		Y = null
}(jQuery, Formstone), /*! formstone v0.8.21 [mediaquery.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(b) {
		b = b || {};
		for (var c in t) t.hasOwnProperty(c) && (l[c] = b[c] ? a.merge(b[c], l[c]) : l[c]);
		l = a.extend(l, b), l.minWidth.sort(p.sortDesc), l.maxWidth.sort(p.sortAsc), l.minHeight.sort(p.sortDesc), l.maxHeight.sort(p.sortAsc);
		for (var d in t)
			if (t.hasOwnProperty(d)) {
				s[d] = {};
				for (var e in l[d])
					if (l[d].hasOwnProperty(e)) {
						var f = window.matchMedia("(" + t[d] + ": " + (l[d][e] === 1 / 0 ? 1e5 : l[d][e]) + l.unit + ")");
						f.addListener(g), s[d][l[d][e]] = f
					}
			}
		g()
	}

	function d(a, b, c) {
		var d = o.matchMedia(b),
			e = i(d.media);
		r[e] || (r[e] = {
			mq: d,
			active: !0,
			enter: {},
			leave: {}
		}, r[e].mq.addListener(h));
		for (var f in c) c.hasOwnProperty(f) && r[e].hasOwnProperty(f) && (r[e][f][a] = c[f]);
		h(r[e].mq)
	}

	function e(a, b) {
		if (a)
			if (b) {
				var c = i(b);
				r[c] && (r[c].enter[a] && delete r[c].enter[a], r[c].leave[a] && delete r[c].leave[a])
			} else
				for (var d in r) r.hasOwnProperty(d) && (r[d].enter[a] && delete r[d].enter[a], r[d].leave[a] && delete r[d].leave[a])
	}

	function f() {
		q = {
			unit: l.unit
		};
		for (var a in t)
			if (t.hasOwnProperty(a))
				for (var b in s[a])
					if (s[a].hasOwnProperty(b) && s[a][b].matches) {
						var c = "Infinity" === b ? 1 / 0 : parseInt(b, 10);
						a.indexOf("max") > -1 ? (!q[a] || c < q[a]) && (q[a] = c) : (!q[a] || c > q[a]) && (q[a] = c)
					}
	}

	function g() {
		f(), n.trigger(m.mqChange, [q])
	}

	function h(a) {
		var b = i(a.media),
			c = r[b],
			d = a.matches ? m.enter : m.leave;
		if (c && c.active || !c.active && a.matches) {
			for (var e in c[d]) c[d].hasOwnProperty(e) && c[d][e].apply(c.mq);
			c.active = !0
		}
	}

	function i(a) {
		return a.replace(/[^a-z0-9\s]/gi, "").replace(/[_\s]/g, "").replace(/^\s+|\s+$/g, "")
	}

	function j() {
		return q
	}
	var k = b.Plugin("mediaquery", {
			utilities: {
				_initialize: c,
				state: j,
				bind: d,
				unbind: e
			},
			events: {
				mqChange: "mqchange"
			}
		}),
		l = {
			minWidth: [0],
			maxWidth: [1 / 0],
			minHeight: [0],
			maxHeight: [1 / 0],
			unit: "px"
		},
		m = a.extend(k.events, {
			enter: "enter",
			leave: "leave"
		}),
		n = b.$window,
		o = n[0],
		p = k.functions,
		q = null,
		r = [],
		s = {},
		t = {
			minWidth: "min-width",
			maxWidth: "max-width",
			minHeight: "min-height",
			maxHeight: "max-height"
		}
}(jQuery, Formstone), /*! formstone v0.8.21 [pagination.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(b) {
		b.mq = "(max-width:" + (b.maxWidth === 1 / 0 ? "100000px" : b.maxWidth) + ")";
		var c = "";
		c += '<button type="button" class="' + [m.control, m.control_previous].join(" ") + '">' + b.labels.previous + "</button>", c += '<button type="button" class="' + [m.control, m.control_next].join(" ") + '">' + b.labels.next + "</button>", c += '<div class="' + m.position + '">', c += '<span class="' + m.current + '">0</span>', c += " " + b.labels.count + " ", c += '<span class="' + m.total + '">0</span>', c += "</div>", c += '<select class="' + m.select + '" tab-index="-1"></select>', this.addClass(m.base).wrapInner('<div class="' + m.pages + '"></div>').prepend(c), b.$controls = this.find(l.control), b.$pages = this.find(l.pages), b.$items = b.$pages.children().addClass(m.page), b.$position = this.find(l.position), b.$select = this.find(l.select), b.index = -1, b.total = b.$items.length - 1;
		var d = b.$items.index(b.$items.filter(l.active));
		b.$items.eq(0).addClass(m.first).after('<span class="' + m.ellipsis + '">&hellip;</span>').end().eq(b.total).addClass(m.last).before('<span class="' + m.ellipsis + '">&hellip;</span>'), b.$ellipsis = b.$pages.find(l.ellipsis), j(b), this.on(n.click, l.page, b, g).on(n.click, l.control, b, e).on(n.click, l.position, b, h).on(n.change, l.select, f), a.fsMediaquery("bind", b.rawGuid, b.mq, {
			enter: function() {
				b.$el.addClass(m.mobile)
			},
			leave: function() {
				b.$el.removeClass(m.mobile)
			}
		}), i(b, d)
	}

	function d(b) {
		a.fsMediaquery("unbind", b.rawGuid), b.$controls.remove(), b.$ellipsis.remove(), b.$select.remove(), b.$position.remove(), b.$items.removeClass([m.page, m.active, m.visible, m.first, m.last].join(" ")).unwrap(), this.removeClass(m.base).off(n.namespace)
	}

	function e(b) {
		o.killEvent(b);
		var c = b.data,
			d = c.index + (a(b.currentTarget).hasClass(m.control_previous) ? -1 : 1);
		d >= 0 && c.$items.eq(d).trigger(n.raw.click)
	}

	function f(b) {
		o.killEvent(b);
		var c = b.data,
			d = a(b.currentTarget),
			e = parseInt(d.val(), 10);
		c.$items.eq(e).trigger(n.raw.click)
	}

	function g(b) {
		o.killEvent(b);
		var c = b.data,
			d = c.$items.index(a(b.currentTarget));
		i(c, d)
	}

	function h(a) {
		o.killEvent(a);
		var c = a.data;
		if (b.isMobile && !b.isFirefoxMobile) {
			var d = c.$select[0];
			if (window.document.createEvent) {
				var e = window.document.createEvent("MouseEvents");
				e.initMouseEvent("mousedown", !1, !0, window, 0, 0, 0, 0, 0, !1, !1, !1, !1, 0, null), d.dispatchEvent(e)
			} else d.fireEvent && d.fireEvent("onmousedown")
		}
	}

	function i(a, b) {
		if (0 > b && (b = 0), b > a.total && (b = a.total), b !== a.index) {
			a.index = b;
			var c = a.index - a.visible,
				d = a.index + (a.visible + 1);
			0 > c && (c = 0), d > a.total && (d = a.total), a.$items.removeClass(m.visible).filter(l.active).removeClass(m.active).end().eq(a.index).addClass(m.active).end().slice(c, d).addClass(m.visible), a.$position.find(l.current).text(a.index + 1).end().find(l.total).text(a.total + 1), a.$select.val(a.index), a.$controls.removeClass(l.disabled), 0 === b && a.$controls.filter(l.control_previous).addClass(m.disabled), b === a.total && a.$controls.filter(l.control_next).addClass(m.disabled), a.$ellipsis.removeClass(m.visible), b > a.visible + 1 && a.$ellipsis.eq(0).addClass(m.visible), b < a.total - a.visible - 1 && a.$ellipsis.eq(1).addClass(m.visible), a.$el.trigger(n.update, [a.index])
		}
	}

	function j(a) {
		for (var b = "", c = 0; c <= a.total; c++) b += '<option value="' + c + '"', c === a.index && (b += 'selected="selected"'), b += ">Page " + (c + 1) + "</option>";
		a.$select.html(b)
	}
	var k = b.Plugin("pagination", {
			widget: !0,
			defaults: {
				ajax: !1,
				customClass: "",
				labels: {
					count: "of",
					next: "Next",
					previous: "Previous"
				},
				maxWidth: "740px",
				visible: 2
			},
			classes: ["pages", "page", "active", "first", "last", "visible", "ellipsis", "control", "control_previous", "control_next", "position", "select", "mobile", "current", "total"],
			events: {
				update: "update"
			},
			methods: {
				_construct: c,
				_destruct: d
			}
		}),
		l = k.classes,
		m = l.raw,
		n = k.events,
		o = k.functions
}(jQuery, Formstone), /*! formstone v0.8.21 [navigation.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c() {
		w = a("html, body")
	}

	function d(b) {
		b.handleGuid = u.handle + b.guid, b.isToggle = "toggle" === b.type, b.open = !1, b.isToggle && (b.gravity = "");
		var c = u.base,
			d = [c, b.type].join("-"),
			e = b.gravity ? [d, b.gravity].join("-") : "",
			f = [b.rawGuid, b.customClass].join(" ");
		b.handle = this.data(s + "-handle"), b.content = this.data(s + "-content"), b.handleClasses = [u.handle, u.handle.replace(c, d), e ? u.handle.replace(c, e) : "", b.handleGuid, f].join(" "), b.navClasses = [u.nav.replace(c, d), e ? u.nav.replace(c, e) : "", f].join(" "), b.contentClasses = [u.content.replace(c, d), f].join(" "), b.contentClassesOpen = [e ? u.content.replace(c, e) : "", u.open].join(" "), b.$nav = this.addClass(b.navClasses), b.$handle = a(b.handle).addClass(b.handleClasses), b.$content = a(b.content).addClass(b.contentClasses), b.$animate = a().add(b.$nav).add(b.$content), p(b), b.$handle.attr("data-swap-target", b.dotGuid).attr("data-swap-linked", b.handleGuid).attr("data-swap-group", u.base).on("activate.swap" + b.dotGuid, b, j).on("deactivate.swap" + b.dotGuid, b, k).on("enable.swap" + b.dotGuid, b, l).on("disable.swap" + b.dotGuid, b, m).fsSwap({
			maxWidth: b.maxWidth,
			classes: {
				target: b.dotGuid,
				enabled: t.enabled,
				active: t.open,
				raw: {
					target: b.rawGuid,
					enabled: u.enabled,
					active: u.open
				}
			}
		})
	}

	function e(a) {
		a.$content.removeClass([a.contentClasses, a.contentClassesOpen].join(" ")).off(v.namespace), a.$handle.removeAttr("data-swap-target").removeData("swap-target").removeAttr("data-swap-linked").removeData("swap-linked").removeClass(a.handleClasses).off(a.dotGuid).text(a.originalLabel).fsSwap("destroy"), q(a), o(a), this.removeClass(a.navClasses).off(v.namespace)
	}

	function f(a) {
		a.$handle.fsSwap("activate")
	}

	function g(a) {
		a.$handle.fsSwap("deactivate")
	}

	function h(a) {
		a.$handle.fsSwap("enable")
	}

	function i(a) {
		a.$handle.fsSwap("disable")
	}

	function j(a) {
		if (!a.originalEvent) {
			var b = a.data;
			b.open || (b.$el.trigger(v.open), b.$content.addClass(b.contentClassesOpen).one(v.click, function() {
				g(b)
			}), b.label && b.$handle.text(b.labels.open), n(b), b.open = !0)
		}
	}

	function k(a) {
		if (!a.originalEvent) {
			var b = a.data;
			b.open && (b.$el.trigger(v.close), b.$content.removeClass(b.contentClassesOpen).off(v.namespace), b.label && b.$handle.text(b.labels.closed), o(b), b.open = !1)
		}
	}

	function l(a) {
		var b = a.data;
		b.$content.addClass(u.enabled), setTimeout(function() {
			b.$animate.addClass(u.animated)
		}, 0), b.label && b.$handle.text(b.labels.closed)
	}

	function m(a) {
		var b = a.data;
		b.$content.removeClass(u.enabled, u.animated), b.$animate.removeClass(u.animated), q(b), o(b)
	}

	function n(a) {
		a.isToggle || w.addClass(u.lock)
	}

	function o(a) {
		a.isToggle || w.removeClass(u.lock)
	}

	function p(a) {
		if (a.label)
			if (a.$handle.length > 1) {
				a.originalLabel = [];
				for (var b = 0, c = a.$handle.length; c > b; b++) a.originalLabel[b] = a.$handle.eq(b).text()
			} else a.originalLabel = a.$handle.text()
	}

	function q(a) {
		if (a.label)
			if (a.$handle.length > 1)
				for (var b = 0, c = a.$handle.length; c > b; b++) a.$handle.eq(b).text(a.originalLabel[b]);
			else a.$handle.text(a.originalLabel)
	}
	var r = b.Plugin("navigation", {
			widget: !0,
			defaults: {
				customClass: "",
				gravity: "left",
				label: !0,
				labels: {
					closed: "菜单",
					open: "关闭"
				},
				maxWidth: "980px",
				type: "toggle"
			},
			classes: ["handle", "nav", "content", "animated", "enabled", "open", "toggle", "push", "reveal", "overlay", "left", "right", "lock"],
			events: {
				open: "open",
				close: "close"
			},
			methods: {
				_setup: c,
				_construct: d,
				_destruct: e,
				open: f,
				close: g,
				enable: h,
				disable: i
			}
		}),
		s = r.namespace,
		t = r.classes,
		u = t.raw,
		v = r.events,
		w = (r.functions, null)
}(jQuery, Formstone), /*! formstone v0.8.21 [number.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c() {
		s = b.$body
	}

	function d(a) {
		var b = parseFloat(this.attr("min")),
			c = parseFloat(this.attr("max"));
		a.min = b || 0 === b ? b : !1, a.max = c || 0 === c ? c : !1, a.step = parseFloat(this.attr("step")) || 1, a.timer = null, a.digits = l(a.step), a.disabled = this.prop("disabled");
		var d = "";
		d += '<button type="button" class="' + [p.arrow, p.up].join(" ") + '">' + a.labels.up + "</button>", d += '<button type="button" class="' + [p.arrow, p.down].join(" ") + '">' + a.labels.down + "</button>", this.wrap('<div class="' + [p.base, a.customClass, a.disabled ? p.disabled : ""].join(" ") + '"></div>').after(d), a.$container = this.parent(o.base), a.$arrows = a.$container.find(o.arrow), this.on(q.keyPress, o.element, a, h), a.$container.on([q.touchStart, q.mouseDown].join(" "), o.arrow, a, i)
	}

	function e(a) {
		a.$arrows.remove(), this.unwrap().off(q.namespace)
	}

	function f(a) {
		a.disabled && (this.prop("disabled", !1), a.$container.removeClass(p.disabled), a.disabled = !1)
	}

	function g(a) {
		a.disabled || (this.prop("disabled", !0), a.$container.addClass(p.disabled), a.disabled = !0)
	}

	function h(a) {
		var b = a.data;
		(38 === a.keyCode || 40 === a.keyCode) && (a.preventDefault(), k(b, 38 === a.keyCode ? b.step : -b.step))
	}

	function i(b) {
		r.killEvent(b), j(b);
		var c = b.data;
		if (!c.disabled) {
			var d = a(b.target).hasClass(p.up) ? c.step : -c.step;
			c.timer = r.startTimer(c.timer, 110, function() {
				k(c, d, !1)
			}, !0), k(c, d), s.on([q.touchEnd, q.mouseUp].join(" "), c, j)
		}
	}

	function j(a) {
		r.killEvent(a);
		var b = a.data;
		r.clearTimer(b.timer, !0), s.off(q.namespace)
	}

	function k(b, c) {
		var d = parseFloat(b.$el.val()),
			e = c;
		"undefined" === a.type(d) || isNaN(d) ? e = b.min !== !1 ? b.min : 0 : b.min !== !1 && d < b.min ? e = b.min : e += d;
		var f = (e - b.min) % b.step;
		0 !== f && (e -= f), b.min !== !1 && e < b.min && (e = b.min), b.max !== !1 && e > b.max && (e -= b.step), e !== d && (e = m(e, b.digits), b.$el.val(e).trigger(q.raw.change))
	}

	function l(a) {
		var b = String(a);
		return b.indexOf(".") > -1 ? b.length - b.indexOf(".") - 1 : 0
	}

	function m(a, b) {
		var c = Math.pow(10, b);
		return Math.round(a * c) / c
	}
	var n = b.Plugin("number", {
			widget: !0,
			defaults: {
				customClass: "",
				labels: {
					up: "Up",
					down: "Down"
				}
			},
			classes: ["arrow", "up", "down", "disabled"],
			methods: {
				_setup: c,
				_construct: d,
				_destruct: e,
				enable: f,
				disable: g
			},
			events: {}
		}),
		o = n.classes,
		p = o.raw,
		q = n.events,
		r = n.functions,
		s = null
}(jQuery, Formstone), /*! formstone v0.8.21 [range.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c() {
		v.iterate.call(w, i)
	}

	function d() {
		w = a(s.element)
	}

	function e(a) {
		a.formatter || (a.formatter = q), a.min = parseFloat(this.attr("min")) || 0, a.max = parseFloat(this.attr("max")) || 100, a.step = parseFloat(this.attr("step")) || 1, a.digits = a.step.toString().length - a.step.toString().indexOf("."), a.value = parseFloat(this.val()) || a.min + (a.max - a.min) / 2;
		var b = "";
		a.vertical = "vertical" === this.attr("orient") || a.vertical, a.disabled = this.is(":disabled"), b += '<div class="' + t.track + '">', a.fill && (b += '<span class="' + t.fill + '"></span>'), b += '<div class="' + t.handle + '">', b += '<span class="' + t.marker + '"></span>', b += "</div>", b += "</div>";
		var c = [t.base, a.customClass, a.vertical ? t.vertical : "", a.labels ? t.labels : "", a.disabled ? t.disabled : ""];
		if (this.addClass(t.element).wrap('<div class="' + c.join(" ") + '"></div>').after(b), a.$container = this.parents(s.base), a.$track = a.$container.find(s.track), a.$fill = a.$container.find(s.fill), a.$handle = a.$container.find(s.handle), a.$output = a.$container.find(s.output), a.labels) {
			var e = '<span class="' + [t.label, t.label_max].join(" ") + '">' + a.formatter.call(this, a.labels.max ? a.labels.max : a.max) + "</span>",
				f = '<span class="' + [t.label, t.label_min].join(" ") + '">' + a.formatter.call(this, a.labels.max ? a.labels.min : a.min) + "</span>";
			a.$container.prepend(a.vertical ? e : f).append(a.vertical ? f : e)
		}
		a.$labels = a.$container.find(s.label), this.on(u.focus, a, m).on(u.blur, a, n).on(u.change, a, p), a.$container.fsTouch({
			pan: !0,
			axis: a.vertical ? "y" : "x"
		}).on(u.panStart, a, j).on(u.pan, a, k).on(u.panEnd, a, l), d(), i.call(this, a)
	}

	function f(a) {
		a.$container.off(u.namespace).fsTouch("destroy"), a.$track.remove(), a.$labels.remove(), this.unwrap().removeClass(t.element).off(u.namespace), d()
	}

	function g(a) {
		a.disabled && (this.prop("disabled", !1), a.$container.removeClass(t.disabled), a.disabled = !1)
	}

	function h(a) {
		a.disabled || (this.prop("disabled", !0), a.$container.addClass(t.disabled), a.disabled = !0)
	}

	function i(a) {
		a.stepCount = (a.max - a.min) / a.step, a.offset = a.$track.offset(), a.vertical ? (a.trackHeight = a.$track.outerHeight(), a.handleHeight = a.$handle.outerHeight(), a.increment = a.trackHeight / a.stepCount) : (a.trackWidth = a.$track.outerWidth(), a.handleWidth = a.$handle.outerWidth(), a.increment = a.trackWidth / a.stepCount);
		var b = (a.$el.val() - a.min) / (a.max - a.min);
		o(a, b, !0)
	}

	function j(a) {
		v.killEvent(a);
		var b = a.data;
		b.disabled || (k(a), b.$container.addClass(t.focus))
	}

	function k(a) {
		v.killEvent();
		var b = a.data,
			c = 0;
		b.disabled || (c = b.vertical ? 1 - (a.pageY - b.offset.top) / b.trackHeight : (a.pageX - b.offset.left) / b.trackWidth, o(b, c))
	}

	function l(a) {
		v.killEvent(a);
		var b = a.data;
		b.disabled || b.$container.removeClass(t.focus)
	}

	function m(a) {
		a.data.$container.addClass("focus")
	}

	function n(a) {
		a.data.$container.removeClass("focus")
	}

	function o(a, b, c) {
		a.increment > 1 && (b = a.vertical ? Math.round(b * a.stepCount) * a.increment / a.trackHeight : Math.round(b * a.stepCount) * a.increment / a.trackWidth), 0 > b && (b = 0), b > 1 && (b = 1);
		var d = (a.min - a.max) * b;
		d = -parseFloat(d.toFixed(a.digits)), a.$fill.css(a.vertical ? "height" : "width", 100 * b + "%"), a.$handle.css(a.vertical ? "bottom" : "left", 100 * b + "%"), d += a.min, d !== a.value && d && c !== !0 && (a.$el.val(d).trigger(u.change, [!0]), a.value = d)
	}

	function p(a, b) {
		var c = a.data;
		if (!b && !c.disabled) {
			var d = (c.$el.val() - c.min) / (c.max - c.min);
			o(c, d)
		}
	}

	function q(a) {
		var b = a.toString().split(".");
		return b[0] = b[0].replace(/\B(?=(\d{3})+(?!\d))/g, ","), b.join(".")
	}
	var r = b.Plugin("range", {
			widget: !0,
			defaults: {
				customClass: "",
				fill: !1,
				formatter: !1,
				labels: {
					max: !1,
					min: !1
				},
				vertical: !1
			},
			classes: ["track", "handle", "fill", "marker", "labels", "label", "label_min", "label_max", "vertical", "focus", "disabled"],
			methods: {
				_construct: e,
				_destruct: f,
				_resize: c,
				enable: g,
				disable: h,
				resize: i
			}
		}),
		s = r.classes,
		t = s.raw,
		u = r.events,
		v = r.functions,
		w = []
}(jQuery, Formstone), /*! formstone v0.8.21 [scrollbar.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c() {
		q = b.$body
	}

	function d() {
		v.iterate.call(w, i)
	}

	function e() {
		w = a(s.base)
	}

	function f(a) {
		var b = "";
		b += '<div class="' + t.bar + '">', b += '<div class="' + t.track + '">', b += '<span class="' + t.handle + '"></span>', b += "</div></div>", a.paddingRight = parseInt(this.css("padding-right"), 10), a.paddingBottom = parseInt(this.css("padding-bottom"), 10), this.addClass([t.base, a.customClass, a.horizontal ? t.horizontal : ""].join(" ")).wrapInner('<div class="' + t.content + '" />').prepend(b), a.$content = this.find(s.content), a.$bar = this.find(s.bar), a.$track = this.find(s.track), a.$handle = this.find(s.handle), a.trackMargin = parseInt(a.trackMargin, 10), a.$content.on(u.scroll, a, j), a.mouseWheel && a.$content.on("DOMMouseScroll" + u.namespace + " mousewheel" + u.namespace, a, k), a.$track.fsTouch({
			axis: a.horizontal ? "x" : "y",
			pan: !0
		}).on(u.panStart, a, m).on(u.pan, a, n).on(u.panEnd, a, o), i(a), e()
	}

	function g(a) {
		a.$track.fsTouch("destroy"), a.$bar.remove(), a.$content.off(u.namespace).contents().unwrap(), this.removeClass([t.base, t.active, a.customClass].join(" ")).off(u.namespace)
	}

	function h(b, c, d) {
		var e = d || b.duration,
			f = {};
		if ("number" !== a.type(c)) {
			var g = a(c);
			if (g.length > 0) {
				var h = g.position();
				c = b.horizontal ? h.left + b.$content.scrollLeft() : h.top + b.$content.scrollTop()
			} else c = "top" === c ? 0 : "bottom" === c ? b.horizontal ? b.$content[0].scrollWidth : b.$content[0].scrollHeight : b.$content.scrollTop()
		}
		f[b.horizontal ? "scrollLeft" : "scrollTop"] = c, b.$content.stop().animate(f, e)
	}

	function i(a) {
		a.$el.addClass(t.isSetup);
		var b = {},
			c = {},
			d = {},
			e = 0,
			f = !0;
		if (a.horizontal) {
			a.barHeight = a.$content[0].offsetHeight - a.$content[0].clientHeight, a.frameWidth = a.$content.outerWidth(), a.trackWidth = a.frameWidth - 2 * a.trackMargin, a.scrollWidth = a.$content[0].scrollWidth, a.ratio = a.trackWidth / a.scrollWidth, a.trackRatio = a.trackWidth / a.scrollWidth, a.handleWidth = a.handleSize > 0 ? a.handleSize : a.trackWidth * a.trackRatio, a.scrollRatio = (a.scrollWidth - a.frameWidth) / (a.trackWidth - a.handleWidth), a.handleBounds = {
				left: 0,
				right: a.trackWidth - a.handleWidth
			}, a.$content.css({
				paddingBottom: a.barHeight + a.paddingBottom
			});
			var g = a.$content.scrollLeft();
			e = g * a.ratio, f = a.scrollWidth <= a.frameWidth, b = {
				width: a.frameWidth
			}, c = {
				width: a.trackWidth,
				marginLeft: a.trackMargin,
				marginRight: a.trackMargin
			}, d = {
				width: a.handleWidth
			}
		} else {
			a.barWidth = a.$content[0].offsetWidth - a.$content[0].clientWidth, a.frameHeight = a.$content.outerHeight(), a.trackHeight = a.frameHeight - 2 * a.trackMargin, a.scrollHeight = a.$content[0].scrollHeight, a.ratio = a.trackHeight / a.scrollHeight, a.trackRatio = a.trackHeight / a.scrollHeight, a.handleHeight = a.handleSize > 0 ? a.handleSize : a.trackHeight * a.trackRatio, a.scrollRatio = (a.scrollHeight - a.frameHeight) / (a.trackHeight - a.handleHeight), a.handleBounds = {
				top: 0,
				bottom: a.trackHeight - a.handleHeight
			};
			var h = a.$content.scrollTop();
			e = h * a.ratio, f = a.scrollHeight <= a.frameHeight, b = {
				height: a.frameHeight
			}, c = {
				height: a.trackHeight,
				marginBottom: a.trackMargin,
				marginTop: a.trackMargin
			}, d = {
				height: a.handleHeight
			}
		}
		f ? a.$el.removeClass(t.active) : a.$el.addClass(t.active), a.$bar.css(b), a.$track.css(c), a.$handle.css(d), a.panning = !1, p(a, e), j({
			data: a
		}), a.$el.removeClass(t.setup)
	}

	function j(a) {
		v.killEvent(a);
		var b = a.data,
			c = {};
		if (!b.panning) {
			if (b.horizontal) {
				var d = b.$content.scrollLeft();
				0 > d && (d = 0), b.handleLeft = d / b.scrollRatio, b.handleLeft > b.handleBounds.right && (b.handleLeft = b.handleBounds.right), c = {
					left: b.handleLeft
				}
			} else {
				var e = b.$content.scrollTop();
				0 > e && (e = 0), b.handleTop = e / b.scrollRatio, b.handleTop > b.handleBounds.bottom && (b.handleTop = b.handleBounds.bottom), c = {
					top: b.handleTop
				}
			}
			b.$handle.css(c)
		}
	}

	function k(a) {
		var b, c, d = a.data;
		if (d.horizontal) {
			var e = d.$content[0].scrollLeft,
				f = d.$content[0].scrollWidth,
				g = d.$content.outerWidth();
			if (b = "DOMMouseScroll" === a.type ? -40 * a.originalEvent.detail : a.originalEvent.wheelDelta, c = b > 0 ? "right" : "left", "left" === c && -b > f - g - e) return d.$content.scrollLeft(f), l(a);
			if ("right" === c && b > e) return d.$content.scrollLeft(0), l(a)
		} else {
			var h = d.$content[0].scrollTop,
				i = d.$content[0].scrollHeight,
				j = d.$content.outerHeight();
			if (b = "DOMMouseScroll" === a.type ? -40 * a.originalEvent.detail : a.originalEvent.wheelDelta, c = b > 0 ? "up" : "down", "down" === c && -b > i - j - h) return d.$content.scrollTop(i), l(a);
			if ("up" === c && b > h) return d.$content.scrollTop(0), l(a)
		}
	}

	function l(a) {
		return v.killEvent(a), a.returnValue = !1, !1
	}

	function m(a) {
		var b, c = a.data,
			d = c.$track.offset();
		c.panning = !0, b = c.horizontal ? c.handleLeft = a.pageX - d.left - c.handleWidth / 2 : c.handleTop = a.pageY - d.top - c.handleHeight / 2, p(c, b)
	}

	function n(a) {
		var b, c = a.data;
		b = c.horizontal ? c.handleLeft + a.deltaX : c.handleTop + a.deltaY, p(c, b)
	}

	function o(a) {
		var b = a.data;
		b.panning = !1, b.horizontal ? b.handleLeft += a.deltaX : b.handleTop += a.deltaY
	}

	function p(a, b) {
		var c = {};
		a.horizontal ? (b < a.handleBounds.left && (b = a.handleBounds.left), b > a.handleBounds.right && (b = a.handleBounds.right), c = {
			left: b
		}, a.$content.scrollLeft(Math.round(b * a.scrollRatio))) : (b < a.handleBounds.top && (b = a.handleBounds.top), b > a.handleBounds.bottom && (b = a.handleBounds.bottom), c = {
			top: b
		}, a.$content.scrollTop(Math.round(b * a.scrollRatio))), a.$handle.css(c)
	}
	var q, r = b.Plugin("scrollbar", {
			widget: !0,
			defaults: {
				customClass: "",
				duration: 0,
				handleSize: 0,
				horizontal: !1,
				mouseWheel: !0,
				trackMargin: 0
			},
			classes: ["content", "bar", "track", "handle", "horizontal", "setup", "active"],
			methods: {
				_setup: c,
				_construct: f,
				_destruct: g,
				_resize: d,
				scroll: h,
				resize: i
			}
		}),
		s = r.classes,
		t = s.raw,
		u = r.events,
		v = r.functions,
		w = (b.$window, [])
}(jQuery, Formstone), /*! formstone v0.8.21 [swap.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(b) {
		b.enabled = !1, b.active = !1, b.classes = a.extend(!0, {}, m, b.classes), b.target = this.data(l + "-target"), b.$target = a(b.target).addClass(b.classes.raw.target), b.mq = "(max-width:" + (b.maxWidth === 1 / 0 ? "100000px" : b.maxWidth) + ")";
		var c = this.data(l + "-linked");
		b.linked = c ? "[data-" + l + '-linked="' + c + '"]' : !1;
		var d = this.data(l + "-group");
		b.group = d ? "[data-" + l + '-group="' + d + '"]' : !1, b.$swaps = a().add(this).add(b.$target), this.on(n.click + b.dotGuid, b, j)
	}

	function d(b) {
		b.collapse || !b.group || a(b.group).filter("[data-" + l + "-active]").length || a(b.group).eq(0).attr("data-" + l + "-active", "true"), b.onEnable = this.data(l + "-active") || !1, a.fsMediaquery("bind", b.rawGuid, b.mq, {
			enter: function() {
				h.call(b.$el, b, !0)
			},
			leave: function() {
				i.call(b.$el, b, !0)
			}
		})
	}

	function e(b) {
		a.fsMediaquery("unbind", b.rawGuid), b.$swaps.removeClass([b.classes.raw.enabled, b.classes.raw.active].join(" ")).off(n.namespace)
	}

	function f(b, c) {
		if (b.enabled && !b.active) {
			b.group && !c && a(b.group).not(b.$el).not(b.linked)[k.namespaceClean]("deactivate", !0);
			var d = b.group ? a(b.group).index(b.$el) : null;
			b.$swaps.addClass(b.classes.raw.active), c || (b.linked && a(b.linked).not(b.$el)[k.namespaceClean]("activate", !0), this.trigger(n.activate, [d])), b.active = !0
		}
	}

	function g(b, c) {
		b.enabled && b.active && (b.$swaps.removeClass(b.classes.raw.active), c || (b.linked && a(b.linked).not(b.$el)[k.namespaceClean]("deactivate", !0), this.trigger(n.deactivate)), b.active = !1)
	}

	function h(b, c) {
		b.enabled || (b.enabled = !0, b.$swaps.addClass(b.classes.raw.enabled), c || a(b.linked).not(b.$el)[k.namespaceClean]("enable"), this.trigger(n.enable), b.onEnable ? (b.active = !0, b.$swaps.addClass(b.classes.raw.active)) : (b.active = !0, g.call(this, b)))
	}

	function i(b, c) {
		b.enabled && (b.enabled = !1, b.$swaps.removeClass([b.classes.raw.enabled, b.classes.raw.active].join(" ")), c || a(b.linked).not(b.$el)[k.namespaceClean]("disable"), this.trigger(n.disable))
	}

	function j(a) {
		o.killEvent(a);
		var b = a.data;
		b.active && b.collapse ? g.call(b.$el, b) : f.call(b.$el, b)
	}
	var k = b.Plugin("swap", {
			widget: !0,
			defaults: {
				collapse: !0,
				maxWidth: 1 / 0
			},
			classes: ["target", "enabled", "active"],
			events: {
				activate: "activate",
				deactivate: "deactivate",
				enable: "enable",
				disable: "disable"
			},
			methods: {
				_construct: c,
				_postConstruct: d,
				_destruct: e,
				activate: f,
				deactivate: g,
				enable: h,
				disable: i
			}
		}),
		l = k.namespace,
		m = k.classes,
		n = k.events,
		o = k.functions
}(jQuery, Formstone), /*! formstone v0.8.21 [tabs.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(c) {
		c.mq = "(max-width:" + (c.mobileMaxWidth === 1 / 0 ? "100000px" : c.mobileMaxWidth) + ")", c.content = this.attr("href"), c.group = this.data(q + "-group"), c.tabClasses = [s.tab, c.rawGuid].join(" "), c.mobileTabClasses = [s.tab, s.tab_mobile, c.rawGuid].join(" "), c.contentClasses = [s.content, c.rawGuid].join(" "), c.$mobileTab = a('<button type="button" class="' + c.mobileTabClasses + '">' + this.text() + "</button>"), c.$content = a(c.content).addClass(c.contentClasses), c.$content.before(c.$mobileTab);
		var d = b.window.location.hash,
			e = !1,
			f = !1;
		d.length && (e = this.filter("[href*=" + d + "]").length > 0, f = c.group && a("[data-" + q + '-group="' + c.group + '"]').filter("[href*=" + d + "]").length > 0), e ? this.attr("data-swap-active", "true") : f ? this.removeAttr("data-swap-active").removeData("data-swap-active") : "true" === this.attr("data-tabs-active") && this.attr("data-swap-active", "true"), this.attr("data-swap-target", c.content).attr("data-swap-group", c.group).addClass(c.tabClasses).on("activate.swap" + c.dotGuid, c, i).on("deactivate.swap" + c.dotGuid, c, j).on("enable.swap" + c.dotGuid, c, k).on("disable.swap" + c.dotGuid, c, l)
	}

	function d(b) {
		this.fsSwap({
			maxWidth: b.maxWidth,
			classes: {
				target: b.dotGuid,
				enabled: r.enabled,
				active: r.active,
				raw: {
					target: b.rawGuid,
					enabled: s.enabled,
					active: s.active
				}
			},
			collapse: !1
		}), b.$mobileTab.on("click" + b.dotGuid, b, m), a.fsMediaquery("bind", b.rawGuid, b.mq, {
			enter: function() {
				n.call(b.$el, b)
			},
			leave: function() {
				o.call(b.$el, b)
			}
		})
	}

	function e(b) {
		a.fsMediaquery("unbind", b.rawGuid), b.$mobileTab.off(t.namespace).remove(), b.$content.removeClass(s.content), this.removeAttr("data-swap-active").removeData("data-swap-active").removeAttr("data-swap-target").removeData("data-swap-target").removeAttr("data-swap-group").removeData("data-swap-group").removeClass(s.tab).off(t.namespace).fsSwap("destroy")
	}

	function f() {
		this.fsSwap("activate")
	}

	function g() {
		this.fsSwap("enable")
	}

	function h() {
		this.fsSwap("disable")
	}

	function i(a) {
		if (!a.originalEvent) {
			var b = a.data,
				c = 0;
			b.$el.trigger(t.update, [c]), b.$mobileTab.addClass(s.active), b.$content.addClass(s.active)
		}
	}

	function j(a) {
		if (!a.originalEvent) {
			var b = a.data;
			b.$mobileTab.removeClass(s.active), b.$content.removeClass(s.active)
		}
	}

	function k(a) {
		var b = a.data;
		b.$mobileTab.addClass(s.enabled), b.$content.addClass(s.enabled)
	}

	function l(a) {
		var b = a.data;
		b.$mobileTab.removeClass(s.enabled), b.$content.removeClass(s.enabled)
	}

	function m(a) {
		a.data.$el.fsSwap("activate")
	}

	function n(a) {
		a.$el.addClass(s.mobile), a.$mobileTab.addClass(s.mobile)
	}

	function o(a) {
		a.$el.removeClass(s.mobile), a.$mobileTab.removeClass(s.mobile)
	}
	var p = b.Plugin("tabs", {
			widget: !0,
			defaults: {
				customClass: "",
				maxWidth: 1 / 0,
				mobileMaxWidth: "740px",
				vertical: !1
			},
			classes: ["tab", "tab_mobile", "mobile", "content", "enabled", "active"],
			events: {
				update: "update"
			},
			methods: {
				_construct: c,
				_postConstruct: d,
				_destruct: e,
				activate: f,
				enable: g,
				disable: h
			}
		}),
		q = p.namespace,
		r = p.classes,
		s = r.raw,
		t = p.events;
	p.functions
}(jQuery, Formstone), /*! formstone v0.8.21 [tooltip.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(a) {
		this.on(o.mouseEnter, a, e)
	}

	function d() {
		j(), this.off(o.namespace)
	}

	function e(a) {
		j();
		var b = a.data;
		b.left = a.pageX, b.top = a.pageY, h(b)
	}

	function f(a) {
		var b = a.data;
		p.clearTimer(b.timer), j()
	}

	function g(a) {
		i(a.pageX, a.pageY)
	}

	function h(c) {
		j();
		var d = "";
		d += '<div class="', d += [n.base, n[c.direction], c.customClass].join(" "), d += '">', d += '<div class="' + n.content + '">', d += c.formatter.call(c.$el, c), d += '<span class="' + n.caret + '"></span>', d += "</div>", d += "</div>", q = {
			$tooltip: a(d),
			$el: c.$el
		}, b.$body.append(q.$tooltip);
		var e = q.$tooltip.find(m.content),
			h = q.$tooltip.find(m.caret),
			k = c.$el.offset(),
			l = c.$el.outerHeight(),
			r = c.$el.outerWidth(),
			s = 0,
			t = 0,
			u = 0,
			v = 0,
			w = !1,
			x = !1,
			y = h.outerHeight(!0),
			z = h.outerWidth(!0),
			A = e.outerHeight(!0),
			B = e.outerWidth(!0);
		"right" === c.direction || "left" === c.direction ? (x = (A - y) / 2, v = -A / 2, "right" === c.direction ? u = c.margin : "left" === c.direction && (u = -(B + c.margin))) : (w = (B - z) / 2, u = -B / 2, "bottom" === c.direction ? v = c.margin : "top" === c.direction && (v = -(A + c.margin))), e.css({
			top: v,
			left: u
		}), h.css({
			top: x,
			left: w
		}), c.follow ? c.$el.on(o.mouseMove, c, g) : (c.match ? "right" === c.direction || "left" === c.direction ? (t = c.top, "right" === c.direction ? s = k.left + r : "left" === c.direction && (s = k.left)) : (s = c.left, "bottom" === c.direction ? t = k.top + l : "top" === c.direction && (t = k.top)) : "right" === c.direction || "left" === c.direction ? (t = k.top + l / 2, "right" === c.direction ? s = k.left + r : "left" === c.direction && (s = k.left)) : (s = k.left + r / 2, "bottom" === c.direction ? t = k.top + l : "top" === c.direction && (t = k.top)), i(s, t)), c.timer = p.startTimer(c.timer, c.delay, function() {
			q.$tooltip.addClass(n.visible)
		}), c.$el.one(o.mouseLeave, c, f)
	}

	function i(a, b) {
		q && q.$tooltip.css({
			left: a,
			top: b
		})
	}

	function j() {
		q && (q.$el.off([o.mouseMove, o.mouseLeave].join(" ")), q.$tooltip.remove(), q = null)
	}

	function k() {
		return this.data("title")
	}
	var l = b.Plugin("tooltip", {
			widget: !0,
			defaults: {
				customClass: "",
				delay: 0,
				direction: "top",
				follow: !1,
				formatter: k,
				margin: 15,
				match: !1
			},
			classes: ["content", "caret", "visible", "top", "bottom", "right", "left"],
			methods: {
				_construct: c,
				_destruct: d
			}
		}),
		m = l.classes,
		n = m.raw,
		o = l.events,
		p = l.functions,
		q = null
}(jQuery, Formstone), /*! formstone v0.8.21 [touch.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(a) {
		a.touches = [], a.touching = !1, this.on(r.dragStart, s.killEvent), a.tap ? (a.pan = !1, a.scale = !1, a.swipe = !1, this.on(r.touchStart, a, f).on(r.click, a, k), b.support.touch && b.support.pointer && this.on(r.pointerDown, a, f)) : (a.pan || a.swipe || a.scale) && (a.tap = !1, a.swipe && (a.pan = !0), a.scale && (a.axis = !1), a.axis ? (a.axisX = "x" === a.axis, a.axisY = "y" === a.axis) : o(this, "none"), this.on(r.touchStart, a, e).on(r.mouseDown, a, f), b.support.touch && b.support.pointer && this.on(r.pointerDown, a, e))
	}

	function d() {
		this.off(r.namespace), o(this, "")
	}

	function e(a) {
		a.preventManipulation && a.preventManipulation();
		var b = a.data,
			c = a.originalEvent;
		if (c.type.match(/(up|end|cancel)$/i)) return void j(a);
		if (c.pointerId) {
			var d = !1;
			for (var e in b.touches) b.touches[e].id === c.pointerId && (d = !0, b.touches[e].pageX = c.clientX, b.touches[e].pageY = c.clientY);
			d || b.touches.push({
				id: c.pointerId,
				pageX: c.clientX,
				pageY: c.clientY
			})
		} else b.touches = c.touches;
		c.type.match(/(down|start)$/i) ? f(a) : c.type.match(/move$/i) && g(a)
	}

	function f(b) {
		var c = b.data,
			d = "undefined" !== a.type(c.touches) ? c.touches[0] : null;
		if (c.touching || (c.startE = b.originalEvent, c.startX = d ? d.pageX : b.pageX, c.startY = d ? d.pageY : b.pageY, c.startT = (new Date).getTime(), c.scaleD = 1, c.passed = !1), c.tap) c.clicked = !1, c.$el.on([r.touchMove, r.pointerMove].join(" "), c, e).on([r.touchEnd, r.touchCancel, r.pointerUp, r.pointerCancel].join(" "), c, e);
		else if (c.pan || c.scale) {
			c.$links && c.$links.off(r.click);
			var f = l(c.scale ? r.scaleStart : r.panStart, b, c.startX, c.startY, c.scaleD, 0, 0, "", "");
			if (c.scale && c.touches && c.touches.length >= 2) {
				var h = c.touches;
				c.pinch = {
					startX: m(h[0].pageX, h[1].pageX),
					startY: m(h[0].pageY, h[1].pageY),
					startD: n(h[1].pageX - h[0].pageX, h[1].pageY - h[0].pageY)
				}, f.pageX = c.startX = c.pinch.startX, f.pageY = c.startY = c.pinch.startY
			}
			c.touching || (c.touching = !0, c.pan && t.on(r.mouseMove, c, g).on(r.mouseUp, c, j), t.on([r.touchMove, r.touchEnd, r.touchCancel, r.pointerMove, r.pointerUp, r.pointerCancel].join(" "), c, e), c.$el.trigger(f))
		}
	}

	function g(b) {
		var c = b.data,
			d = "undefined" !== a.type(c.touches) ? c.touches[0] : null,
			e = d ? d.pageX : b.pageX,
			f = d ? d.pageY : b.pageY,
			g = e - c.startX,
			h = f - c.startY,
			i = g > 0 ? "right" : "left",
			k = h > 0 ? "down" : "up",
			o = Math.abs(g) > u,
			p = Math.abs(h) > u;
		if (c.tap)(o || p) && c.$el.off([r.touchMove, r.touchEnd, r.touchCancel, r.pointerMove, r.pointerUp, r.pointerCancel].join(" "));
		else if (c.pan || c.scale)
			if (!c.passed && c.axis && (c.axisX && p || c.axisY && o)) j(b);
			else {
				!c.passed && (!c.axis || c.axis && c.axisX && o || c.axisY && p) && (c.passed = !0), c.passed && (s.killEvent(b), s.killEvent(c.startE));
				var q = !0,
					t = l(c.scale ? r.scale : r.pan, b, e, f, c.scaleD, g, h, i, k);
				if (c.scale)
					if (c.touches && c.touches.length >= 2) {
						var v = c.touches;
						c.pinch.endX = m(v[0].pageX, v[1].pageX), c.pinch.endY = m(v[0].pageY, v[1].pageY), c.pinch.endD = n(v[1].pageX - v[0].pageX, v[1].pageY - v[0].pageY), c.scaleD = c.pinch.endD / c.pinch.startD, t.pageX = c.pinch.endX, t.pageY = c.pinch.endY, t.scale = c.scaleD, t.deltaX = c.pinch.endX - c.pinch.startX, t.deltaY = c.pinch.endY - c.pinch.startY
					} else c.pan || (q = !1);
				q && c.$el.trigger(t)
			}
	}

	function h(b, c) {
		b.on(r.click, c, i);
		var d = a._data(b[0], "events").click;
		d.unshift(d.pop())
	}

	function i(a) {
		s.killEvent(a, !0), a.data.$links.off(r.click)
	}

	function j(b) {
		var c = b.data;
		if (c.tap) c.$el.off([r.touchMove, r.touchEnd, r.touchCancel, r.pointerMove, r.pointerUp, r.pointerCancel, r.mouseMove, r.mouseUp].join(" ")), c.startE.preventDefault(), k(b);
		else if (c.pan || c.scale) {
			var d = "undefined" !== a.type(c.touches) ? c.touches[0] : null,
				e = d ? d.pageX : b.pageX,
				f = d ? d.pageY : b.pageY,
				g = e - c.startX,
				i = f - c.startY,
				j = (new Date).getTime(),
				m = c.scale ? r.scaleEnd : r.panEnd,
				n = g > 0 ? "right" : "left",
				o = i > 0 ? "down" : "up",
				p = Math.abs(g) > 1,
				q = Math.abs(i) > 1;
			if (c.swipe && Math.abs(g) > u && j - c.startT < v && (m = r.swipe), c.axis && (c.axisX && q || c.axisY && p) || p || q) {
				c.$links = c.$el.find("a");
				for (var s = 0, w = c.$links.length; w > s; s++) h(c.$links.eq(s), c)
			}
			var x = l(m, b, e, f, c.scaleD, g, i, n, o);
			t.off([r.touchMove, r.touchEnd, r.touchCancel, r.mouseMove, r.mouseUp, r.pointerMove, r.pointerUp, r.pointerCancel].join(" ")), c.$el.trigger(x), c.touches = [], c.scale
		}
		c.touching = !1
	}

	function k(a) {
		s.killEvent(a);
		var b = a.data,
			c = a.type;
		if ("click" === c || !b.clicked) {
			"click" !== c && (b.clicked = !0);
			var d = b.startE ? b.startX : a.pageX,
				e = b.startE ? b.startY : a.pageY,
				f = l(r.tap, a.originalEvent, d, e, 1, 0, 0);
			b.$el.trigger(f)
		}
	}

	function l(b, c, d, e, f, g, h, i, j) {
		return a.Event(b, {
			originalEvent: c,
			bubbles: !0,
			pageX: d,
			pageY: e,
			scale: f,
			deltaX: g,
			deltaY: h,
			directionX: i,
			directionY: j
		})
	}

	function m(a, b) {
		return (a + b) / 2
	}

	function n(a, b) {
		return Math.sqrt(a * a + b * b)
	}

	function o(a, b) {
		a.css({
			"-ms-touch-action": b,
			"touch-action": b
		})
	}
	var p = !b.window.PointerEvent,
		q = b.Plugin("touch", {
			widget: !0,
			defaults: {
				axis: !1,
				pan: !1,
				scale: !1,
				swipe: !1,
				tap: !1
			},
			methods: {
				_construct: c,
				_destruct: d
			},
			events: {
				pointerDown: p ? "MSPointerDown" : "pointerdown",
				pointerUp: p ? "MSPointerUp" : "pointerup",
				pointerMove: p ? "MSPointerMove" : "pointermove",
				pointerCancel: p ? "MSPointerCancel" : "pointercancel"
			}
		}),
		r = q.events,
		s = q.functions,
		t = b.$window,
		u = 10,
		v = 50;
	r.tap = "tap", r.pan = "pan", r.panStart = "panstart", r.panEnd = "panend", r.scale = "scale", r.scaleStart = "scalestart", r.scaleEnd = "scaleend", r.swipe = "swipe"
}(jQuery, Formstone), /*! formstone v0.8.21 [transition.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(a, c) {
		if (c) {
			a.$target = this.find(a.target), a.$check = a.target ? a.$target : this, a.callback = c, a.styles = h(a.$check), a.timer = null;
			var d = a.$check.css(b.transition + "-duration"),
				f = parseFloat(d);
			b.support.transition && d && f ? this.on(k.transitionEnd, a, e) : a.timer = l.startTimer(a.timer, 50, function() {
				g(a)
			}, !0)
		}
	}

	function d(a) {
		l.clearTimer(a.timer, !0), this.off(k.namespace)
	}

	function e(b) {
		b.stopPropagation(), b.preventDefault();
		var c = b.data,
			d = b.originalEvent,
			e = c.target ? c.$target : c.$el;
		c.property && d.propertyName !== c.property || !a(d.target).is(e) || f(c)
	}

	function f(a) {
		a.always || a.$el[j.namespaceClean]("destroy"), a.callback.apply(a.$el)
	}

	function g(a) {
		var b = h(a.$check);
		i(a.styles, b) || f(a), a.styles = b
	}

	function h(b) {
		var c, d, e, f = {};
		if (b instanceof a && (b = b[0]), m.getComputedStyle) {
			c = m.getComputedStyle(b, null);
			for (var g = 0, h = c.length; h > g; g++) d = c[g], e = c.getPropertyValue(d), f[d] = e
		} else if (b.currentStyle) {
			c = b.currentStyle;
			for (d in c) c[d] && (f[d] = c[d])
		}
		return f
	}

	function i(b, c) {
		if (a.type(b) !== a.type(c)) return !1;
		for (var d in b)
			if (!b.hasOwnProperty(d) || !c.hasOwnProperty(d) || b[d] !== c[d]) return !1;
		return !0
	}
	var j = b.Plugin("transition", {
			widget: !0,
			defaults: {
				always: !1,
				property: null,
				target: null
			},
			methods: {
				_construct: c,
				_destruct: d,
				resolve: f
			}
		}),
		k = j.events,
		l = j.functions,
		m = b.window
}(jQuery, Formstone), /*! formstone v0.8.21 [upload.js] 2015-10-10 | MIT License | formstone.it */ ! function(a, b) {
	"use strict";

	function c(a) {
		if (b.support.file) {
			var c = "";
			c += '<div class="' + t.target + '">', c += a.label, c += "</div>", c += '<input class="' + t.input + '" type="file"', a.multiple && (c += " multiple"), c += ">", this.addClass(t.base).append(c), a.$input = this.find(s.input), a.queue = [], a.total = 0, a.uploading = !1, a.disabled = !0, a.aborting = !1, this.on(u.click, s.target, a, i).on(u.dragEnter, a, k).on(u.dragOver, a, l).on(u.dragLeave, a, m).on(u.drop, s.target, a, n), a.$input.on(u.change, a, j), h.call(this, a)
		}
	}

	function d(a) {
		b.support.file && (a.$input.off(u.namespace), this.off([u.click, u.dragEnter, u.dragOver, u.dragLeave, u.drop].join(" ")).removeClass(t.base).html(""))
	}

	function e(b, c) {
		var d;
		b.aborting = !0;
		for (var e in b.queue) b.queue.hasOwnProperty(e) && (d = b.queue[e], ("undefined" === a.type(c) || c >= 0 && d.index === c) && (d.started && !d.complete ? d.transfer.abort() : f(b, d, "abort")));
		b.aborting = !1, p(b)
	}

	function f(a, b, c) {
		b.error = !0, a.$el.trigger(u.fileError, [b, c]), a.aborting || p(a)
	}

	function g(a) {
		a.disabled || (this.addClass(t.disabled), a.$input.prop("disabled", !0), a.disabled = !0)
	}

	function h(a) {
		a.disabled && (this.removeClass(t.disabled), a.$input.prop("disabled", !1), a.disabled = !1)
	}

	function i(a) {
		v.killEvent(a);
		var b = a.data;
		b.disabled || b.$input.trigger(u.click)
	}

	function j(a) {
		v.killEvent(a);
		var b = a.data,
			c = b.$input[0].files;
		!b.disabled && c.length && o(b, c)
	}

	function k(a) {
		v.killEvent(a);
		var b = a.data;
		b.$el.addClass(t.dropping)
	}

	function l(a) {
		v.killEvent(a);
		var b = a.data;
		b.$el.addClass(t.dropping)
	}

	function m(a) {
		v.killEvent(a);
		var b = a.data;
		b.$el.removeClass(t.dropping)
	}

	function n(a) {
		v.killEvent(a);
		var b = a.data,
			c = a.originalEvent.dataTransfer.files;
		b.$el.removeClass(t.dropping), b.disabled || o(b, c)
	}

	function o(a, b) {
		for (var c = [], d = 0; d < b.length; d++) {
			var e = {
				index: a.total++,
				file: b[d],
				name: b[d].name,
				size: b[d].size,
				started: !1,
				complete: !1,
				error: !1,
				transfer: null
			};
			c.push(e), a.queue.push(e)
		}
		a.uploading || (x.on(u.beforeUnload, function() {
			return a.leave
		}), a.uploading = !0), a.$el.trigger(u.start, [c]), p(a)
	}

	function p(a) {
		var b = 0,
			c = [];
		for (var d in a.queue) !a.queue.hasOwnProperty(d) || a.queue[d].complete || a.queue[d].error || c.push(a.queue[d]);
		a.queue = c;
		for (var e in a.queue)
			if (a.queue.hasOwnProperty(e)) {
				if (!a.queue[e].started) {
					var f = new FormData;
					f.append(a.postKey, a.queue[e].file);
					for (var g in a.postData) a.postData.hasOwnProperty(g) && f.append(g, a.postData[g]);
					q(a, f, a.queue[e])
				}
				if (b++, b >= a.maxQueue) return;
				d++
			}
		0 === b && (x.off(u.beforeUnload), a.uploading = !1, a.$el.trigger(u.complete))
	}

	function q(b, c, d) {
		c = b.beforeSend.call(w, c, d), d.size >= b.maxSize || c === !1 || d.error === !0 ? f(b, d, c ? "size" : "abort") : (d.started = !0, d.transfer = a.ajax({
			url: b.action,
			data: c,
			dataType: b.dataType,
			type: "POST",
			contentType: !1,
			processData: !1,
			cache: !1,
			xhr: function() {
				var c = a.ajaxSettings.xhr();
				return c.upload && c.upload.addEventListener("progress", function(a) {
					var c = 0,
						e = a.loaded || a.position,
						f = a.total;
					a.lengthComputable && (c = Math.ceil(e / f * 100)), b.$el.trigger(u.fileProgress, [d, c])
				}, !1), c
			},
			beforeSend: function() {
				b.$el.trigger(u.fileStart, [d])
			},
			success: function(a) {
				d.complete = !0, b.$el.trigger(u.fileComplete, [d, a]), p(b)
			},
			error: function(a, c, e) {
				f(b, d, e)
			}
		}))
	}
	var r = b.Plugin("upload", {
			widget: !0,
			defaults: {
				action: "",
				beforeSend: function(a) {
					return a
				},
				customClass: "",
				dataType: "html",
				label: "Drag and drop files or click to select",
				leave: "You have uploads pending, are you sure you want to leave this page?",
				maxQueue: 2,
				maxSize: 5242880,
				multiple: !0,
				postData: {},
				postKey: "file"
			},
			classes: ["input", "target", "multiple", "dropping", "disabled"],
			methods: {
				_construct: c,
				_destruct: d,
				disable: g,
				enable: h,
				abort: e
			}
		}),
		s = r.classes,
		t = s.raw,
		u = r.events,
		v = r.functions,
		w = b.window,
		x = b.$window;
	u.complete = "complete", u.fileStart = "filestart", u.fileProgress = "fileprogress", u.fileComplete = "filecomplete", u.fileError = "fileerror", u.start = "start"
}(jQuery, Formstone);
var IE8 = IE8 || !1,
	IE9 = IE9 || !1,
	Site = function(a, b) {
		function c() {
			d = a(b), e = a(document), f = a("html"), g = a("body"), a.mediaquery({
				minWidth: [320, 500, 740, 980, 1220],
				maxWidth: [1220, 980, 740, 500, 320],
				minHeight: [400, 800],
				maxHeight: [800, 400]
			}), a.analytics({
				scrollDepth: !0
			}), a("[class*=lang-]").each(function() {
				a(this).addClass(a(this).attr("class").replace("lang-", "language-"))
			}), a("table").wrap('<div class="table_wrapper"></div>'), a("pre").wrap('<div class="pre_wrapper"></div>'), f.hasClass("canvas") && Prism.highlightAll(), a(".js-navigation").navigation().on("open.navigation", function() {
				a.analytics("event", {
					eventCategory: "MainNav",
					eventAction: "Open"
				})
			}).on("close.navigation", function() {
				a.analytics("event", {
					eventCategory: "MainNav",
					eventAction: "Close"
				})
			}), a(".intro ul").navigation(), a(".js-dropdown").dropdown()
		}
		var d, e, f, g;
		return {
			init: c
		}
	}(jQuery, window);
$(document).ready(Site.init);