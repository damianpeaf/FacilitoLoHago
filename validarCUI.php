<?php

function validarCUI($clave,&$error_clave){
   if(strlen($clave) < 13){
      $error_clave = "El CUI no puede tener menos de  13 caracteres";
      return false;
   }
   if(strlen($clave) > 13){
      $error_clave = "El CUI no puede tener más de 13 caracteres";
      return false;
   }
   if (preg_match('`[a-z]`',$clave)){
      $error_clave = "El CUI no puede contener letras";
      return false;
   }
   if (preg_match('`[A-Z]`',$clave)){
      $error_clave = "El CUI no puede contener letras";
      return false;
   }
   if (!preg_match('`[0-9]`',$clave)){
      $error_clave = "El CUI debe contener";
      return false;
   }
   $error_clave = "";
   return true;
}

?>