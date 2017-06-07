class ShoeStore
  include PageObject
  URL = "http://shoestore-manheim.rhcloud.com"

  def open
    $browser.goto(URL)
  end

  def shoe_brand
    $browser.select_list(:id, "brand").select(brand)
  end

  def click_month(month)
    $browser.element(:link_text, month).click
  end

  def click_shoes
    $browser.button(:id, "search_button").click
  end

  def view_all_shoes
    $browser.link(:url, "href="/shoes"").click
  end

  def count_all_shoes
    $browser.ul(:id, "shoe_list").visible.lis.length
  end

  def textfield_present?
    $browser.element(:id, "remind_email_input").present?
  end

  def input_email(email)
    $browser.text_field(:id, "remind_email_input").set email
  end

  def submit_email
    $browser.element(:xpath, '//input[@type="submit"]').click
  end

  def shoes_present?
    self.get_shoes.count >= 1
  end

  def prices_present?
    self.verify_element("shoe_price", :text)
  end

  def blurbs_present?
    self.verify_element("shoe_description", :text)
  end

  def images_present?
    self.get_images.all? do |image|
      image.loaded? && image.src != ""
    end
  end

  def get_shoes
    results = $browser.elements(:class, "shoe_result")
  end

  def get_images
    containers = $browser.elements(:class, "shoe_image")
    images = []
    containers.each do |container|
      images.push(container.img)
    end
    images
  end

  def verify_element(Class, attribute)
    self.get_shoes.all? do |shoe|
      element = shoe.element(:class, Class)
      element.send(attribute).is_a?(String) && element != ""
    end
  end
end