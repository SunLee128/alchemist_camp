defmodule AlchemyMarkdown do
  def to_html(markdown) do
    markdown
    |> earmark
    |> big
    |> small
    |> hrs
  end

  def earmark(markdown) do
    Earmark.as_html!(markdown || "", %Earmark.Options{smartypants: false})
  end

  def big(text) do
    Regex.replace(~r/\+\+(.*)\+\+/, text, "<big>\\1</big>")
  end

  def small(text) do
    Regex.replace(~r/\-\-(.*)\-\-/, text, "<small>\\1</small>")
  end

  def hrs(text) do
    Regex.replace(~r{(^|\r\n|\r|\n)([-*])( *\2 *)+\2}, text, "\\1<hr />")
  end

  def test_str do
    """
    # Main title of my doc

    ## a less important header
    I *so* enjoyed eating that burrito. it was **amazing**!
    what did you think of it?
    ++ Haha ++
    -- small --

    you can make list of
    1. one
    2. two
    3. three

    """
  end
end
