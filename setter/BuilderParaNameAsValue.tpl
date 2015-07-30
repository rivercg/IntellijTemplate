#set($paramName = "value")
public ##
#if($field.modifierStatic)
static void ##
#else
  $classname ##
#end
set$StringUtil.capitalizeWithJavaBeanConvention($StringUtil.sanitizeJavaIdentifier($helper.getPropertyName($field, $project)))($field.type $paramName) {
#if ($field.name == $paramName)
  #if (!$field.modifierStatic)
  this.##
  #else
    $classname.##
  #end
#end
$field.name = $paramName;
#if(!$field.modifierStatic)
return this;
#end
}