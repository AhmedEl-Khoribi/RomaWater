(function($) { 
    $.fn.tree_s = function(options) {
        var defaults = {
            'add_option': false,
            'edit_option': false,
            'delete_option': false,
            'confirm_before_delete': false,
            'animate_option': [true, 5],
            'fullwidth_option': false,
            'align_option': 'center',
            'draggable_option': false
        };
        return this.each(function() {
            if (options)
                $.extend(defaults, options);
            var add_option = defaults['add_option'];
            var edit_option = defaults['edit_option'];
            var delete_option = defaults['delete_option'];
            var confirm_before_delete = defaults['confirm_before_delete'];
            var animate_option = defaults['animate_option'];
            var fullwidth_option = defaults['fullwidth_option'];
            var align_option = defaults['align_option'];
            var draggable_option = defaults['draggable_option'];
            var vertical_line_text = '<span class="vertical"></span>';
            var horizontal_line_text = '<span class="horizontal"></span>';
            var add_action_text = add_option == true ? '<span class="add_action" title="Click for Add"></span>' : '';
            var edit_action_text = edit_option == true ? '<span class="edit_action" title="Click for Edit"></span>' : '';
            var delete_action_text = delete_option == true ? '<span class="delete_action" title="Click for Delete"></span>' : '';
            var highlight_text = '<span class="highlight" title="Click for Highlight | dblClick"></span>';
            var class_name = $(this).attr('class');
            var event_name = 'pageload';
            if (align_option != 'center')
                $('.' + class_name + ' li').css({'text-align': align_option});
            if (fullwidth_option) {
                var i = 0;
                var prev_width;
                var get_element;
                $('.' + class_name + ' li li').each(function() {
                    var this_width = $(this).width();
                    if (i == 0 || this_width > prev_width) {
                        prev_width = $(this).width();
                        get_element = $(this);
                    }
                    i++;
                });
                var loop = get_element.closest('ul').children('li').eq(0).nextAll().length;
                var fullwidth = parseInt(0);
                for ($i = 0; $i <= loop; $i++) {
                    fullwidth += parseInt(get_element.closest('ul').children('li').eq($i).width());
                }
                $('.' + class_name + '').closest('div').width(fullwidth);
            }
            $('.' + class_name + ' li.thide').each(function() {
                $(this).children('ul').hide();
            });
            function prepend_data(target) {
                target.prepend(vertical_line_text + horizontal_line_text);
            }
            function draw_line(target) {
                var tree_offset_left = $('.' + class_name + '').offset().left;
                tree_offset_left = parseInt(tree_offset_left, 10);
                var child_width = target.children('div').outerWidth(true) / 2;
                var child_left = target.children('div').offset().left;
                if (target.parents('li').offset() != null)
                    var parent_child_height = target.parents('li').offset().top;
                vertical_height = (target.offset().top - parent_child_height) - target.parents('li').children('div').outerHeight(true) / 2;
                target.children('span.vertical').css({'height': vertical_height, 'margin-top': -vertical_height, 'margin-left': child_width, 'left': child_left - tree_offset_left});
                if (target.parents('li').offset() == null) {
                    var width = 0;
                } else {
                    var parents_width = target.parents('li').children('div').offset().left + (target.parents('li').children('div').width() / 2);
                    var current_width = child_left + (target.children('div').width() / 2);
                    var width = parents_width - current_width;
                }
                var horizontal_left_margin = width < 0 ? -Math.abs(width) + child_width : child_width;
                target.children('span.horizontal').css({'width': Math.abs(width), 'margin-top': -vertical_height, 'margin-left': horizontal_left_margin, 'left': child_left - tree_offset_left});
            }
            function call_structure() {
                $('.' + class_name + ' li').each(function() {
                    if (event_name == 'pageload')
                        prepend_data($(this));
                    draw_line($(this));
                });
            }
            animate_option[0] ? animate_call_structure() : call_structure();
            event_name = 'others';
            $(window).resize(function() {
                call_structure();
            });
            function find_parent(_this) {
                if (_this.length > 0) {
                    _this.children('div').addClass('parent');
                    _this = _this.closest('li').closest('ul').closest('li');
                    return find_parent(_this);
                }
            }



		});
    };
})(jQuery);