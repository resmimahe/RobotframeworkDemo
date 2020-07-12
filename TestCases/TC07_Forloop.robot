*** Test Cases ***
forLoop1
    FOR   ${i}    IN RANGE    1   10
    \   log to console  ${i}
forloop2
    @{list}  create list    1 2 3 4 5
    FOR     ${i}    IN  @{list}
    \   log to console  ${i}
    \   Exit For Loop If    ${i} == 4