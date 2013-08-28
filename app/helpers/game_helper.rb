module GameHelper
  def get_sex_p1(sex, image, value)
    if (sex == value.to_s)
      return content_tag( :div, link_to(image_tag(image, :size=>"80x80"), select_p1_path(:sex_p_1=>value)), :class=>'span5 proba_fondo9') 
    end
    return content_tag( :div, link_to(image_tag(image, :size=>"80x80"), select_p1_path(:sex_p_1=>value)), :class=>'span5 proba_fondo7') 
  end
  
  def get_sex_p2(sex, image, value)
    if (sex == value.to_s)
      return content_tag( :div, link_to(image_tag(image, :size=>"80x80"), select_p2_path(:sex_p_2=>value)), :class=>'span5 proba_fondo9') 
    end
    return content_tag( :div, link_to(image_tag(image, :size=>"80x80"), select_p2_path(:sex_p_2=>value)), :class=>'span5 proba_fondo7') 
  end
  
  def get_image_by_sex(sex)
    if (sex==1.to_s)
      return content_tag(:div, image_tag('female.png', :size=>"33x33"))
    end
    return content_tag(:div, image_tag('male.png', :size=>"33x33"))
  end
end
