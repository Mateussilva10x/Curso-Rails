module AdminsBackofficeHelper
  def translate_attribute(object = nill, method = nill)
    if object && method
    object.model.human_attribute_name(method)    
    else
    "Informe os parâmetros corretamente!!"
   end
  end
end
