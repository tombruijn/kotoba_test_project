require "kotoba"

Kotoba.config do |config|
  config.title = "test"
  config.authors = ["Tom de Bruijn"]
  config.filename = "test"
  config.export_to :pdf
  # config.export_to :text

  config.layout_for 1 do |l|
    l.width = 20.cm
    l.height = 40.cm
    l.margin do |m|
      m.top = 1.cm
      m.bottom = 1.cm
      m.inner = 1.cm
      m.outer = 1.cm
    end

    l.default do |d|
      d.color = "FF0000"
      d.size = 20.pt
      d.line_height = 25.pt
    end

    l.paragraph do |p|
      p.indent = false
    end

    l.heading 1 do |h|
      h.size = 30.pt
    end
    l.heading 2 do |h|
      h.size = 20.pt
    end
    l.heading 3 do |h|
      h.size = 10.pt
    end

    l.header do |h|
      h.page_numbering do |n|
        n.active = false
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
      d.font = "Times-Bold"
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
        n.active = true
        n.align = :right
      end

      f.content do |prawn|
        prawn.text "Hello footer!", :align => :left
      end
    end
    l.header do |h|
      h.page_numbering do |n|
        n.active = true
        n.align = :right
      end
      h.content do |prawn|
        prawn.text "I'm a header", :align => :left
      end
    end
  end
end
