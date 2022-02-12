class Catalogpage
  def mainimage
    $browser.div(id: "MainImageContent")
  end
  def pet_link(name)
    $browser.image(src: "../images/sm_#{name}.gif")
  end
  def fishlink
    $browser.image(src: "../images/sm_fish.gif")
  end
  def doglink
    $browser.image(src: "../images/sm_dogs.gif" )
  end
  def reptileslink
    $browser.image(src: "../images/sm_reptiles.gif")
  end
  def birdslink
    $browser.image(src: "../images/sm_birds.gif")
  end
  def catslink
    $browser.image(src: "../images/sm_cats.gif")
  end
  def signuplink
    $browser.link(text: "Sign In")
  end
  def welcomeline
    $browser.div(id: "WelcomeContent")
  end

end