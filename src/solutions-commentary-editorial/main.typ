#import "@preview/ucpc-solutions:0.1.0" as ucpc
#import ucpc: color
#import ucpc.presets: difficulties as lv

#let primary-color = rgb("#007A33")

#show: ucpc.ucpc.with(
  title: "2024 하반기 전남대학교 PIMM 알고리즘 파티",
  authors: ("Solutions Commentary Editorial", ),
  hero: ucpc.utils.make-hero(
    title: [\
      2024 하반기\
      전남대학교 PIMM 알고리즘 파티
      
    ],
    subtitle: [Solutions Commentary Editorial],
    bgcolor: primary-color,
    authors: ([전남대학교 게임개발동아리 PIMM #super[알고리즘 연구회]], ),
  ),
)

#let copy = "©"
#let challenging = text(weight: "bold")[#text(fill: color.platinum.III)[Chal]#text(fill: gradient.linear(color.platinum.III, color.diamond.III, angle: 0deg))[len]#text(fill: color.diamond.III)[ging]]
#let name(name, id) = [#name#super(id)]
#let 고민규 = name("고민규", `jjkmk1013`)
#let 김근성 = name("김근성", `onsbtyd`)
#let 송혜근 = name("송혜근", `invrtd_h`)
#let 박종현 = name("박종현", `belline0124`)
#let 이윤수 = name("이윤수", `lys9546`)
#let 정영도 = name("정영도", `0do`)
#let 최정환 = name("최정환", `jh01533`)

#pagebreak()

#text(size: 18pt)[#align(horizon)[
  == This Contest is operated by
  \
  #grid(
    columns: 5,
    inset: 1em,
    align: center,
    고민규, 김근성, 송혜근, 박종현, 이윤수, 정영도, 최정환, [], [], [],
    `dongwook7`, `jwpassion1`, `kiwiyou`, `ksoosung77`, `lycoris1600`, `measurezero`, `mujigae`, `tony9402`, `utilforever`
  )
  with #emoji.heart.
]]


#pagebreak()


#let fontsize-content = .6em
#text(size: 18pt)[
  #text(size: 1.2em)[== 대회 순위상, 특별상 및 추첨상]
  #align(horizon)[  
  #text(size: fontsize-content)[
    - 자세한 특별상과 추첨상 선정 과정은 #underline[#link("https://github.com/PIMM-DEV/2024-second-half-algorithm-party-editorial")[에디토리얼 리포지토리]]를 참조해주십시오.
    - 부정행위를 한 것이 확실한 참가자가 제외되었습니다.
    - 같은 특별상 조건을 여러 명이 달성한 경우, 추첨을 통해 선정되었습니다.
  ]
  #grid(
    columns: (1.1fr, 2fr, 2fr),
    align: top,
    inset: (left: 0em, top: 0em, x: 1em, y: 1em),
    [
      순위상
      #text(size: fontsize-content)[

        1. #text(size: 1.4em)[`bnb2011`]\
          5 AC, -137
        
        2. #text(size: 1.4em)[`zhxpdustmqdyd`]\
          5AC, -270
        3. #text(size: 1.4em)[`sehujeong`]\
          5AC, -274
      ]
    ],
    [
      특별상
      #text(size: fontsize-content)[
        
        - #underline[#link("https://store.steampowered.com/app/1843020/DJMAX_RESPECT_V__V_EXTENSION_II_PACK/")[*｢알로록 달로록｣*]] ------ `patata22`\
          #text(size: .85em)[가장 다양한 언어로 제출했다.]
          
        - #underline[#link("https://www.youtube.com/watch?v=Fx8bf-EY2Ws")[*｢두돈반이 덜컹거려서 눈을 떴어｣*]] ------ `xiaowuc1`\
          #text(size: .85em)[가장 먼저 \<훈련병의 편지\>를 제출했다.]
        - *｢09.22 패치노트｣*#super[이제 가을 시즌이 업데이트됩니다.] ------ `fermion5`\
          #text(size: .85em)[가장 먼저 \<더워!\> 문제를 해결했다.]
        - #underline[#link("https://namu.wiki/w/%EC%BF%A0%EA%B0%80%20%EC%A5%AC%EB%A9%94%EC%9D%B4#s-4")[*｢필요한 만큼은 보여줬다｣*]] ------ `seawon0808`\
          #text(size: .85em)[한 번만 제출한 사람들 중 가장 먼저 제출했다.]
        - #underline[#link("https://namu.wiki/w/%EC%9E%A0%EC%8B%9C%20%EC%86%8C%EB%9E%80%EC%9D%B4%20%EC%9E%88%EC%97%88%EC%96%B4%EC%9A%94")[*｢잠시 소란이 있었지만 대회를 다시 진행하겠습니다｣*]] \
          ------ `zhxpdustmqdyd`\
          #text(size: .85em)[두 번 이상 제출한 사람들 중 연이은 두 제출의 간격이 가장 길었다.]
        - #underline[#link("https://namu.wiki/w/%EB%8B%88%ED%8A%B8%EB%A1%9C%20%EB%B0%95%EC%82%AC")[*｢저희에게 시간과 예산을 더 주신다면…｣*]] ------ `alsduddml7`\
          #text(size: .85em)[가장 마지막으로 제출했다.]
      ]
    ],
    [
      추첨상
      #text(size: fontsize-content)[
        
        - *스타벅스 아이스 카페 아메리카노 T*\
        
          `john_cowart`, `zhxpdustmqdyd`, `ili`, `bumsoo0515`, `areian13`, `choisang0826`, `golazcc83`, `kangkh0906`, `isekaijoucho`, `hyperbolic`
          \
          \
        - *메가커피 아이스 아메리카노*\
        
          `bnb2011`, `alsduddml7`, `shs0911`, `bic0893`, `qkrgusthf04`, `pedalcircle`, `newbiekhu`, `jlib245`, `soh2254`, `pda0503`
          \
          \
        - *베스킨라빈스 싱글레귤러*\

          `kes0716`, `a891`, `dbgusdn012`, `uno950114`, `riroan`, `mulebanga`, `rrkcl77`, `sehujeong`, `cinador`, `dabbler1`
        
      ]
    ]
  )
  
  
]]
#pagebreak()

#let fontsize-content = .6em
#text(size: 18pt)[
  #text(size: 1.2em)[== 참가 기념 solved.ac 프로필 배경 / 뱃지]
  #align(horizon)[
  #text(size: fontsize-content)[
    - 부정행위를 한 것이 확실한 제출은 획득 조건 평가에서 제외됩니다.
    - 자세한 사항은 솔브드와의 협의 내용에 따라 변경될 수 있습니다.
    \
    #grid(
      columns: 2,
      inset: (right: 1em),
      [
        #image("assets/i-cannot-do-anymore.png", height: 75pt)
      ],
      [
        #text(size: 1.2em)[나 더 이상 못 풀어] \
        #copy 정희수\@PIMM\
        #text(size: .8em)[2024 하반기 전남대학교 PIMM 알고리즘 파티에서 한 문제 이상 해결]
      ]
    )
    #grid(
      columns: (1fr, 1fr),
      inset: (right: 1em),
      align: center,
      [
        #image("assets/letter-from-trainee.png", width: 100%) \
        #text(size: 1.2em)[훈련병의 편지]\
        #copy 김근성\@PIMM\
        #text(size: .8em)[2024 하반기 전남대학교 PIMM 알고리즘 파티에서 한 문제 이상 해결]
      ],
      [
        #image("assets/season-second-marathon.png", width: 100%) \
        #text(size: 1.2em)[시즌 두 번째 켠왕]\
        #copy 정희수\@PIMM\
        #text(size: .8em)[2024 하반기 전남대학교 PIMM 알고리즘 파티에서 두 문제 이상 해결]
      ]
    )

  ]
]]
#pagebreak()

#ucpc.utils.make-prob-overview(
  font-size: .8em,
  i18n: ucpc.i18n.ko-kr.make-prob-overview,
  [A], [더블 팰린드롬], lv.easy, 이윤수,
  [B], [근성아 일하자], lv.normal, [#고민규, #이윤수],
  [C], [나무가 되고 싶다], lv.normal, 송혜근,
  [D], [더워!], lv.hard, 고민규,
  [E], [도서 검색 프로그램], lv.hard, 정영도,
  [F], [훈련병의 편지], challenging, 김근성,
  [G], [피라미드 게임], challenging, 최정환,
)
#pagebreak()

#ucpc.utils.problem(
  id: "A",
  title: "더블 팰린드롬",
  tags: ("combinatorics", "string", ),
  difficulty: lv.easy,
  authors: (이윤수, ),
  stat-open: (
    submit-count: 317,
    ac-count: 156,
    ac-ratio: 50.789,
    first-solver: `ychangseok`,
    first-solve-time: 1,
  ),
  pallete: (
    primary: primary-color,
    secondary: white,
  ),
  i18n: ucpc.i18n.ko-kr.problem,
  [
    - 더블팰린드롬 현상을 일으키는 문자열을 보면 $X_1$, $X_2$가 팰린드롬인 경우에만 성립함을 알 수 있습니다.
    - 따라서, 주어진 문자열 중 팰린드롬인 문자열의 개수를 세서 만들 수 있는 더블팰린드롬 현상을 $N*(N-1)\/2$로 세주면 답을 구할 수 있습니다.
  ]
)

#ucpc.utils.problem(
  id: "B",
  title: "근성아 일하자",
  tags: ("data_structures", "implementation", ),
  difficulty: lv.normal,
  authors: (고민규, 이윤수, ),
  stat-open: (
    submit-count: 274,
    ac-count: 79,
    ac-ratio: 29.562,
    first-solver: `p_ce1052`,
    first-solve-time: 6,
  ),
  pallete: (
    primary: primary-color,
    secondary: white,
  ),
  i18n: ucpc.i18n.ko-kr.problem,
  [
    - 1번 쿼리가 들어올 때마다 쓰레기를 저장하여 2번 쿼리가 들어올 때 정렬한 후 현재 위치를 기준으로 좌우의 가장 가까운 쓰레기를 반복해서 찾아야 합니다.
    
    - 이를 효율적으로 처리하기 위해서 두 개의 스택을 이용하여 현재 위치보다 작은 그룹 큰 그룹으로 나눈 후, 반복해서 이동시켜 이동 거리를 구할 수 있습니다.
    - 그 외에 set과 lower_bound를 이용한 풀이, 투 포인터를 이용한 풀이 등이 있습니다.
  ]
)

#ucpc.utils.problem(
  id: "C",
  title: "나무가 되고 싶다",
  tags: ("bfs", "dfs", "hash_set", ),
  difficulty: lv.normal,
  authors: (송혜근, ),
  stat-open: (
    submit-count: 151,
    ac-count: 31,
    ac-ratio: 21.192,
    first-solver: `chmpro`,
    first-solve-time: 8,
  ),
  pallete: (
    primary: primary-color,
    secondary: white,
  ),
  i18n: ucpc.i18n.ko-kr.problem,
  [
    다양한 풀이가 존재하는 문제입니다.
    
    - 가장 단순한 풀이는 1번 노드부터 DFS를 시작하는 것입니다.
      - V에 속하는 노드에는 방문하지 않습니다.
      - DFS를 돌면서 방문한 노드의 번호가 $2^60$ 이상이 되면, 그 노드의 후손 노드는 모두 $V$ 내의 어떤 노드도 조상으로 갖지 않는 노드가 됩니다. 따라서 탐색을 종료하고 $-1$을 출력하면 됩니다. 
      - 방문한 노드의 번호가 $2^60$ 미만이라면, 기존 DFS와 똑같이 동작합니다.
      
    #pagebreak()
    - DFS 풀이가 시간 안에 작동함을 증명하려면, 문제에서 요구하는 집합이 유한집합이라면 그 크기는 항상 $N-1$ 이하임을 수학적 귀납법 등으로 증명하면 됩니다.\
      - 문제에서 요구하는 집합의 크기가 $K$이면 그 집합과 인접한 노드의 개수가 $K+1$임을 먼저 수학적 귀납법으로 증명합니다. 그리고 그 집합과 인접한 노드들의 집합은 $V$의 부분집합임을 증명하면 됩니다.

    - 그래프 탐색만 잘하면 되므로 BFS 등의 다른 탐색 방법을 사용해도 됩니다.\
      그러나 BFS를 사용할 때는 노드의 번호를, set을 사용하여 관리해야 하고, 방문한 노드의 개수가 $N$을 넘어서면 바로 탐색을 종료하는 등의 전략이 필요합니다.
  ]
)

#ucpc.utils.problem(
  id: "D",
  title: "더워!",
  tags: ("bfs", "graph_traversal", ),
  difficulty: lv.hard,
  authors: (고민규, ),
  stat-open: (
    submit-count: 63,
    ac-count: 35,
    ac-ratio: 55.556,
    first-solver: `fermion5`,
    first-solve-time: 17,
  ),
  pallete: (
    primary: primary-color,
    secondary: white,
  ),
  i18n: ucpc.i18n.ko-kr.problem,
  [
    - 격자의 제한이 $100*100$, 민규의 불쾌함의 범위가 $100$ 이하이므로 아래와 같이 상태를 저장하는 배열을 주어진 메모리 내에서 만들 수 있습니다.
    - `visited[i][j][k]`: $i$행 $j$열에 도달하여 민규의 불쾌함이 $k$일때의 최단 거리

    - 민규의 집 위치인 $S$의 좌표를 $(x_s, y_s)$, 약속 장소인 $E$의 좌표를 $(x_e, y_e)$라 했을 때, `visited[`$x_s$`][`$y_s$`]`$ = 0$으로 BFS를 시작하여 방문된 `visited[`$x_e$`][`$y_e$`]` 중 최솟값을 찾으면 문제를 해결할 수 있습니다. 만약 `visited[`$x_e$`][`$y_e$`]` 중 방문된 점이 없으면 $-1$을 출력합니다. 

    - 지문에서 주어진 대로, 이동 $->$ 불쾌함 변화 $->$ 도착 판단의 순서를 잘 지켜 구현해야 하는 문제입니다.
  ]
)

#ucpc.utils.problem(
  id: "E",
  title: "도서 검색 프로그램",
  tags: ("implementation", "parsing", "stack", "string", ),
  difficulty: lv.hard,
  authors: (정영도, ),
  stat-open: (
    submit-count: 12,
    ac-count: 5,
    ac-ratio: 41.667,
    first-solver: `bnb2011`,
    first-solve-time: 66,
  ),
  pallete: (
    primary: primary-color,
    secondary: white,
  ),
  i18n: ucpc.i18n.ko-kr.problem,
  [
    도서 검색 프로그램은 주어진 지문의 이해가 어렵고 양이 많은 문제입니다.
    
    특히, 문제를 풀기 위해서는 지문에서 주어진 배커스-나우르 표기법에 대한 이해가 필요합니다. 배커스-나우르 표기법에 대해서는 #underline[#link("https://ko.wikipedia.org/wiki/%EB%B0%B0%EC%BB%A4%EC%8A%A4-%EB%82%98%EC%9A%B0%EB%A5%B4_%ED%91%9C%EA%B8%B0%EB%B2%95")[지문 및 연결된 위키백과 링크]]에서 충분히 설명하고 있으므로 이번 에디토리얼에서 따로 이에 대해 부연 설명을 하진 않습니다.
    
    #pagebreak()

    - 문제에서 주어지는 모든 `<book>`에 대해 `<search>`를 수행해야 하므로, 이에 대한 기본적인 시간복잡도는 $O(N * M * "len"($`<search>`$))$가 됩니다. \
      `<method>`에 등장하는 기호의 시간복잡도를 적용하는 것으로, 문제의 최대 시간복잡도를 확인할 수 있습니다.

    - `<AND>`, `<OR>`, `<NOT>`을 하나로 묶어 논리 메소드라 하겠습니다.\
      논리 메소드를 $O("len"($`<search>`$))$에 계산하는 알고리즘을 작성하게 되면 시간 초과가 발생합니다. 특히, 문제의 `<methods>`가 재귀적으로 등장할 수 있음을 고려하면 프로그램의 동작 시간이 지수 단위로 늘어날 수 있습니다.\
      그렇기 때문에 논리 메소드를 $O(1)$에 동작시키는 알고리즘을 작성하는 게 이 문제의 핵심이 되겠습니다.

    #pagebreak()

    - 논리 메소드를 연산자로 간주할 때, `<search>` 또한 연산자가 피연산자의 앞쪽에 나타나는 "전위 표기식"으로 간주할 수 있습니다.\
      전위 표기식을 빠르게 처리하기 위해서는 스택 자료구조를 사용해야 합니다. 문자열 `<search>` 자체를 처리하는 스택을 만드는 것으로 논리 메소드를 $O(1)$ 안에 처리할 수 있습니다.

    - `<nameCorrect>`와 `<authorCorrect>`는 $O(1)$ 안에 처리할 수 있습니다.\
      `<tagCorrect>`는 집합(set) 자료구조를 사용하는 것으로 $O(1)$ 안에 처리할 수 있어 집합 자료형을 사용하여 문제를 푸는 것이 권장됩니다. `<nameInclude>`는 $O("len"($`<str>`$))$ 안에 처리할 수 있습니다.\
      
      따라서, 문제의 최대 시간복잡도는 $O(N * M * "len"($`<search>`$) * "len"($`<str>`$))$로 나타나며, `<search>` 안에 들어가는 `<method>`의 개수는 `<search>`의 길이보다 작기에 실제 연산량은 시간복잡도 식에 최대 크기의 상수를 대입한 것보다 더 작습니다.
  ]
)

#ucpc.utils.problem(
  id: "F",
  title: "훈련병의 편지",
  tags: ("bitset", "dp", "string", "z", ),
  difficulty: challenging,
  authors: (김근성, ),
  stat-open: (
    submit-count: 27,
    ac-count: 0,
    ac-ratio: "0.000",
    first-solver: "-",
  ),
  pallete: (
    primary: primary-color,
    secondary: white,
  ),
  i18n: ucpc.i18n.ko-kr.problem,
  [
    - 본 문제의 내용을 요약하면 "$N$개의 편지지에서 정해지지 않은 $M$개의 편지지를 제거한 후 내용을 모두 합쳤을 때 항상 특정한 이름이 등장하는지 판단해라"입니다.

    - 만약 $N$과 $M$이 작다면 조합을 사용해서 실제로 $M$개의 편지지를 제거한 후 편지의 내용을 합치고, 각 이름이 등장하는지 판단할 수 있습니다.
    - 하지만, 이 문제에서는 $N$, $M$ 는 $450$이기에 최대 $mat(450; 225)$ 가지 조합이 발생합니다. 따라서 실제로 제거한 후 합쳐보는 방법은 사용할 수 없습니다.

    #pagebreak()
    
    - 제한에 의해 이름의 최대 길이는 항상 편지지 중 가장 짧은 길이보다 짧습니다. 따라서 이름은 최대 두 개의 편지지에만 나눠 등장할 수 있습니다.
    
    - 그렇기에 이름 등장 여부를 확인하기 위해 모든 조합을 고려한 후 편지지를 합칠 필요가 없습니다.
    - 지금 보고 있는 편지지가 $i$번일 때 이 편지지로 인해 이름이 만들어지는지 확인하려면, \
      $1$ \~ $(i-1)$번 편지지를 $i$번 편지지와 합쳐보며 이름이 등장하는지 확인하면 됩니다. 
    - 쉽게 판단할 수 있어 보이지만 지금 조건에서는 $1$ \~ $(i-1)$번 사이에 어떤 편지지가 누락되었는지, 이미 이름이 만들어져 있는지 등의 상태를 모두 고려해야 합니다. 이는 역시나 매우 긴 시간, 큰 공간이 문제가 됩니다.
      
    #pagebreak()
    
    - 이를 해결하기 위해 문제를 좀 더 간단하게 표현하겠습니다.
    - "$N$개의 편지지 중 어떤 $M$개의 편지지를 제거해도 편지지의 내용을 합친 문자열에 이름이 들어간다."\
      
    - 이는 다음 문장과 동치입니다.\ "$N$개의 편지지 중 어떤 $N-M$개의 편지지를 골라도 편지지의 내용을 합친 문자열에 이름이 들어간다."
    - 또, $N-M$개의 편지지를 골랐을 때 이름이 들어가므로 자연스럽게 $N – M$개 이상의 편지를 골랐을 때도 이름이 들어갑니다.


    #pagebreak()
      - 그렇기에 최종적으로 다음 문장과 같이 변형할 수 있습니다.\ "편지지의 내용을 합친 문자열에 이름이 들어가지 않도록 편지지를 고르면 $N - M$개 이상을 고를 수 없다" 
    \
    이렇게 되면 이제 편지지에 이름이 들어가지 않으면서 고를 수 있는 최대 편지지 개수를 구하는 문제로 바뀌게 됩니다.
    - 이름이 생기는 경우는 지문에도 나와 있듯 두 가지입니다.
      1. 이름이 포함된다.
      2. 순서가 역전되지 않도록 두 편지지를 합쳤을 때 이름이 생긴다.
  
    - 그래서 이 경우에 맞게 두 가지를 고려하면 됩니다.
     
  
    #pagebreak()
    1. 1번 경우에 해당하는 편지지는 답에 포함될 수 없습니다. 그렇기에 계산하지 않습니다.
    2. 2번 경우는 $i < j$ 일때 $i$번째 편지지와 $j$번째 편지지를 합쳐서 이름이 생기지 않는다면, \
      $i$번째 편지지 다음에 $j$번째 편지지를 선택해 놓을 수 있습니다.
  
    - 따라서 $j$번째 편지지를 골랐을 때 편지지의 최대 개수는 $i$번째에서의 편지지 최대 개수$ + 1$입니다.
  
    이러한 계산은 DP를 활용해 처리할 수 있습니다.
    
    ```ruby
    for j in 1 until N:
        if j번째 편지지에 이름이 포함되지 않음 then
            dp[j] = 1
            for i in 1 until (j - 1):
              i번째 편지지와 j번째 편지지를 합쳤을 때 이름이 포함되지 않음 then
                  dp[j] = max(dp[i] + 1, dp[j])
    ```
    #pagebreak()
  
    - 이 과정에서 계산되는 `dp[1~n]` 중 최대 값이 $M - N$ 미만이라면 답이 Yes, 아니라면 `No`입니다.

    - 이 과정을 모든 이름에 대해 반복합니다.

    \
    이 과정까지의 시간복잡도입니다:
    
    - $O( N^2 * (max( |s_i| ) + max(|k_i|) ) * K ) \
    = O ("두 편지 고르기" * "이름 등장 판별" * "이름 개수")$
    
    - 주어진 제한에서 최대 820억이 발생할 수 있으므로, 더 최적화해야 합니다.
    
    #pagebreak()
  
    - 편지 2개를 고르고 두 편지를 합쳐 이름의 등장 여부를 판단하는 것이 너무 느립니다.
    
    - 따라서 각 편지에서 이름의 등장 가능성을 확인해야 합니다.
    - 또 그것을 구한 이후 두 편지를 합쳐서 이름이 등장하는지 빠르게 확인해야 합니다.
    
    $=>$ 이름이 두 편지에 나눠 등장하는 경우를 확인하겠습니다.
    
    #pagebreak()
    
    `geunseong` 기준
    - `[ geunseong/ ] [ geunseon/g ] [ geunseo/ng ] … [ g/eunsong ] [ /geunseong ]`
    
    - 예를 들어 앞쪽 편지지에 `geunseo`, 뒤쪽 편지지에 `ng` 가 등장하면, 두 편지지가 합쳐질 때 `geunseong`이 나타납니다.
    \
    - 앞쪽 편지지에서 `geunseong`, `geunseon`, ..., `ge`, `g`, ` `#super[공백], 즉 이름의 접두사들이 등장하는지 구해두고,\
      뒤쪽 편지지에서 ` `#super[공백], `g`, `ng`, ..., `eunseong`, `geunseong`, 즉 이름의 접미사들이 등장하는지 구해두면 이를 합쳐 이름의 등장 여부를 빠르게 구할 수 있습니다.
  
    #pagebreak()
    
    - 이렇게 각 길이에 해당하는 접두사, 접미사를 구하는 데에는 Z 알고리즘을 사용할 수 있습니다.
    \
    - 임의의 이름 `name`과 편지지 `letter`가 있을 때\
      `target` $=$ `name` $+$ `$` $+$ `letter`로 두고, 이 `target`으로 Z를 돌리면 Z에 `name`과 일치하는 접두사의 최대 길이가 저장됩니다.
    - $1 <= i <= | $`name`$ |$ 일 때, $z[ | $`target`$ | – i ]$ 에 $i$가 저장되어 있다면\
     `name`의 앞에서부터 $i$ 글자가 `letter`의 끝에 등장한다는 뜻이 됩니다.
     
    #pagebreak()
    
    - 마찬가지로 접미사 또한 구할 수 있습니다.
    - `target` $=$ `letter` $+$ `$` $+$ `name` 로 두었을 때, 이 `target`으로 Z를 돌리면 Z에 `letter`와 일치하는 접두사의 최대 길이가 저장됩니다.
    - $1<= i <= | $`name`$ |$ 일 때, $z[ | $`target`$ | - i ]$ 에 $i$가 저장되어 있다면\
      `name`의 뒤에서부터 $i$ 글자가 `letter`의 시작에 등장한다는 뜻이 됩니다.
    \
    - `prefix[i]`에 $i$길이의 접두사가 있는지, `suffix[i]`에 $i$길이의 접미사가 있는지 저장합니다. 
  
    - 이렇게 접두사, 접미사를 구하더라도 조합을 확인하는데 `| name |` 만큼 확인해야 합니다. 좀 더 빠른 처리가 필요합니다.
  
    #pagebreak()
    
    접두사와 접미사를 비트셋에 저장하면 비트셋끼리 AND 연산을 사용해 한 번에 비교할 수 있습니다.
    - 비트셋 AND를 위해 접미사가 저장되는 방식을 조금 변경합니다.
    - `prefix[i]`와 매칭되는 것은 `suffix[|name|-i]` 입니다.
      - 같은 자리의 비트끼리 연산 되는 비트 연산의 특성을 고려하여 접미사를 저장할 때부터 `suffix[i]`에 $| $`name`$ | - i$ 길이의 접미사가 있는지 저장한다면,\ `prefix[i]`와 `suffix[i]`의 매칭을 비교하면 되고, `!(suffix & prefix).any()` 와 같은 비트셋끼리의 연산 한 번으로 이름의 존재 여부를 알 수 있습니다.
  
    - 추가로 접두사를 구하는 과정에서 만약 $"max"($`z[i]`$)$가 $| $`name`$ |$ 라면, 해당 편지지에 이름이 온전하게 등장함을 의미합니다. 이 경우, 이후 DP에서 이름이 포함된 편지지를 빠르게 건너뛰기 위해서 `skip[i]` 등의 플래그로 표시합니다.
    
    #pagebreak()
    이제 더 빠르게 이름의 등장 여부를 확인할 수 있게 되었습니다.
    - 앞서 이야기한 DP를 비트셋과 `skip`을 이용하여 수행합니다.
    \
    - 이러한 과정이 이름마다 반복되므로, 시간복잡도는 \총 $O(K N^2max(s_i)\/64)$입니다.
  
    #pagebreak()
    

    - 정해는 Z이지만, 다양한 풀이가 존재할 수 있는 문제입니다.
    
    - 파이썬은 이 풀이로는 시간초과가 발생합니다.

  ]
)

#ucpc.utils.problem(
  id: "G",
  title: "피라미드 게임",
  tags: ("game_theory", "sprague_grundy", ),
  difficulty: challenging,
  authors: (최정환, ),
  stat-open: (
    submit-count: 18,
    ac-count: 3,
    ac-ratio: 16.667,
    first-solver: `fermion5`,
    first-solve-time: 81,
  ),
  pallete: (
    primary: primary-color,
    secondary: white,
  ),
  i18n: ucpc.i18n.ko-kr.problem,
  [
    == 게임의 단순화
    
    \
    - $1 ... K - 1(K != 1)$ 층은 답에 영향을 주지 않기 때문에 빈칸으로 생각하는 것이 편합니다.

    - 먼저 피라미드를 다루기 익숙한 그래프로 생각해 봅시다.\
    
      빈칸을 제외한 각 칸을 하나의 노드로 생각하고 고를 수 있는 부분피라미드의 꼭대기에서 부분피라미드의 빈칸을 제외한 나머지 칸에 간선을 그어줍니다.\

      해당 그래프는 특수한 형태의 DAG로, 어떤 노드 $X$를 하나 골라 $X$에 적힌 수 $x$를 $y$만큼 줄이고 $x xor (x-y)$만큼 자식노드에 XOR 해주는 게임으로 바꿀 수 있습니다.

    #pagebreak()

    == 풀이

    \
    - 각 노드에 아래의 규칙을 따라 $A B$인덱싱을 해줍니다.

      `index[`$X$`]` $=$ ${$노드 $X$의 자식노드 $Y_i$에 있는 `index[`$Y_i$`]` $= A$의 개수가 짝수면 $A$, 아니면 $B$$}$

    - 이렇게 하면 다음이 성립합니다.

      `index[`$X$`]` $=$ $A$인 노드에 적힌 수들을 모두 XOR한 값이 $0$이면 후공, 아니면 선공이 게임에서 필승법을 갖는다.

    #pagebreak()

    == 증명
    
    \
    - 먼저 $A$에 적힌 수들을 모두 XOR 한 값을 $g$라 하겠습니다.
      
      게임이 끝나는 시점의 $g = 0$입니다.

    === 1. 게임은 항상 끝난다.\
    
    - 그래프가 DAG로 항상 상위층이 줄어드는 행동을 하므로 게임은 항상 끝납니다.\
    
      피라미드를 아래에서부터 한 층씩 늘려가면서 보면 어렵지 않게 관찰할 수 있습니다.

    #pagebreak()
    === 2. 현재 턴에 $g = 0$이라면 어떠한 행동을 하든지 $g != 0$이 된다.\
        
    - `index[`$X$`]` $=$ ${$노드 $X$의 자식노드 $Y_i$에 있는 `ind[`$Y_i$`]`$ = A$의 개수가 짝수면 $A$, 아니면 $B$$}$ 라는 `index`의 정의에 따라 어떠한 부분피라미드를 골라도 해당 부분피라미드에 포함된 $A$의 개수는 항상 *홀수*입니다.\
        
      즉 어떤 수 $P$를 골라 행동한다고 했을 때 $g$ $->$ $g xor P$가 된다는 것을 알 수 있습니다.
  
      $P$는 $0$이 될 수 없으므로 항상 성립합니다.
      
    === 3. 현재 턴에 $g != 0$이라면 $g = 0$으로 만들 수 있는 행동이 반드시 하나 이상 존재한다.
    - $A$로 인덱싱된 노드에 적힌 수들만 따로 빼어서 봅시다.
      
      어떠한 행동을 했을 때 님버($g$)가 변하는 것이 일반적인 님 게임과 완전히 동일합니다.
    
      님 게임의 증명에 따라 $A$로 인덱싱된 노드 중에 $g$를 $0$으로 만들 수 있는 행동이 하나 이상 존재한다는 뜻이 되고 해당 명제도 성립합니다.

    #pagebreak()
    
    - 현재 상태가 $g != 0$이라면 항상 $g = 0$으로 만들 수 있고 $g = 0$이라면 어떠한 행동을 하든지 $g != 0$이 됩니다. 게임은 항상 끝나고 게임의 끝에서 $g = 0$이므로 $g = 0$으로 만들 수 있는 플레이어가 승리하게 됩니다.
    \
    == 구현

    \
    - 간선이 상당히 많기 때문에 일반적으로 그래프를 만드는 방법은 시간, 메모리 초과가 납니다.
    - 그래프가 특이하다는 점을 이용해서 누적합, DP 등을 이용하여 $A$의 개수만 세어주면 $O(N^2)$에 처리할 수 있습니다.
  ]
)
