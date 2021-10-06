# Mocolo Demo

## Source

- `https://github.com/uber/mockolo`

## Introduction

1. `mint install uber/mockolo`

2. `mint run uber/mockolo mockolo -h`

3. Target > Build Phases > + > New Run Script > [Generate Mocks with Mockolo]

4. shell >

   ``` 
    if which mint >/dev/null; then
    rm -f $SRCROOT/Mockolo-Demo/Mocks/MockResults.swift
   
    mint run mockolo mockolo --sourcedirs $SRCROOT/Mockolo-Demo/ --destination $SRCROOT/Mockolo-Demo/Mocks/MockResults.swift
   
   else
   
    echo "warning: Mint not installed, download from https://github.com/yonaskolb/Mint"
   
   fi
   ```

5. Output Files > + > `

6.  add gitignore `Mocks/MockResults.swift`

7. Protocolの上段に`/// @mockable`をつける
8. Mocksディレクトリをプロジェクトに追加
9. Build
10. 出来上がったMockを使用し、テストを追加