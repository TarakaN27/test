$(document).ready(function() {
  $('.link').on('click', f_acc);
});
function f_acc(){
  $('.body_block').not($(this).next()).slideUp(300);
  $(this).next().slideToggle(300);
  return false;
}