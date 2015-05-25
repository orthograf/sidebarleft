/* ========================================================================
 * Bootstrap: sidebar.js v0.1
 * ========================================================================
 * Copyright 2011-2014 Asyraf Abdul Rahman
 * Licensed under MIT
 * ======================================================================== */

+function ($) {
  'use strict';

  // SIDEBAR PUBLIC CLASS DEFINITION
  // ================================

  var Sidebar = function (element, options) {
    this.$element      = $(element)
    this.options       = $.extend({}, Sidebar.DEFAULTS, options)
    this.transitioning = null

    if (this.options.parent) this.$parent = $(this.options.parent)
    if (this.options.toggle) this.toggle()
  }

  Sidebar.DEFAULTS = {
    toggle: true
  }

  Sidebar.prototype.show = function () {
    if (this.transitioning || this.$element.hasClass('sidebar-open')) return


    var startEvent = $.Event('show.bs.sidebar-l')
    this.$element.trigger(startEvent);
    if (startEvent.isDefaultPrevented()) return

    this.$element
      .addClass('sidebar-open')

    this.transitioning = 1

    var complete = function () {
      this.$element
      this.transitioning = 0
      this.$element.trigger('shown.bs.sidebar-l')
    }

    if(!$.support.transition) return complete.call(this)

    this.$element
      .one($.support.transition.end, $.proxy(complete, this))
      .emulateTransitionEnd(400)
  }

  Sidebar.prototype.hide = function () {
    if (this.transitioning || !this.$element.hasClass('sidebar-open')) return

    var startEvent = $.Event('hide.bs.sidebar-l')
    this.$element.trigger(startEvent)
    if(startEvent.isDefaultPrevented()) return

    this.$element
      .removeClass('sidebar-open')

    this.transitioning = 1

    var complete = function () {
      this.transitioning = 0
      this.$element
        .trigger('hidden.bs.sidebar-l')
    }

    if (!$.support.transition) return complete.call(this)

    this.$element
      .one($.support.transition.end, $.proxy(complete, this))
      .emulateTransitionEnd(400)
  }

  Sidebar.prototype.toggle = function () {
    this[this.$element.hasClass('sidebar-open') ? 'hide' : 'show']()
  }

  var old = $.fn.sidebar

  $.fn.sidebar = function (option) {
    return this.each(function (){
      var $this = $(this)
      var data = $this.data('bs.sidebar-l')
      var options = $.extend({}, Sidebar.DEFAULTS, $this.data(), typeof options == 'object' && option)

      if (!data && options.toggle && option == 'show') option = !option
      if (!data) $this.data('bs.sidebar-l', (data = new Sidebar(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.sidebar.Constructor = Sidebar

  $.fn.sidebar.noConflict = function () {
    $.fn.sidebar = old
    return this
  }

  $(document).on('click.bs.sidebar-l.data-api', '[data-toggle="sidebar-l"]', function (e) {
    var $this = $(this), href
    var target = $this.attr('data-target')
        || e.preventDefault()
        || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '')
    var $target = $(target)
    var data = $target.data('bs.sidebar-l')
    var option = data ? 'toggle' : $this.data()

    $target.sidebar(option)
  })

  $('html').on('click.bs.sidebar-l.autohide', function(event){
    var $this = $(event.target);
    var isButtonOrSidebar = $this.is('.sidebar-l, [data-toggle="sidebar-l"]') || $this.parents('.sidebar-l, [data-toggle="sidebar-l"]').length;
    if (isButtonOrSidebar) {
      return;
    } else {
      var $target = $('.sidebar-l');
      $target.each(function(i, trgt) {
        var $trgt = $(trgt);
        if($trgt.data('bs.sidebar-l') && $trgt.hasClass('sidebar-open')) {
            $trgt.sidebar('hide');
        }
      })
    }
  });
}(jQuery);
