require "test_helper"

class HTML::Pipeline::TrixVideoFilterTest < Minitest::Test
  TrixVideoFilter = HTML::Pipeline::TrixVideoFilter

  def test_it_converts_youtube_figures_into_youtube_urls
    assert_equal_html "https://youtube.com/watch?v=FTfrKOQFPNA", TrixVideoFilter.call(youtube_figure)
  end

  def test_it_converts_vimeo_figures_into_vimeo_urls
    assert_equal_html "https://vimeo.com/187229876", TrixVideoFilter.call(vimeo_figure)
  end

  def test_it_leaves_other_figures_alone
    assert_equal_html image_figure, TrixVideoFilter.call(image_figure)
  end

  private

  def youtube_figure
    "<figure class=\"attachment attachment-preview\" data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:360,&quot;url&quot;:&quot;https://img.youtube.com/vi/FTfrKOQFPNA/0.jpg&quot;,&quot;width&quot;:480}\" data-trix-content-type=\"image\"><img src=\"https://img.youtube.com/vi/FTfrKOQFPNA/0.jpg\" width=\"480\" height=\"360\"><figcaption class=\"caption\"></figcaption></figure>"
  end

  def vimeo_figure
    "<figure class=\"attachment attachment-preview\" data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:150,&quot;url&quot;:&quot;https://i.vimeocdn.com/video/597074452_200x150.jpg?r=pad?id=187229876&quot;,&quot;width&quot;:200}\" data-trix-content-type=\"image\"><img src=\"https://i.vimeocdn.com/video/597074452_200x150.jpg?r=pad?id=187229876\" width=\"200\" height=\"150\"><figcaption class=\"caption\"></figcaption></figure>"
  end

  def image_figure
    "<figure class=\"attachment attachment-preview png\" data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;zw.png&quot;,&quot;filesize&quot;:923,&quot;height&quot;:11,&quot;url&quot;:&quot;/uploads/image/filename/113/zw.png&quot;,&quot;width&quot;:16}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;caption&quot;:&quot;with a caption!&quot;}\"><img src=\"/uploads/image/filename/113/zw.png\" width=\"16\" height=\"11\"><figcaption class=\"caption caption-edited\">with a caption!</figcaption></figure>"
  end

end
