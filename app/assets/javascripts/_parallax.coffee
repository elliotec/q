parallax = ->
  plxBackground = $("#js-parallax-background")
  plxWindow = $("#js-parallax-window")
  plxWindowTopToPageTop = $(plxWindow).offset().top
  windowTopToPageTop = $(window).scrollTop()
  plxWindowTopToWindowTop = plxWindowTopToPageTop - windowTopToPageTop
  plxBackgroundTopToPageTop = $(plxBackground).offset().top
  windowInnerHeight = window.innerHeight
  plxBackgroundTopToWindowTop = plxBackgroundTopToPageTop - windowTopToPageTop
  plxBackgroundTopToWindowBottom = windowInnerHeight - plxBackgroundTopToWindowTop
  plxSpeed = 0.35
  plxBackground.css "top", -(plxWindowTopToWindowTop * plxSpeed) + "px"
  return

$(document).ready ->
  parallax()
  return

$(window).scroll (e) ->
  parallax()
  return