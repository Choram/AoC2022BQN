data_7 ← •FLines "day_7.txt"

Parse_data ← {{((⊑((¬⟨"cd"⟩⊸∊)))¨𝕩)/𝕩}¨1↓(⊢-˜+`×¬)∘(⟨"$","ls"⟩⊸≡¨)⊸⊔(∨´(<"ls")⊸⍷)◶⟨⊢,¯1⊸↓⟩¨{0‿0⍉(𝕩∾⌜(⊒𝕩))}1↓' '((⊢-˜+`×¬)∘=⊔⊢)¨𝕩} 
parsed_data ← Parse_data data_7
Str_to_nat ← {+´ (⌽10⊸⋆¨↕≠𝕩) × (-⟜48 𝕩-@)}
dictionary ← {0‿0⍉(𝕩∾⌜(⊒𝕩))}{(2⊸⊑)¨¨¯1↓{((⊑((¬⟨".."⟩⊸∊)∧⟨"cd"⟩⊸∊))¨𝕩)/𝕩}¨1↓(⊢-˜+`×¬)∘(⟨"$","ls"⟩⊸≡¨)⊸⊔1↓' '((⊢-˜+`×¬)∘=⊔⊢)¨𝕩} data_7 
Find_ind ← {
    Index ← {+´(+⟜1 ↕≠𝕩)×𝕩}
    Index (≡⟜(1↓𝕨))¨ dictionary
}

Eval_size ← {
    arr ← 𝕩
    +´{≡⟜"dir"∘⊑𝕩 ? (Find_ind⟜arr 𝕩) Eval_size arr; Str_to_nat∘⊑ 𝕩}¨ 𝕨⊑parsed_data
}

Sol_7 ← {{+´(100000⊸≥𝕩)×𝕩}(Evalsize⟜𝕩)¨ ↕(+⟜1 ≠dictionary)}
•Out "Day 7: " ∾ •Fmt (Sol_7 data_7)

Sol_7_2 ← {{(⊑⍋|𝕩-(-⟜(4×10⋆7) ⌈´𝕩))⊑𝕩}(Evalsize⟜𝕩)¨ ↕(+⟜1 ≠dictionary)}
•Out "Day 7 part 2: " ∾ •Fmt (Sol_7_2 data_7)