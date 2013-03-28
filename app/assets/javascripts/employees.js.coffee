# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
    $('#employees').dataTable
      sPaginationType: "full_numbers"
      bJQueryUI: true
      bProcessing: true
      bServerSide: true
      sAjaxSource: $('#employees').data('source')
      oLanguage: 
        sProcessing:   "Подождите...",
        sLengthMenu:   "Показать _MENU_ записей",
        sZeroRecords:  "Записи отсутствуют.",
        sInfo:         "Записи с _START_ до _END_ из _TOTAL_ записей",
        sInfoEmpty:    "Записи с 0 до 0 из 0 записей",
        sInfoFiltered: "(отфильтровано из _MAX_ записей)",
        sInfoPostFix:  "",
        sSearch:       "Поиск:",
        sUrl:          "",
        oPaginate: 
          sFirst: "Первая",
          sPrevious: "Предыдущая",
          sNext: "Следующая",
          sLast: "Последняя"
        oAria:
          sSortAscending:  ": активировать для сортировки столбца по возрастанию",
          sSortDescending: ": активировать для сортировки столбцов по убыванию"
