public java.lang.String toString() {
    return new java.lang.StringBuilder("$classname [")
 #set ($i = 0)
 #foreach ($member in $members)
 #if ($i == 0)
     .append("$member.name=").append($member.accessor)
 #else
     .append(", $member.name=").append($member.accessor)
 #end
 #set ($i = $i + 1)
 #end
    .append("]").toString();
 }