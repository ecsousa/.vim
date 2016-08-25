
function! SetJson()
  augroup SetJson
    autocmd!
    autocmd BufRead http://* set ft=json
    autocmd BufRead http://* %!python -mjson.tool
  augroup END
endfunction

function! SetNoJson()
  augroup SetJson
    autocmd!
  augroup END
endfunction

function! CleanBP()
  g/\<requestId\>/delete
  g/\<href\>/delete
  g/\<advancedFinancialInputs\>/norm d%dd
  g/\<financialInputs\>/norm d%dd
  g/\<updatedBy\>/delete
  g/\<updatedOn\>/delete

endfunction

command! SetJson call SetJson()
command! SetNoJson call SetNoJson()

"adapter
ab approdwp http://pgbpap1.phx.gapinc.com/adapter/api/buy-plan-forecast/working-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab approdcp http://pgbpap1.phx.gapinc.com/adapter/api/buy-plan-forecast/current-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab approdop http://pgbpap1.phx.gapinc.com/adapter/api/buy-plan-forecast/original-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab aprelwp http://gbp-release.gapinc.dev/adapter/api/buy-plan-forecast/working-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab aprelcp http://gbp-release.gapinc.dev/adapter/api/buy-plan-forecast/current-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab aprelop http://gbp-release.gapinc.dev/adapter/api/buy-plan-forecast/original-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab apdevwp http://10.8.8.176/adapter/api/buy-plan-forecast/working-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab apdevcp http://10.8.8.176/adapter/api/buy-plan-forecast/current-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab apdevop http://10.8.8.176/adapter/api/buy-plan-forecast/original-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab apqawp http://dgphxgbpap014.dev.gap.com/adapter/api/buy-plan-forecast/working-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab apqacp http://dgphxgbpap014.dev.gap.com/adapter/api/buy-plan-forecast/current-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab apqaop http://dgphxgbpap014.dev.gap.com/adapter/api/buy-plan-forecast/original-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab appiwp http://dgphxgbpap033.dev.gap.com/adapter/api/buy-plan-forecast/working-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab appicp http://dgphxgbpap033.dev.gap.com/adapter/api/buy-plan-forecast/current-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab appiop http://dgphxgbpap033.dev.gap.com/adapter/api/buy-plan-forecast/original-plan/aggregated<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab recprodwp http://pgbpap1.phx.gapinc.com/adapter/api/buy-plan-forecast/working-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recprodcp http://pgbpap1.phx.gapinc.com/adapter/api/buy-plan-forecast/current-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recprodop http://pgbpap1.phx.gapinc.com/adapter/api/buy-plan-forecast/original-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab recrelwp http://gbp-release.gapinc.dev/adapter/api/buy-plan-forecast/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recrelcp http://gbp-release.gapinc.dev/adapter/api/buy-plan-forecast/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recrelop http://gbp-release.gapinc.dev/adapter/api/buy-plan-forecast/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab recdevwp http://10.8.8.176/adapter/api/buy-plan-forecast/working-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recdevcp http://10.8.8.176/adapter/api/buy-plan-forecast/current-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recdevop http://10.8.8.176/adapter/api/buy-plan-forecast/original-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab recqawp http://dgphxgbpap014.dev.gap.com/adapter/api/buy-plan-forecast/working-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recqacp http://dgphxgbpap014.dev.gap.com/adapter/api/buy-plan-forecast/current-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab recqaop http://dgphxgbpap014.dev.gap.com/adapter/api/buy-plan-forecast/original-plan/receipt-and-sales<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

"buyplan
ab bpprodwp http://pgphxgbpap002.phx.gapinc.com:8070/planning-service/planning/buy-plan/planned-customer-choices
ab bpprodcp http://pgphxgbpap002.phx.gapinc.com:8070/planning-service/planning/buy-plan/planned-customer-choices/current-plan/<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab bpprodop http://pgphxgbpap002.phx.gapinc.com:8070/planning-service/planning/buy-plan/planned-customer-choices/original-plan/<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab bprelwp http://gbp-release.gapinc.dev/planning-service/planning/buy-plan/planned-customer-choices
ab bprelcp http://gbp-release.gapinc.dev/planning-service/planning/buy-plan/planned-customer-choices/current-plan/<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab bprelop http://gbp-release.gapinc.dev/planning-service/planning/buy-plan/planned-customer-choices/original-plan/<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

ab bpqawp http://gbp-router.gapinc.dev:8080/planning-service/planning/buy-plan/planned-customer-choices
ab bpqacp http://gbp-router.gapinc.dev:8080/planning-service/planning/buy-plan/planned-customer-choices/current-plan/<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
ab bpqaop http://gbp-router.gapinc.dev:8080/planning-service/planning/buy-plan/planned-customer-choices/original-plan/<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

