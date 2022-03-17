class Pagelink


  def page_link
    # $browser.link(text: "Enter the Store")
    $browser.element(:xpath => "//a[@href='actions/Catalog.action']")
  end


  end