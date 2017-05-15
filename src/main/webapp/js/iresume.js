// 教育背景
function placeholderFn() {
    placeholderSupport() || $("[placeholder]").focus(function() {
        var a = $(this);
        a.val() == a.attr("placeholder") && (a.val(""), a.removeClass("placeholder"))
    }).blur(function() {
        var a = $(this); ("" == a.val() || a.val() == a.attr("placeholder")) && (a.addClass("placeholder"), a.val(a.attr("placeholder")))
    }).blur(),
    "" === $("[placeholder]").value && ($("[placeholder]").value = $("[placeholder]").attr("placeholder"))
}
function placeholderSupport() {
    return "placeholder" in document.createElement("input")
}
function openYear(a) {
    $(".profile_select_normal").removeClass("select_focus"),
    $(".boxUpDown").hide(),
    $(".select_" + a).addClass("select_focus"),
    $(".box_" + a).show()
}
function selectYear(a, b) {
    $(".select_" + a).val(b).css("color", "#333").removeClass("select_focus"),
    $("." + a).val(b),
    $(".box_" + a).hide()
}

function img_check(a, b, c) {
    var a = $("#" + c);
    this.AllowExt = ".jpg,.gif,.jpeg,.png,.pjpeg",
    this.FileExt = a.val().substr(a.val().lastIndexOf(".")).toLowerCase(),
    0 != this.AllowExt && -1 == this.AllowExt.indexOf(this.FileExt) ? errorTips("只支持jpg、gif、png、jpeg格式，请重新上传", "上传头像") : ($("#" + c + "_error").text("").hide(), $.ajaxFileUpload({
        url: b,
        secureuri: !1,
        fileElementId: c,
        data: {
            headPic: a.val()
        },
        dataType: "json",
        success: function(a) {
            if (a.success) {
                var b = a.content;
                $("#portraitShow img").attr("src", ctx + "/" + b),
                $("#basicInfo .basicShow img").attr("src", ctx + "/" + b),
                $("#portraitNo").hide(),
                $("#portraitShow").show()
            } else errorTips("上传失败，请重新上传", "上传头像")
        },
        error: function() {
            errorTips("上传失败，请重新上传", "上传头像")
        }
    }))
}



$(function() {
    function e() {
        
    }
    function i() {
        $(".workForm").each(function() {
            $(this).validate({
                rules: {
                    workLink: {
                        required: !1,
                        checkUrlNot: !0,
                        maxlength: 150
                    },
                    workDescription: {
                        required: !1,
                        maxlength: 100
                    }
                },
                messages: {
                    workLink: {
                        checkUrlNot: "请输入有效的作品链接",
                        maxlength: "请输入有效的作品链接"
                    },
                    workDescription: {
                        maxlength: "请输入100字以内的有效作品说明"
                    }
                },
                submitHandler: function(a) {
                    var b = "请输入作品链接" != $('input[name="workLink"]', a).val() ? $('input[name="workLink"]', a).val() : "",
                    c = "请输入说明文字" != $('textarea[name="workDescription"]', a).val() ? $('textarea[name="workDescription"]', a).val() : "",
                    d = $(".showId", a).val(),
                    e = $("#resumeId").val(),
                    f = $("#resubmitToken").val();
                    
                    $.ajax({
                        url: ctx + "/workShow/save.json",
                        type: "POST",
                        data: {
                            url: b,
                            workName: c,
                            wsid: d,
                            id: e,
                            resubmitToken: f
                        },
                        dataType: "json"
                    }).done(function(b) {
                        var c, d, e;
                        $("#resubmitToken").val(b.resubmitToken),
                        b.success ? (c = "", d = "", e = b.content.workShow, 3 == b.code ? "" != e ? (c += '<li data-id="' + e.id + '"><div class="workList c7">' + '<i class="sm_del dn"></i>' + '<i class="sm_edit dn"></i>', e.url && (d = "http://" == e.url.substring(0, 7) || "https://" == e.url.substring(0, 8) ? e.url: "http://" + e.url, c += '<div class="f16">网址：<a href="' + d + '" target="_blank">' + e.url + "</a></div>"), c += "<p>" + e.workName + "</p>" + "</div></li>", placeholderFn(), "" != $.trim(h.obj.children(".workShow").children(".slist").html()) && $(a).remove(), h.obj.children(".workShow").children(".slist").prepend(c), h.obj.children(".workShow").removeClass("dn"), h.obj.children(".workEdit").addClass("dn"), h.obj.children(".c_add").removeClass("dn")) : "" != $.trim(h.obj.children(".workShow").children(".slist").html()) ? ($(a).remove(), h.obj.children(".c_add").removeClass("dn")) : (h.obj.children(".workEdit").addClass("dn"), h.obj.children(".workAdd").removeClass("dn")) : 4 == b.code ? (c += '<div class="workList c7"><i class="sm_del dn"></i><i class="sm_edit dn"></i>', e.url && (d = "http://" == e.url.substring(0, 7) || "https://" == e.url.substring(0, 8) ? e.url: "http://" + e.url, c += '<div class="f16">网址：<a href="' + d + '" target="_blank">' + e.url + "</a></div>"), c += "<p>" + e.workName + "</p>" + "</div>", placeholderFn(), $(a).parent("li").html(c)) : 2 == b.code && ($(a).parent("li").remove(), "" == $.trim(h.obj.children(".workShow").children(".slist").html()) && h.AddCancel), h.obj.find(".slist li:last-child").addClass("noborder"), $("#lastChangedTime span").text(b.content.refreshTime), $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg), $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage), scoreChange(b.content.infoCompleteStatus.score), k(h.obj), b.content.isNew && changeAllIds(b.content.jsonIds)) : alert(b.msg),
                        $(a).find(":submit").val("保 存").attr("disabled", !1)
                    })
                }
            })
        })
    }
    function j() {
        a = !1
    }
    function k() {
        a = !0
    }
    // var b, c, d, f, g, h, a = !0;
    // window.onbeforeunload = function() {
    //     return a ? void 0 : "内容还未保存，确认离开该页面吗？ "
    // },
    $(".profile_radio li input").click(function() {
        $(this).parent("li").siblings("li").removeClass("current"),
        $(this).parent("li").addClass("current")
    }),
    $(document).click(function() {
        $(".boxUpDown").hide().prev("input").removeClass("select_focus")
    }),
    $("#resumeScore .which span").bind("click",
    function() {
        var a = $(this).attr("rel");
        "complete" != a && click_scroll(a)
    }),
    jQuery.validator.addMethod("checkWorkYear",
    function(a, b) {
        var c = $(b).parents(".experienceForm"),
        d = c.find(".companyYearStart").val(),
        e = c.find(".companyMonthStart").val(),
        f = c.find(".companyYearEnd").val(),
        g = c.find(".companyMonthEnd").val();
        return d > f ? !1 : d == f && e > g ? !1 : !0
    },
    "开始时间需早于结束时间"),
    jQuery.validator.addMethod("checkProjectYear",
    function(a, b) {
        var c = $(b).parents(".projectForm"),
        d = c.find(".projectYearStart").val(),
        e = c.find(".projectMonthStart").val(),
        f = c.find(".projectYearEnd").val(),
        g = c.find(".projectMonthEnd").val();
        return d > f ? !1 : d == f && e > g ? !1 : !0
    },
    "开始时间需早于结束时间"),
    jQuery.validator.addMethod("checkSchoolYear",
    function(a, b) {
        var c = $(b).parents(".educationalForm"),
        d = c.find(".schoolYearStart").val(),
        e = c.find(".schoolYearEnd").val();
        return d > e ? !1 : !0
    },
    "开始时间需小于结束时间"),
    $("#resume_name .nameShow .rename").bind("click",
    function() {
        $(this).parent().addClass("dn"),
        $(this).parent().siblings("form").removeClass("dn"),
        j($("#resume_name"))
    }),
    
    $("#basicInfo .c_edit").bind("click",
    function() {
        var a = $("#nameVal").val(),
        b = $("#genderVal").val(),
        c = $("#topDegreeVal").val(),
        d = $("#workyearVal").val(),
        e = $("#currentStateVal").val(),
        f = $("#emailVal").val(),
        g = $("#telVal").val();
        $("#name").val(a),
        $('#basicInfo .profile_radio li input[value="' + b + '"]').attr("checked", !0).parent("li").addClass("current").siblings("li").removeClass("current"),
        $("#topDegree").val(c),
        $("#select_topDegree").val(c).css("color", "#333"),
        $("#workyear").val(d),
        $("#select_workyear").val(d).css("color", "#333"),
        "" != e && ($("#currentState").val(e), $("#select_currentState").val(e).css("color", "#333")),
        $("#email").val(f),
        $("#tel").val(g),
        $("#portraitShow img").attr("src", $("#basicInfo .basicShow img").attr("src")),
        $("#portraitNo").hide(),
        $("#portraitShow").show(),
        $(this).addClass("dn"),
        $("#basicInfo .basicShow").addClass("dn"),
        $("#basicInfo .basicEdit").removeClass("dn"),
        j($("#basicInfo"))
    }),
    $("#select_topDegree").bind("click",
    function(a) {
        a.stopPropagation(),
        $(this).addClass("select_focus"),
        $("#select_workyear").removeClass("select_focus"),
        $("#select_currentState").removeClass("select_focus"),
        $("#box_topDegree").show(),
        $("#box_workyear").hide(),
        $("#box_currentState").hide()
    }),
    $("#box_topDegree").on("click", "ul li",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        $("#select_topDegree").val(b).css("color", "#333").removeClass("select_focus"),
        $("#topDegree").val(b),
        $("#box_topDegree").hide(),
        $("#profileForm").validate().element($("#topDegree"))
    }),
    $("#select_workyear").bind("click",
    function(a) {
        a.stopPropagation(),
        $(this).addClass("select_focus"),
        $("#select_topDegree").removeClass("select_focus"),
        $("#select_currentState").removeClass("select_focus"),
        $("#box_workyear").show(),
        $("#box_topDegree").hide(),
        $("#box_currentState").hide()
    }),
    $("#box_workyear").on("click", "ul li",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        $("#select_workyear").val(b).css("color", "#333").removeClass("select_focus"),
        $("#workyear").val(b),
        $("#box_workyear").hide(),
        $("#profileForm").validate().element($("#workyear"))
    }),
    $("#select_currentState").bind("click",
    function(a) {
        a.stopPropagation(),
        $(this).addClass("select_focus"),
        $("#select_topDegree").removeClass("select_focus"),
        $("#select_workyear").removeClass("select_focus"),
        $("#box_workyear").hide(),
        $("#box_topDegree").hide(),
        $("#box_currentState").show()
    }),
    $("#box_currentState").on("click", "ul li",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        $("#select_currentState").val(b).css("color", "#333").removeClass("select_focus"),
        $("#currentState").val(b),
        $("#box_currentState").hide(),
        $("#profileForm").validate().element($("#currentState"))
    }),
    $("#profileForm").validate({
        rules: {
            name: {
                required: !0,
                specialchar: !0,
                checkNum: !0,
                rangelength: [2, 20]
            },
            gender: {
                required: !1
            },
            topDegree: {
                required: !0
            },
            workyear: {
                required: !0
            },
            currentState: {
                required: !1
            },
            email: {
                required: !0,
                email: !0,
                maxlength: 80
            },
            tel: {
                required: !0,
                isMobile: !0,
                maxlength: 30
            }
        },
        messages: {
            name: {
                required: "请输入你的真实姓名",
                specialchar: "请输入你的真实姓名",
                checkNum: "请输入你的真实姓名",
                rangelength: "请输入你的真实姓名"
            },
            topDegree: {
                required: "请选择最高学历"
            },
            workyear: {
                required: "请选择工作年限"
            },
            email: {
                required: "请输入接收面试通知的常用邮箱",
                email: "请输入有效的常用邮箱，如：vivi@lagou.com",
                maxlength: "请输入有效的常用邮箱，如：vivi@lagou.com"
            },
            tel: {
                required: "请输入手机号码",
                isMobile: "请输入有效的手机号码",
                maxlength: "请输入有效的手机号码"
            }
        },
        errorPlacement: function(a, b) {
            "hidden" == b.attr("type") ? a.appendTo($(b).parent()) : "radio" == b.attr("type") ? a.insertAfter($(b).parents("ul")) : a.insertAfter(b)
        },
       
    }),
    $("#profileForm .btn_profile_cancel").bind("click",
    function() {
        $(this).parents(".basicEdit").addClass("dn").siblings(".basicShow").removeClass("dn"),
        $("#basicInfo .c_edit").removeClass("dn"),
        k($("#basicInfo"))
    }),
    $("#select_expectCity").bind("click",
    function(a) {
        a.stopPropagation(),
        $(this).addClass("select_focus"),
        $("#select_expectSalary").removeClass("select_focus"),
        $("#box_expectCity").show(),
        $("#box_expectSalary").hide()
    }),
    $("#box_expectCity").on("click", "dl dd span",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        $("#select_expectCity").val(b).css("color", "#333").removeClass("select_focus"),
        $("#expectCity").val(b),
        $("#box_expectCity").hide(),
        $("#expectForm").validate().element($("#expectCity"))
    }),
    $("#select_expectSalary").bind("click",
    function(a) {
        a.stopPropagation(),
        $(this).addClass("select_focus"),
        $("#select_expectCity").removeClass("select_focus"),
        $("#box_expectSalary").show(),
        $("#box_expectCity").hide()
    }),
    $("#box_expectSalary").on("click", "ul li",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        $("#select_expectSalary").val(b).css("color", "#333").removeClass("select_focus"),
        $("#expectSalary").val(b),
        $("#box_expectSalary").hide(),
        $("#profileForm").validate().element($("#expectSalary"))
    }),
    b = {
        obj: $("#expectJob"),
        expectJobVal: $("#expectJobVal").val(),
        expectCityVal: $("#expectCityVal").val(),
        typeVal: $("#typeVal").val(),
        expectPositionVal: $("#expectPositionVal").val(),
        expectSalaryVal: $("#expectSalaryVal").val(),
        Add: function() {
            this.obj.find(".expectAdd").addClass("dn"),
            this.obj.find(".expectShow").addClass("dn"),
            this.obj.find(".c_edit").addClass("dn"),
            this.obj.find(".expectEdit").removeClass("dn"),
            j(this.obj)
        },
        Edit: function() {
            "" == this.expectCityVal ? ($("#expectCity").val(""), $("#select_expectCity").val("期望城市，如：北京").css("color", "#999")) : ($("#expectCity").val(this.expectCityVal), $("#select_expectCity").val(this.expectCityVal).css("color", "#333")),
            "" != this.typeVal ? $('#expectJob .profile_radio li input[value="' + this.typeVal + '"]').attr("checked", !0).parent("li").addClass("current").siblings("li").removeClass("current") : $("#expectJob .profile_radio li input").attr("checked", !1).parent("li").removeClass("current"),
            $("#expectPosition").val(this.expectPositionVal),
            "" == this.expectSalaryVal ? ($("#expectSalary").val(""), $("#select_expectSalary").val("期望月薪").css("color", "#999")) : ($("#expectSalary").val(this.expectSalaryVal), $("#select_expectSalary").val(this.expectSalaryVal).css("color", "#333")),
            placeholderFn(),
            this.obj.find(".expectAdd").addClass("dn"),
            this.obj.find(".expectShow").addClass("dn"),
            this.obj.find(".c_edit").addClass("dn"),
            this.obj.find(".expectEdit").removeClass("dn"),
            j(this.obj)
        },
        Cancel: function() {
            this.expectCityVal || this.typeVal || this.expectPositionVal || this.expectSalaryVal ? this.obj.find(".expectEdit").addClass("dn").siblings(".expectShow").removeClass("dn").siblings(".c_edit").removeClass("dn").siblings(".expectAdd").addClass("dn") : this.obj.find(".expectEdit").addClass("dn").siblings(".expectShow").addClass("dn").siblings(".c_edit").addClass("dn").siblings(".expectAdd").removeClass("dn"),
            k(this.obj)
        }
    },
    b.obj.find(".expectAdd").bind("click",
    function() {
        b.Add()
    }),
    b.obj.find(".c_edit").bind("click",
    function() {
        b.Edit()
    }),
    $("#expectForm .btn_profile_cancel").bind("click",
    function() {
        b.Cancel()
    }),
    $("#expectPosition").bind("keyup",
    function() {
        var a = $.trim($(this).val());
        "" != a && suggestPosition(a, "#expectPosition")
    }),
    $("#expectForm").validate({
        rules: {
            expectCity: {
                required: !1
            },
            type: {
                required: !1
            },
            expectPosition: {
                required: !1,
                specialchar: !0,
                checkNum: !0,
                minlength: 2,
                maxlength: 100
            },
            expectSalary: {
                required: !1
            }
        },
        messages: {
            expectPosition: {
                specialchar: "请输入有效的期望职位，如：产品经理",
                checkNum: "请输入有效的期望职位，如：产品经理",
                minlength: "请输入有效的期望职位，如：产品经理",
                maxlength: "请输入有效的期望职位，如：产品经理"
            }
        },
       
        
    }),




    c = {
        obj: $("#workExperience"),
        companyNameVal: "",
        positionNameVal: "",
        companyYearStartVal: "",
        companyMonthStartVal: "",
        companyYearEndVal: "",
        companyMonthEndVal: "",
        Add: function() {
            this.obj.children(".experienceEdit").find(".companyName").val(""),
            this.obj.children(".experienceEdit").find(".positionName").val(""),
            this.obj.children(".experienceEdit").find(".companyYearStart").val(""),
            this.obj.children(".experienceEdit").find(".select_companyYearStart").css("color", "#999").val("开始年份"),
            this.obj.children(".experienceEdit").find(".companyMonthStart").val(""),
            this.obj.children(".experienceEdit").find(".select_companyMonthStart").css("color", "#999").val("开始月份"),
            this.obj.children(".experienceEdit").find(".companyYearEnd").val(""),
            this.obj.children(".experienceEdit").find(".select_companyYearEnd").css("color", "#999").val("结束年份"),
            this.obj.children(".experienceEdit").find(".companyMonthEnd").val(""),
            this.obj.children(".experienceEdit").find(".select_companyMonthEnd").css("color", "#999").val("结束月份"),
            placeholderFn(),
            this.obj.children(".experienceAdd").addClass("dn"),
            this.obj.children(".experienceShow").addClass("dn"),
            this.obj.children(".experienceEdit").removeClass("dn"),
            j(this.obj)
        },
        AddMore: function() {
            this.obj.children(".experienceShow").find(".companyName").val(""),
            this.obj.children(".experienceShow").find(".positionName").val(""),
            this.obj.children(".experienceShow").find(".companyYearStart").val(""),
            this.obj.children(".experienceShow").find(".select_companyYearStart").css("color", "#999").val("开始年份"),
            this.obj.children(".experienceShow").find(".companyMonthStart").val(""),
            this.obj.children(".experienceShow").find(".select_companyMonthStart").css("color", "#999").val("开始月份"),
            this.obj.children(".experienceShow").find(".companyYearEnd").val(""),
            this.obj.children(".experienceShow").find(".select_companyYearEnd").css("color", "#999").val("结束年份"),
            this.obj.children(".experienceShow").find(".companyMonthEnd").val(""),
            this.obj.children(".experienceShow").find(".select_companyMonthEnd").css("color", "#999").val("结束月份"),
            this.obj.children(".experienceShow").find(".expId").val(""),
            placeholderFn(),
            this.obj.children(".experienceShow").children(".experienceForm").show(),
            j(this.obj)
        },
        Edit: function(a) {
            var h, i, b = a.parent("li").attr("data-id"),
            c = a.siblings("span").attr("data-startYear"),
            d = a.siblings("span").attr("data-endYear"),
            e = a.siblings("span").attr("data-startMonth"),
            f = a.siblings("span").attr("data-endMonth");
            a.parent("li").find("img").attr("src"),
            h = a.parent("li").find("h3").text(),
            i = a.parent("li").find("h4").text(),
            this.obj.children(".experienceShow").find(".companyName").val(i),
            this.obj.children(".experienceShow").find(".positionName").val(h),
            this.obj.children(".experienceShow").find(".companyYearStart").val(c),
            this.obj.children(".experienceShow").find(".select_companyYearStart").css("color", "#333").val(c),
            this.obj.children(".experienceShow").find(".companyMonthStart").val(e),
            this.obj.children(".experienceShow").find(".select_companyMonthStart").css("color", "#333").val(e),
            this.obj.children(".experienceShow").find(".companyYearEnd").val(d),
            this.obj.children(".experienceShow").find(".select_companyYearEnd").css("color", "#333").val(d),
            this.obj.children(".experienceShow").find(".companyMonthEnd").val(f),
            this.obj.children(".experienceShow").find(".select_companyMonthEnd").css("color", "#333").val(f),
            this.obj.children(".experienceShow").find(".expId").val(b),
            this.obj.children(".experienceShow").children(".experienceForm").show(),
            "至今" == $.trim(f) && this.obj.children(".experienceShow").find(".select_companyMonthEnd").unbind("click"),
            this.companyNameVal = i,
            this.positionNameVal = h,
            this.companyYearStartVal = c,
            this.companyMonthStartVal = e,
            this.companyYearEndVal = d,
            this.companyMonthEndVal = f,
            this.obj.children(".c_add").addClass("dn"),
            j(this.obj)
        },
        Del: function(a) {
            var b = a.parent("li").attr("data-id");
            $.ajax({
                url: ctx + "/workExperience/delExp.json",
                type: "POST",
                data: {
                    id: b
                }
            }).done(function(b) {
                b.success ? (a.parent("li").remove(), "" == b.content.workExperiences || null == b.content.workExperiences ? (c.obj.children(".experienceShow").addClass("dn"), c.obj.children(".experienceEdit").addClass("dn"), c.obj.children(".experienceAdd").removeClass("dn"), c.obj.children(".c_add").addClass("dn")) : c.obj.children(".experienceShow").children(".experienceForm").hide(), $("#lastChangedTime span").text(b.content.refreshTime), $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg), $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage), scoreChange(b.content.infoCompleteStatus.score), k(c.obj), b.content.isNew && changeAllIds(b.content.jsonIds)) : alert(b.msg)
            })
        },
        AddCancel: function() {
            this.obj.find(".experienceAdd").removeClass("dn"),
            this.obj.find(".experienceShow").addClass("dn"),
            this.obj.find(".experienceEdit").addClass("dn"),
            k(this.obj)
        },
        AddMoreCancel: function() {
            this.obj.children(".experienceShow").children(".experienceForm").hide(),
            k(this.obj)
        }
    },
    c.obj.find(".experienceAdd").bind("click",
    function() {
        c.Add()
    }),
    c.obj.find(".c_add").bind("click",
    function() {
        c.AddMore(),
        $(this).addClass("dn")
    }),
    c.obj.on("click", ".sm_edit",
    function() {
        c.Edit($(this))
    }),
    c.obj.on("click", ".sm_del",
    function() {
        confirm("确认要删除吗？") && c.Del($(this))
    }),
    c.obj.children(".experienceShow").on({
        mouseenter: function() {
            $(this).children(".wlist").find(".sm_del,.sm_edit").removeClass("dn")
        },
        mouseleave: function() {
            $(this).children(".wlist").find(".sm_del,.sm_edit").addClass("dn")
        }
    }),
    c.obj.children(".experienceEdit").find(".btn_profile_cancel").bind("click",
    function() {
        c.AddCancel()
    }),
    c.obj.children(".experienceShow").find(".btn_profile_cancel").bind("click",
    function() {
        c.AddMoreCancel(),
        c.obj.find(".c_add").removeClass("dn")
    }),
    c.obj.delegate(".companyName", "keyup",
    function() {
        var a = $.trim($(this).val());
        "" != a && suggestCompany(a, ".companyName")
    }),
    c.obj.delegate(".positionName", "keyup",
    function() {
        var a = $.trim($(this).val());
        "" != a && suggestPosition(a, ".positionName")
    }),





    d = {
        obj: $("#projectExperience"),
        resetForm: function() {
            this.obj.children(".projectEdit").find(".projectName").val(""),
            this.obj.children(".projectEdit").find(".thePost").val(""),
            this.obj.children(".projectEdit").find(".projectYearStart").val(""),
            this.obj.children(".projectEdit").find(".select_projectYearStart").css("color", "#999").val("开始年份"),
            this.obj.children(".projectEdit").find(".projectMonthStart").val(""),
            this.obj.children(".projectEdit").find(".select_projectMonthStart").css("color", "#999").val("开始月份"),
            this.obj.children(".projectEdit").find(".projectYearEnd").val(""),
            this.obj.children(".projectEdit").find(".select_projectYearEnd").css("color", "#999").val("结束年份"),
            this.obj.children(".projectEdit").find(".projectMonthEnd").val(""),
            this.obj.children(".projectEdit").find(".select_projectMonthEnd").css("color", "#999").val("结束月份"),
            this.obj.children(".projectEdit").find(".projectDescription").val(""),
            this.obj.children(".projectEdit").find(".word_count").children("span").text(500),
            this.obj.children(".projectEdit").find(".projectId").val("")
        },
        Add: function() {
            this.resetForm(),
            placeholderFn(),
            this.obj.children(".projectAdd").addClass("dn"),
            this.obj.children(".projectShow").addClass("dn"),
            this.obj.children(".projectEdit").removeClass("dn"),
            j(this.obj)
        },
        AddMore: function() {
            this.resetForm(),
            placeholderFn(),
            this.obj.children(".projectShow").prepend(this.obj.children(".projectEdit").children("form").clone()),
            this.obj.children(".projectShow").children("form").css("borderBottom", "1px solid #e5e5e5").show(),
            this.obj.children(".projectEdit").addClass("dn"),
            e(),
            j(this.obj)
        },
        Edit: function(a) {
            var m, b = a.parents("li"),
            c = b.attr("data-id"),
            d = b.find("div.f16").attr("data-proName"),
            f = b.find("div.f16").attr("data-posName"),
            g = b.find("div.f16").attr("data-startY"),
            h = b.find("div.f16").attr("data-startM"),
            i = b.find("div.f16").attr("data-endY"),
            k = b.find("div.f16").attr("data-endM"),
            l = b.find(".dl1").html();
            l && (l = $.trim(l.replace(/<br>/gi, ""))),
            this.resetForm(),
            m = this.obj.children(".projectEdit").children("form").clone(),
            m.find(".projectName").val(d),
            m.find(".thePost").val(f),
            "" != g && (m.find(".projectYearStart").val(g), m.find(".select_projectYearStart").css("color", "#333").val(g)),
            "" != h && (m.find(".projectMonthStart").val(h), m.find(".select_projectMonthStart").css("color", "#333").val(h)),
            "" != i && (m.find(".projectYearEnd").val(i), m.find(".select_projectYearEnd").css("color", "#333").val(i)),
            "" != k && (m.find(".projectMonthEnd").val(k), m.find(".select_projectMonthEnd").css("color", "#333").val(k)),
            "至今" == $.trim(k) && m.find(".select_projectMonthEnd").unbind("click"),
            m.find(".projectDescription").val(l),
            m.find(".word_count").children("span").text(500 - m.find(".projectDescription").val().length),
            m.find(".projectId").val(c),
            a.parents("li").prepend(m),
            placeholderFn(),
            a.parents("li").children(".projectList").addClass("dn"),
            e(),
            j(this.obj)
        },
        Del: function(a) {
            var b = a.parents("li").attr("data-id");
            $.ajax({
                url: ctx + "/projectExperience/delProject.json",
                type: "POST",
                data: {
                    id: b
                }
            }).done(function(b) {
                b.success ? (a.parents("li").remove(), $("ul.plist li:last-child").addClass("noborder"), ("" == b.content.projectExperiences || null == b.content.projectExperiences) && (d.obj.children(".projectShow").addClass("dn"), d.obj.children(".projectEdit").addClass("dn"), d.obj.children(".projectAdd").removeClass("dn"), d.obj.children(".c_add").addClass("dn")), $("#lastChangedTime span").text(b.content.refreshTime), $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg), $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage), scoreChange(b.content.infoCompleteStatus.score), k(d.obj), b.content.isNew && changeAllIds(b.content.jsonIds)) : alert(b.msg)
            })
        },
        AddCancel: function() {
            this.obj.find(".projectAdd").removeClass("dn"),
            this.obj.find(".projectShow").addClass("dn"),
            this.obj.find(".projectEdit").addClass("dn"),
            k(this.obj)
        },
        AddMoreCancel: function(a) {
            a.parents(".projectForm").siblings(".projectList").removeClass("dn"),
            a.parents(".projectForm").remove(),
            k(this.obj)
        }
    },
    d.obj.find(".plist li:last-child").addClass("noborder"),
    d.obj.find(".projectAdd").bind("click",
    function() {
        d.Add()
    }),
    d.obj.find(".c_add").bind("click",
    function() {
        d.AddMore(),
        $(this).addClass("dn")
    }),
    d.obj.on("click", ".sm_edit",
    function() {
        d.Edit($(this))
    }),
    d.obj.on("click", ".sm_del",
    function() {
        confirm("确认要删除吗？") && d.Del($(this))
    }),
    d.obj.children(".projectShow").on({
        mouseenter: function() {
            $(this).children(".plist").find(".sm_del,.sm_edit").removeClass("dn")
        },
        mouseleave: function() {
            $(this).children(".plist").find(".sm_del,.sm_edit").addClass("dn")
        }
    }),
    d.obj.on("keyup", ".s_textarea",
    function() {
        var a = $(this);
        $.trim(a.val()).length > 500 ? a.val($.trim(a.val()).substring(0, 500)) : a.next(".word_count").children("span").text(500 - $.trim(a.val()).length)
    }),
    d.obj.children(".projectEdit").find(".btn_profile_cancel").bind("click",
    function() {
        d.AddCancel()
    }),
    d.obj.children(".projectShow").on("click", ".btn_profile_cancel",
    function() {
        d.AddMoreCancel($(this)),
        d.obj.find(".c_add").removeClass("dn")
    }),
    e(),
    $(".select_schoolYearStart").bind("click",
    function(a) {
        a.stopPropagation(),
        openYear("schoolYearStart")
    }),
    $(".box_schoolYearStart").on("click", "ul li",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        selectYear("schoolYearStart", b),
        $(this).parents(".educationalForm").validate().element($(".schoolYearStart"))
    }),
    $(".select_schoolYearEnd").bind("click",
    function(a) {
        a.stopPropagation(),
        openYear("schoolYearEnd")
    }),
    $(".box_schoolYearEnd").on("click", "ul li",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        selectYear("schoolYearEnd", b),
        $(this).parents(".educationalForm").validate().element($(".schoolYearEnd"))
    }),
    $(".select_degree").bind("click",
    function(a) {
        a.stopPropagation(),
        $(this).addClass("select_focus"),
        $(".select_schoolYearStart").removeClass("select_focus"),
        $(".select_schoolYearEnd").removeClass("select_focus"),
        $(".box_schoolYearStart").hide(),
        $(".box_schoolYearEnd").hide(),
        $(".box_degree").show()
    }),
    $(".box_degree").on("click", "ul li",
    function(a) {
        a.stopPropagation();
        var b = $(this).text();
        $(".select_degree").val(b).css("color", "#333").removeClass("select_focus"),
        $(".degree").val(b),
        $(".box_degree").hide(),
        $(this).parents(".educationalForm").validate().element($(".degree"))
    }),
    f = {
        obj: $("#educationalBackground"),
        schoolNameVal: "",
        degreeVal: "",
        professionalNameVal: "",
        schoolYearStartVal: "",
        schoolYearEndVal: "",
        Add: function() {
            this.obj.children(".educationalEdit").find(".schoolName").val(""),
            this.obj.children(".educationalEdit").find(".degree").val(""),
            this.obj.children(".educationalEdit").find(".select_degree").css("color", "#999").val("学历"),
            this.obj.children(".educationalEdit").find(".professionalName").val(""),
            this.obj.children(".educationalEdit").find(".schoolYearStart").val(""),
            this.obj.children(".educationalEdit").find(".select_schoolYearStart").css("color", "#999").val("开始年份"),
            this.obj.children(".educationalEdit").find(".schoolYearEnd").val(""),
            this.obj.children(".educationalEdit").find(".select_schoolYearEnd").css("color", "#999").val("结束年份"),
            placeholderFn(),
            this.obj.children(".educationalAdd").addClass("dn"),
            this.obj.children(".educationalShow").addClass("dn"),
            this.obj.children(".educationalEdit").removeClass("dn"),
            j(this.obj)
        },
        AddMore: function() {
            this.obj.children(".educationalShow").find(".schoolName").val(""),
            this.obj.children(".educationalShow").find(".degree").val(""),
            this.obj.children(".educationalShow").find(".select_degree").css("color", "#999").val("学历"),
            this.obj.children(".educationalShow").find(".professionalName").val(""),
            this.obj.children(".educationalShow").find(".schoolYearStart").val(""),
            this.obj.children(".educationalShow").find(".select_schoolYearStart").css("color", "#999").val("开始年份"),
            this.obj.children(".educationalShow").find(".schoolYearEnd").val(""),
            this.obj.children(".educationalShow").find(".select_schoolYearEnd").css("color", "#999").val("结束年份"),
            this.obj.children(".educationalShow").find(".eduId").val(""),
            placeholderFn(),
            this.obj.children(".educationalShow").children(".educationalForm").show(),
            j(this.obj)
        },
        Edit: function(a) {
            var b = a.parent("li").attr("data-id"),
            c = a.siblings("span").attr("data-startY"),
            d = a.siblings("span").attr("data-endY"),
            e = a.parent("li").find("h4").attr("data-degree"),
            f = a.parent("li").find("h4").attr("data-proName"),
            g = a.parent("li").find("h3").attr("data-schName");
            this.obj.children(".educationalShow").find(".schoolName").val(g),
            this.obj.children(".educationalShow").find(".degree").val(e),
            this.obj.children(".educationalShow").find(".select_degree").css("color", "#333").val(e),
            this.obj.children(".educationalShow").find(".professionalName").val(f),
            this.obj.children(".educationalShow").find(".schoolYearStart").val(c),
            this.obj.children(".educationalShow").find(".select_schoolYearStart").css("color", "#333").val(c),
            this.obj.children(".educationalShow").find(".schoolYearEnd").val(d),
            this.obj.children(".educationalShow").find(".select_schoolYearEnd").css("color", "#333").val(d),
            this.obj.children(".educationalShow").find(".eduId").val(b),
            $(".educationalForm").validate().element($(".schoolYearStart")),
            this.obj.children(".educationalShow").children(".educationalForm").show(),
            this.schoolNameVal = g,
            this.degreeVal = e,
            this.professionalNameVal = f,
            this.schoolYearStartVal = c,
            this.schoolYearEndVal = d,
            this.obj.children(".c_add").addClass("dn"),
            j(this.obj)
        },
        Del: function(a) {
            var b = a.parent("li").attr("data-id");
            $.ajax({
                url: ctx + "/educationExperience/delEdu.json",
                type: "POST",
                data: {
                    id: b
                }
            }).done(function(b) {
                b.success ? (a.parent("li").remove(), "" == b.content.educationExperiences || null == b.content.educationExperiences ? (f.obj.children(".educationalShow").addClass("dn"), f.obj.children(".educationalEdit").addClass("dn"), f.obj.children(".educationalAdd").removeClass("dn"), f.obj.children(".c_add").addClass("dn")) : f.obj.children(".educationalShow").children(".educationalForm").hide(), $("#lastChangedTime span").text(b.content.refreshTime), $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg), $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage), scoreChange(b.content.infoCompleteStatus.score), k(f.obj), b.content.isNew && changeAllIds(b.content.jsonIds)) : alert(b.msg)
            })
        },
        AddCancel: function() {
            this.obj.find(".educationalAdd").removeClass("dn"),
            this.obj.find(".educationalShow").addClass("dn"),
            this.obj.find(".educationalEdit").addClass("dn"),
            k(this.obj)
        },
        AddMoreCancel: function() {
            this.obj.children(".educationalShow").children(".educationalForm").hide(),
            k(this.obj)
        }
    },
    f.obj.find(".educationalAdd").bind("click",
    function() {
        f.Add()
    }),
    f.obj.find(".c_add").bind("click",
    function() {
        f.AddMore(),
        $(this).addClass("dn")
    }),
    f.obj.on("click", ".sm_edit",
    function() {
        f.Edit($(this))
    }),
    f.obj.on("click", ".sm_del",
    function() {
        confirm("确认要删除吗？") && f.Del($(this))
    }),
    f.obj.children(".educationalShow").on({
        mouseenter: function() {
            $(this).children(".elist").find(".sm_del,.sm_edit").removeClass("dn")
        },
        mouseleave: function() {
            $(this).children(".elist").find(".sm_del,.sm_edit").addClass("dn")
        }
    }),
    f.obj.children(".educationalEdit").find(".btn_profile_cancel").bind("click",
    function() {
        f.AddCancel()
    }),
    f.obj.children(".educationalShow").find(".btn_profile_cancel").bind("click",
    function() {
        f.AddMoreCancel(),
        f.obj.find(".c_add").removeClass("dn")
    }),
    $(".educationalForm").each(function() {
        $(this).validate({
            groups: {
                schoolYear: "schoolYearStart schoolYearEnd"
            },
            rules: {
                schoolName: {
                    required: !0,
                    checkNum: !0,
                    maxlenStr: 100
                },
                degree: {
                    required: !0
                },
                professionalName: {
                    required: !0,
                    checkNum: !0,
                    maxlenStr: 100
                },
                schoolYearStart: {
                    required: !0,
                    checkSchoolYear: !0
                },
                schoolYearEnd: {
                    required: !0,
                    checkSchoolYear: !0
                }
            },
            messages: {
                schoolName: {
                    required: "请输入学校名称",
                    checkNum: "请输入有效的学校名称",
                    maxlenStr: "请输入有效的学校名称"
                },
                degree: {
                    required: "请选择学历"
                },
                professionalName: {
                    required: "请输入专业名称，如：软件工程",
                    checkNum: "请输入有效的专业名称，如：软件工程",
                    maxlenStr: "请输入有效的专业名称，如：软件工程"
                },
                schoolYearStart: {
                    required: "请选择开始年份",
                    checkSchoolYear: "开始年份需小于结束年份"
                },
                schoolYearEnd: {
                    required: "请选择结束年份",
                    checkSchoolYear: "结束年份不能早于开始年份"
                }
            },
            errorPlacement: function(a, b) {
                "hidden" == b.attr("type") ? "schoolYearStart" == b.attr("name") || "schoolYearEnd" == b.attr("name") ? a.appendTo($(b).parent().parent()) : a.appendTo($(b).parent()) : a.insertAfter(b)
            },
            submitHandler: function(a) {
                var b = $('input[name="schoolName"]', a).val(),
                c = $('input[name="degree"]', a).val(),
                d = $('input[name="professionalName"]', a).val(),
                e = $('input[name="schoolYearStart"]', a).val(),
                g = $('input[name="schoolYearEnd"]', a).val(),
                h = $(".eduId", a).val(),
                i = $("#resumeId").val(),
                j = $("#resubmitToken").val();
                $(a).find(":submit").val("保存中...").attr("disabled", !0),
                $.ajax({
                    url: ctx + "/educationExperience/save.json",
                    type: "POST",
                    data: {
                        schoolName: b,
                        education: c,
                        professional: d,
                        startYear: e,
                        endYear: g,
                        eduid: h,
                        id: i,
                        resubmitToken: j
                    },
                    dataType: "json"
                }).done(function(b) {
                    var c, d, e;
                    if ($("#resubmitToken").val(b.resubmitToken), b.success) {
                        for (c = b.content.educationExperiences, d = "", e = 0; e < c.length; e++) d += 0 == e % 2 ? '<li data-id="' + c[e].id + '" class="clear">': '<li data-id="' + c[e].id + '">',
                        d += '<i class="sm_del dn"></i><i class="sm_edit dn"></i><span class="c9" data-startY="' + c[e].startDate + '" data-endY="' + c[e].endDate + '">' + c[e].startDate + "-" + c[e].endDate + "</span>" + "<div>" + '<h3 data-schName="' + c[e].schoolName + '">' + c[e].schoolName + "</h3>" + '<h4 data-proName="' + c[e].professional + '" data-degree="' + c[e].education + '">' + c[e].education + "，" + c[e].professional + "</h4>" + "</div>" + "</li>";
                        f.obj.children(".c_add").removeClass("dn"),
                        f.obj.children(".educationalShow").children(".educationalForm").hide(),
                        f.obj.children(".educationalShow").children(".elist").html(d).parent().removeClass("dn"),
                        f.obj.children(".educationalEdit").addClass("dn"),
                        $("#lastChangedTime span").text(b.content.refreshTime),
                        $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg),
                        $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage),
                        scoreChange(b.content.infoCompleteStatus.score),
                        k(f.obj),
                        b.content.isNew && changeAllIds(b.content.jsonIds)
                    } else alert(b.msg);
                    $(a).find(":submit").val("保 存").attr("disabled", !1)
                })
            }
        })
    }),
    g = {
        obj: $("#selfDescription"),
        text: $("#selfDescription .selfDescription").val(),
        Add: function() {
            this.obj.children(".descriptionEdit").find(".selfDescription").val(""),
            this.obj.children(".descriptionAdd").addClass("dn"),
            this.obj.children(".descriptionShow").addClass("dn"),
            this.obj.children(".descriptionEdit").removeClass("dn"),
            j(this.obj)
        },
        Edit: function() {
            var b = this.obj.children(".descriptionShow").html();
            b = $.trim(b.replace(/<br>/gi, "")),
            this.text = b,
            this.obj.children(".descriptionEdit").find(".selfDescription").val(b),
            this.obj.children(".descriptionEdit").find(".word_count").children("span").text(500 - b.length),
            this.obj.children(".descriptionShow").addClass("dn"),
            this.obj.children(".descriptionEdit").removeClass("dn"),
            this.obj.children(".c_edit").addClass("dn"),
            j(this.obj)
        },
        Cancel: function() {
            this.text ? (this.obj.children(".descriptionAdd").addClass("dn"), this.obj.children(".descriptionShow").removeClass("dn"), this.obj.children(".descriptionEdit").addClass("dn"), this.obj.children(".c_edit").removeClass("dn")) : (this.obj.children(".descriptionAdd").removeClass("dn"), this.obj.children(".descriptionShow").addClass("dn"), this.obj.children(".descriptionEdit").addClass("dn")),
            k(this.obj)
        }
    },
    g.obj.children(".descriptionAdd").bind("click",
    function() {
        g.Add()
    }),
    g.obj.children(".c_edit").bind("click",
    function() {
        g.Edit()
    }),
    g.obj.children(".descriptionEdit").find(".btn_profile_cancel").bind("click",
    function() {
        g.Cancel()
    }),
    g.obj.on("keyup", ".s_textarea",
    function() {
        textCounter("selfDescription", "", 500)
    }),
    $(".descriptionForm").validate({
        rules: {
            selfDescription: {
                required: !1
            }
        },
        submitHandler: function(a) {
            var b = $('textarea[name="selfDescription"]', a).val(),
            c = $("#resumeId").val(),
            d = $("#resubmitToken").val();
            $(a).find(":submit").val("保存中...").attr("disabled", !0),
            $.ajax({
                url: ctx + "/resume/intro.json",
                type: "POST",
                data: {
                    myRemark: b,
                    id: c,
                    resubmitToken: d
                },
                dataType: "json"
            }).done(function(b) {
                var c, d;
                $("#resubmitToken").val(b.resubmitToken),
                b.success ? (c = b.content.resume, d = "", c.myRemark ? (d = c.myRemark, g.text = c.myRemark, g.obj.children(".c_edit").removeClass("dn"), g.obj.children(".descriptionShow").html(d).removeClass("dn"), g.obj.children(".descriptionEdit").addClass("dn"), $("#lastChangedTime span").text(b.content.refreshTime), $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg), $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage), scoreChange(b.content.infoCompleteStatus.score), k(g.obj)) : (g.text = "", g.obj.children(".c_edit").addClass("dn"), g.obj.children(".descriptionShow").addClass("dn"), g.obj.children(".descriptionEdit").addClass("dn"), g.obj.children(".descriptionAdd").removeClass("dn"), $("#lastChangedTime span").text(b.content.refreshTime), $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg), $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage), scoreChange(b.content.infoCompleteStatus.score), k(g.obj)), b.content.isNew && changeAllIds(b.content.jsonIds)) : alert(b.msg),
                $(a).find(":submit").val("保 存").attr("disabled", !1)
            })
        }
    }),
    h = {
        obj: $("#worksShow"),
        resetForm: function() {
            this.obj.children(".workEdit").find(".workLink").val(""),
            this.obj.children(".workEdit").find(".workDescription").val(""),
            this.obj.children(".workEdit").find(".showId").val(""),
            this.obj.children(".workEdit").find(".word_count").children("span").text(100)
        },
        Add: function() {
            this.resetForm(),
            placeholderFn(),
            this.obj.children(".workAdd").addClass("dn"),
            this.obj.children(".workShow").addClass("dn"),
            h.obj.children(".workShow").find("form").addClass("dn"),
            this.obj.children(".workEdit").removeClass("dn"),
            j(this.obj)
        },
        AddMore: function() {
            this.resetForm(),
            this.obj.children(".workShow").prepend(this.obj.children(".workEdit").children("form").clone()),
            this.obj.children(".workEdit").addClass("dn"),
            placeholderFn(),
            i(),
            j(this.obj)
        },
        Edit: function(a) {
            var f, b = a.parents("li"),
            c = b.attr("data-id"),
            d = b.find("div.f16 a").text(),
            e = b.find("p").html();
            e && (e = $.trim(e.replace(/<br>/gi, ""))),
            this.resetForm(),
            f = this.obj.children(".workEdit").children("form").clone(),
            f.find(".workLink").val(d),
            f.find(".workDescription").val(e),
            f.find(".word_count").children("span").text(100 - f.find(".workDescription").val().length),
            f.find(".showId").val(c),
            a.parents("li").prepend(f),
            placeholderFn(),
            a.parents("li").children(".workList").addClass("dn"),
            i(),
            j(this.obj)
        },
        Del: function(a) {
            var b = a.parents("li").attr("data-id");
            $.ajax({
                url: ctx + "/workShow/delws.json",
                type: "POST",
                data: {
                    id: b
                }
            }).done(function(b) {
                b.success ? (a.parents("li").remove(), $("ul.slist li:last-child").addClass("noborder"), ("" == b.content.workShows || null == b.content.workShows) && (h.obj.children(".workShow").addClass("dn"), h.obj.children(".workEdit").addClass("dn"), h.obj.children(".workAdd").removeClass("dn"), h.obj.children(".c_add").addClass("dn")), $("#lastChangedTime span").text(b.content.refreshTime), $("#resumeScore .which div").text(b.content.infoCompleteStatus.msg), $("#resumeScore .which span").attr("rel", b.content.infoCompleteStatus.nextStage), scoreChange(b.content.infoCompleteStatus.score), k(h.obj), b.content.isNew && changeAllIds(b.content.jsonIds)) : alert(b.msg)
            })
        },
        AddCancel: function() {
            this.obj.find(".workAdd").removeClass("dn"),
            this.obj.find(".workShow").addClass("dn"),
            this.obj.find(".workEdit").addClass("dn"),
            k(this.obj)
        },
        AddMoreCancel: function(a) {
            a.parents(".workForm").siblings(".workList").removeClass("dn"),
            a.parents(".workForm").remove(),
            0 == $("ul.slist li").length && $(".workAdd").removeClass("dn"),
            k(this.obj)
        }
    },
    h.obj.find(".slist li:last-child").addClass("noborder"),
    h.obj.find(".workAdd").bind("click",
    function() {
        h.Add()
    }),
    h.obj.find(".c_add").bind("click",
    function() {
        h.AddMore(),
        $(this).addClass("dn")
    }),
    h.obj.on("click", ".sm_edit",
    function() {
        h.Edit($(this))
    }),
    h.obj.on("click", ".sm_del",
    function() {
        confirm("确认要删除吗？") && h.Del($(this))
    }),
    h.obj.children(".workShow").on({
        mouseenter: function() {
            $(this).children(".slist").find(".sm_del,.sm_edit").removeClass("dn")
        },
        mouseleave: function() {
            $(this).children(".slist").find(".sm_del,.sm_edit").addClass("dn")
        }
    }),
    h.obj.children(".workEdit").find(".btn_profile_cancel").bind("click",
    function() {
        h.AddCancel()
    }),
    h.obj.children(".workShow").on("click", ".btn_profile_cancel",
    function() {
        h.AddMoreCancel($(this)),
        h.obj.find(".c_add").removeClass("dn")
    }),
    h.obj.on("keyup", ".s_textarea",
    function() {
        var a = $(this);
        $.trim(a.val()).length > 100 ? a.val($.trim(a.val()).substring(0, 100)) : a.next(".word_count").children("span").text(100 - $.trim(a.val()).length)
    }),
    i(),


 
    $("#myResume").on("click", ".resumeUploadDiv a.del",
    function() {
       
    })
}),








$(window).load(function() {
    
});
