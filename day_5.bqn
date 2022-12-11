# Day 5
Parse_input ← {(⊢-˜+`×¬)∘(⟨⟩⊸≡¨)⊸⊔𝕩}

Parse_command ⇐ {
    Str_to_nat ← {+´ (⌽10⊸⋆¨↕≠𝕩) × (-⟜48 𝕩-@)}
    Parse_one_line ← {Str_to_nat¨⟨1,3,5⟩⊏' ' ((⊢-˜+`×¬)∘=⊔⊢)𝕩}
    Parse_one_line¨ 1⊑Parse_input 𝕩
}

Parse_data ⇐ {
    Remove_blanks ← {(' '≠𝕩)/𝕩}
    Parse_tables ← {<˘(+⟜1×⟜4↕÷⟜4+⟜1⊑≢⊑¯1↑𝕩)⊏⊏>⍉><˘¨ ∘‿1⥊¯1↓𝕩}
    Remove_blanks¨ Parse_tables∘⊑Parse_input 𝕩
}

Move ← {
    index ← 𝕨-1
    from ← ⊑(0⊑index)⌽𝕩
    to ← ⊑(1⊑index)⌽𝕩
    x ← ⊑from
    _change ← {(¯1⊸× 𝕗⊑index)⌽⌽(⌽1↓(𝕗⊑index)⌽𝕩)∾<𝕨}
    (1↓from) 0 _change ((x∾to) 1 _change 𝕩)
}

Move_rep ← {(⟨1⊑𝕨,2⊑𝕨⟩⊸Move)⍟(⊑𝕨) 𝕩}
Sol_5 ← {0⊸⊑¨Move_rep´(⌽ Parse_command 𝕩)∾<(Parse_data 𝕩)}

data_5 ← •Flines "day_5.txt"
•Out "Day 5: " ∾ (Sol_5 data_5)

# Day 5 part 2
Move_2 ⇐ {
    index ← 𝕨-1
    from ← ⊑(1⊑index)⌽𝕩
    to ← ⊑(2⊑index)⌽𝕩
    x ← (+⟜1 0⊑index)↑from
    _change ← {(¯1⊸× 𝕗⊑index)⌽⌽(⌽1↓(𝕗⊑index)⌽𝕩)∾<𝕨}
    ((+⟜1 0⊑index)↓from) 1 _change ((x∾to) 2 _change 𝕩)
}

Sol_5_2 ← {0⊸⊑¨Move_2´(⌽ Parse_command 𝕩)∾<(Parse_data 𝕩)}
•Out "Day 5 part 2: " ∾ (Sol_5_2 data_5)