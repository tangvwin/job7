module JobsHelper

  def render_job_status(job)
    if job.is_hidden
      content_tag(:span, "", :class => "fa fa-2x fa-fw fa-eye-slash")
    else
      content_tag(:span, "", :class => "-alt fa fa-2x fa-eye fa-fw")
    end
  end

  def render_highlight_content(job,query_string)
      excerpt_cont = excerpt(job.title, query_string, radius: 500)
      highlight(excerpt_cont, query_string)
    end


end
