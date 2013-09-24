module GameHelper
  def get_sex_p1(sex, image, value)
    content_tag( :span, link_to(image_tag(image, :size=>"35x35"), select_p1_path(:sex_p_1=>value)), :class=>(sex == value.to_s)?'span1 proba_fondo9':'span1 proba_fondo7') 
#  if (sex == value.to_s)
#    return content_tag( :div, link_to(image_tag(image, :size=>"40x40"), select_p1_path(:sex_p_1=>value)), :class=>'span1 proba_fondo9') 
#  end
#  return content_tag( :div, link_to(image_tag(image, :size=>"40x40"), select_p1_path(:sex_p_1=>value)), :class=>'span1 proba_fondo7') 
  end
  
  def get_sex_p2(sex, image, value)
    content_tag( :span, link_to(image_tag(image, :size=>"35x35"), select_p2_path(:sex_p_2=>value)), :class=>(sex == value.to_s)?'span1 proba_fondo9':'span1 proba_fondo7') 
#    if (sex == value.to_s)
#      return content_tag( :div, link_to(image_tag(image, :size=>"40x40"), select_p2_path(:sex_p_2=>value)), :class=>'span1 proba_fondo9') 
#    end
#    return content_tag( :div, link_to(image_tag(image, :size=>"40x40"), select_p2_path(:sex_p_2=>value)), :class=>'span1 proba_fondo7') 
  end
  
  def get_image_by_sex(sex)
    if (sex==1.to_s)
      return content_tag(:div, image_tag('female.png', :size=>"33x33"))
    end
    return content_tag(:div, image_tag('male.png', :size=>"33x33"))
  end
end
