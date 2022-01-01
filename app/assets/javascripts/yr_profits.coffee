# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->  
        $('#yr_profits').dataTable({
        pagingType: 'full_numbers', 
        order: [[ 0, "asc" ],[ 1, "desc"],[ 2, "desc"]]
        })