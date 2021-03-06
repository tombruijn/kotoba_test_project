require "kotoba"

Kotoba.config do |config|
  config.title = "test"
  config.authors = ["Tom de Bruijn"]
  config.filename = "test"
  config.export_to :pdf
  config.chapter_on_new_page = true
  config.section_spacing = 20.mm
  config.add_font "OpenSans", {
    normal: "OpenSans-Regular.ttf",
    italic: "OpenSans-Italic.ttf",
    bold: "OpenSans-Bold.ttf",
    bold_italic: "OpenSans-BoldItalic.ttf"
  }

  config.layout_for 135 do |l|
    l.header do |h|
      h.font = "OpenSans"
      h.color = "FF0000"
      h.page_numbering do |n|
        n.active = true
        n.align = :center
        n.string = "last header <page> of <total>"
      end

      h.content do |prawn|
        prawn.text "I'm the last header", :align => :left
      end
    end
  end

  config.layout_for 1..2 do |l|
    l.width = 40.cm
    l.height = 30.cm
    l.margin do |m|
      m.top = 1.cm
      m.bottom = 3.cm
      m.inner = 1.cm
      m.outer = 1.cm
    end

    l.default do |d|
      d.font = "OpenSans"
      d.color = "FF0000"
      d.size = 12.pt
      d.line_height = 12.pt
    end

    l.paragraph do |p|
      p.indent = false
    end

    l.heading 1 do |h|
      h.size = 40.pt
    end
    l.heading 2 do |h|
      h.size = 34.pt
    end
    l.heading 3 do |h|
      h.size = 28.pt
    end

    l.unordered_list do |li|
      li.indent = 5.mm
      li.prefix = "-> "
    end

    l.ordered_list do |li|
      li.indent = 5.mm
      li.prefix = "{n}) "
    end

    l.code do |c|
      c.indent = 10.mm
    end

    l.quote do |q|
      q.indent = 20.mm
    end

    l.header do |h|
      h.color = "FF0000"
      h.page_numbering do |n|
        n.active = true
        n.align = :center
        n.string = "one header <page> of <total>"
      end

      h.content do |prawn|
        prawn.text "I'm a one header", :align => :left
      end
    end
    l.footer do |f|
      f.color = "FF0000"
      f.page_numbering do |n|
        n.active = true
        n.align = :center
        n.string = "one footer <page> of <total>"
      end

      f.content do |prawn|
        prawn.text "Hello one footer!", :align => :left
      end
    end
  end

  config.layout do |l|
    l.width = 15.cm
    l.height = 23.cm
    l.margin do |m|
      m.top = 1.5.cm
      m.bottom = 1.6.cm
      m.inner = 2.cm
      m.outer = 1.7.cm
    end

    l.default do |d|
      d.font = "OpenSans"
      d.color = "FF0000"
      d.size = 11.5.pt
      d.line_height = 13.pt
      # d.style = [:bold]
    end

    l.heading 1 do |h|
      h.size = 30.pt
    end
    l.heading 2 do |h|
      h.size = 20.pt
    end
    l.heading 3 do |h|
      h.size = 16.pt
    end

    l.footer do |f|
      f.color = "FF0000"
      f.page_numbering do |n|
        n.start_count_at = 10
        n.active = true
        n.align = :center
        n.string = "footer: <page> of <total>"
      end

      f.content do |prawn|
        prawn.text "Hello footer!", :align => :left
      end
    end
    l.header do |h|
      h.color = "FF0000"
      h.page_numbering do |n|
        n.start_count_at = 10
        n.active = true
        n.align = :center
        n.string = "header: <page> of <total>"
      end
      h.content do |prawn|
        prawn.text "I'm a header", :align => :left
      end
    end
  end
end
