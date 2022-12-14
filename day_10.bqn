data_10←•Flines "day_10.txt"

parsed_data ← (⊢-˜+`×¬)∘(' '⊸≡¨)⊸⊔¨data_10
Str_to_int ← {
    Str_to_nat ← {+´(⌽10⊸⋆¨↕≠𝕩)×(-⟜'0' 𝕩)}
    Str_to_neg ← {-+´(⌽10⊸⋆¨↕≠(1↓𝕩))×(-⟜'0' (1↓𝕩))}
    {≡⟜"-" 1↑𝕩 ? 
        Str_to_neg 𝕩;
        Str_to_nat 𝕩 
    } 𝕩
}
Cycles ← {𝕊"addx": 2; 𝕊"noop": 1}
numbers ← +`1∾(Str_to_int∘(1⊸⊑⎊"0"))¨ parsed_data
commands ← +`1∾(Cycles∘⊑)¨ parsed_data
Find_index ← {
    index←{⊑+˝𝕩×↕≠𝕩}0∾1↓∊𝕩⍷∧𝕩∾commands
    {⊑𝕩∊commands ? index; index-1}𝕩
}
sol_10←+´{𝕩×⊑⟜numbers∘Find_index𝕩}¨(↕∘⌈)⌾(÷⟜40-⟜20)⊑⌽commands
•Out "Day 10: " ∾ •Fmt (sol_10)