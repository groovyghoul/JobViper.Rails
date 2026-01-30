module IconHelper
  def icon_svg(width: 24, height: 24, stroke: "currentColor", stroke_width: 2, classes: nil, view_box: "0 0 24 24", fill: "none", linecap: "round", linejoin: "round", **options, &block)
    attrs = {
      xmlns: "http://www.w3.org/2000/svg",
      width: width,
      height: height,
      viewBox: view_box,
      fill: fill,
      stroke: stroke,
      "stroke-width": stroke_width,
      "stroke-linecap": linecap,
      "stroke-linejoin": linejoin
    }
    attrs[:class] = classes if classes.present?
    attrs.merge!(options) if options.any?

    content_tag(:svg, attrs, &block)
  end

  def icon_close(width: 24, height: 24, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.line(x1: "18", y1: "6", x2: "6", y2: "18"),
        tag.line(x1: "6", y1: "6", x2: "18", y2: "18")
      ])
    end
  end

  def icon_back(width: 24, height: 24, stroke: "currentColor", stroke_width: 2.5, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.line(x1: "19", y1: "12", x2: "5", y2: "12"),
        tag.polyline(points: "12 19 5 12 12 5")
      ])
    end
  end

  def icon_trash(width: 24, height: 24, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M3 6h18"),
        tag.path(d: "M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6"),
        tag.path(d: "M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2")
      ])
    end
  end

  def icon_trash_simple(width: 24, height: 24, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M3 6h18"),
        tag.path(d: "M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6")
      ])
    end
  end

  def icon_trash_full(width: 24, height: 24, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M3 6h18"),
        tag.path(d: "M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6"),
        tag.path(d: "M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2"),
        tag.line(x1: "10", y1: "11", x2: "10", y2: "17"),
        tag.line(x1: "14", y1: "11", x2: "14", y2: "17")
      ])
    end
  end

  def icon_logo(width: 24, height: 24, stroke: "currentColor", stroke_width: 3, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "m12 14 4-4"),
        tag.path(d: "M3.34 19a10 10 0 1 1 17.32 0")
      ])
    end
  end

  def icon_eye(width: 16, height: 16, stroke: "currentColor", stroke_width: 2.5, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M2 12s3-7 10-7 10 7 10 7-3 7-10 7-10-7-10-7Z"),
        tag.circle(cx: "12", cy: "12", r: "3")
      ])
    end
  end

  def icon_eye_off(width: 16, height: 16, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M9.88 9.88 3.59 3.59"),
        tag.path(d: "m21 21-6.11-6.11"),
        tag.path(d: "M2 12s3-7 10-7a9.77 9.77 0 0 1 5 1.36"),
        tag.path(d: "M22 12s-3 7-10 7a9.77 9.77 0 0 1-5-1.36"),
        tag.path(d: "m15 9.17a3 3 0 1 0-4.17 4.17")
      ])
    end
  end

  def icon_grid(width: 20, height: 20, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.rect(width: "7", height: "7", x: "3", y: "3", rx: "1"),
        tag.rect(width: "7", height: "7", x: "14", y: "3", rx: "1"),
        tag.rect(width: "7", height: "7", x: "14", y: "14", rx: "1"),
        tag.rect(width: "7", height: "7", x: "3", y: "14", rx: "1")
      ])
    end
  end

  def icon_list(width: 20, height: 20, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.line(x1: "8", y1: "6", x2: "21", y2: "6"),
        tag.line(x1: "8", y1: "12", x2: "21", y2: "12"),
        tag.line(x1: "8", y1: "18", x2: "21", y2: "18"),
        tag.line(x1: "3", y1: "6", x2: "3.01", y2: "6"),
        tag.line(x1: "3", y1: "12", x2: "3.01", y2: "12"),
        tag.line(x1: "3", y1: "18", x2: "3.01", y2: "18")
      ])
    end
  end

  def icon_pin(width: 16, height: 16, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"),
        tag.circle(cx: "12", cy: "10", r: "3")
      ])
    end
  end

  def icon_user(width: 16, height: 16, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"),
        tag.circle(cx: "9", cy: "7", r: "4")
      ])
    end
  end

  def icon_clock(width: 16, height: 16, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.circle(cx: "12", cy: "12", r: "10"),
        tag.polyline(points: "12 6 12 12 16 14")
      ])
    end
  end

  def icon_chevron_right(width: 20, height: 20, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      tag.path(d: "m9 18 6-6-6-6")
    end
  end

  def icon_calendar(width: 20, height: 20, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.rect(width: "18", height: "18", x: "3", y: "4", rx: "2", ry: "2"),
        tag.line(x1: "16", y1: "2", x2: "16", y2: "6"),
        tag.line(x1: "8", y1: "2", x2: "8", y2: "6"),
        tag.line(x1: "3", y1: "10", x2: "10", y2: "10")
      ])
    end
  end

  def icon_salary(width: 20, height: 20, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.line(x1: "12", y1: "2", x2: "12", y2: "22"),
        tag.path(d: "M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6")
      ])
    end
  end

  def icon_file(width: 18, height: 18, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M14.5 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7.5L14.5 2z"),
        tag.polyline(points: "14 2 14 8 20 8")
      ])
    end
  end

  def icon_report(width: 16, height: 16, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M7 7h10"),
        tag.path(d: "M7 12h10"),
        tag.path(d: "M7 17h10"),
        tag.rect(width: "18", height: "18", x: "3", y: "3", rx: "2")
      ])
    end
  end

  def icon_archive(width: 16, height: 16, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "m7.5 4.27 9 5.15"),
        tag.path(d: "M21 8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16Z"),
        tag.path(d: "m3.3 7 8.7 5 8.7-5"),
        tag.path(d: "M12 22V12")
      ])
    end
  end

  def icon_edit(width: 14, height: 14, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      tag.path(d: "M17 3a2.85 2.83 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5Z")
    end
  end

  def icon_edit_full(width: 18, height: 18, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.path(d: "M17 3a2.85 2.83 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5Z"),
        tag.path(d: "m15 5 4 4")
      ])
    end
  end

  def icon_mail(width: 14, height: 14, stroke: "currentColor", stroke_width: 2, classes: nil)
    icon_svg(width: width, height: height, stroke: stroke, stroke_width: stroke_width, classes: classes) do
      safe_join([
        tag.rect(width: "20", height: "16", x: "2", y: "4", rx: "2"),
        tag.path(d: "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7")
      ])
    end
  end
end
