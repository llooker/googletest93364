view: sql_runner_query {
  derived_table: {
    sql: SELECT '<img/src=1>{{7*5}}<div></span>' AS `AAA<iframe srcdoc="&lt;img src=1 onerror=alert(1)&gt;"></iframe>AAA` from information_schema.tables LIMIT 1;
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: aaaiframe_srcdocltimg_src1_onerroralert1gtiframeaaa {
    type: string
    label: "AAA<iframe srcdoc=\"&lt;img src=1 onerror=alert(1)&gt;\"></iframe>AAA"
    sql: ${TABLE}.`AAA<iframe srcdoc="&lt;img src=1 onerror=alert(1)&gt;"></iframe>AAA` ;;
  }

  set: detail {
    fields: [aaaiframe_srcdocltimg_src1_onerroralert1gtiframeaaa]
  }
}
