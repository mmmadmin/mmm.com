<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html>
 
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
    <script type="text/javascript" src="<c:url value="/js/jquery-1.10.2.min.js"/>"></script>
    <style type="text/css">
        .des {
            width: 400px;
            margin: 0 auto;
        }
 
        .add2carttip {
            width: 220px;
            height: 90px;
            padding: 0;
            border: 1px solid rgba(69, 66, 66, 0.91);
            background-color: #393939;
            margin: 0 auto;
            border-radius: 12px 12px;
            position: fixed;
            display:none;
        }
 
            .add2carttip > div {
                vertical-align: middle;
                color: #D0D0D0;
                text-align: center;
                font-size: 1.2em;
                font-weight: bold;
                margin: 0;
            }
 
        .c-title {
            height: 39px;
            line-height: 39px;
            border-bottom: 1px #D0D0D0 solid;
        }
 
        .c-content {
            height: 49px;
            line-height: 49px;
            border-top: 1px #D0D0D0 solid;
        }
 
        .c-add, .c-sub {
            display: inline-block;
            vertical-align: middle;
            width: 20px;
            font-size: 1.5em;
            font-weight: bold;
            cursor: pointer;
        }
 
        .c-sub {
            vertical-align: -5px;
            font-size: 1.8em;
        }
 
        .c-count {
            width: 30px;
            height: 30px;
            border-radius: 15px;
            border: none;
            text-align: center;
            font-size: inherit;
        }
 
        .c-action {
            display: inline-block;
            cursor: pointer;
        }
 
            .c-add:hover, .c-sub:hover, .c-action:hover {
                color: #FAFAFA;
            }
    </style>
    <script type="text/javascript">
        $(function () {
            var $tip = $('.add2carttip');
            var $add = $('.c-add');
            var $sub = $('.c-sub');
            var $count = $('.c-count');
            var $action = $('.c-action');
 
            var $win = $(window);
 
            function setTipPosition() {
                $tip.animate({
                    left: (($win.width() - $tip.width()) / 2) + 'px',
                    top: ($win.height() * 1 / 3) + 'px'
                }, 500);
            }
            setTipPosition();
            $win.on('resize', setTipPosition);
 
            $tip.on('selectstart', function (e) { e.preventDefault(); return false; });
 
            $add.on('click', function () {
                $count.val(parseInt($count.val()) + 1);
            });
            $sub.on('click', function () {
                $count.val(parseInt(($count.val()) - 1) || 1);
            });
            $action.on('click', function () {
                alert('add ' + $count.val() + ' to cart. ');
            });
            $('.toggleTip').on('click', function () {
                $tip.fadeToggle(500);
            });
        });
    </script>
 
</head>
<body>
    <div class="des">
        不支持IE9以下的IE浏览器
        <a href="javascript:void();" class="toggleTip">显示或隐藏</a>
    </div>
    <div class="add2carttip">
        <div class="c-title">
            商品详情
        </div>
        <div class="c-content">
            <span class="c-add">+</span>
            <input type="text" class="c-count" value="1" />
            <span class="c-sub">-</span>
            <span class="c-action">
                加入购物车
            </span>
        </div>
    </div>
</body>
</html>