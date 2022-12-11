# Day 4
Str_to_nat ← {+´ (⌽10⊸⋆¨↕≠𝕩) × (-⟜48 𝕩-@)}

Make_array ⇐ {
    start ← Str_to_nat∘(0⊸⊑)∘('-'⊸((⊢-˜+`×¬)∘=⊔⊢)) 𝕩
    end ← Str_to_nat∘(1⊸⊑)∘('-'⊸((⊢-˜+`×¬)∘=⊔⊢)) 𝕩
    (+⟜start)↕(+⟜1 end - start)
}

Is_contained ⇐ {
    Subset ← {
        set_A ← Make_array 𝕩
        set_B ← Make_array 𝕨
        ∧´ set_B ∊ set_A
    }
    ((0⊸⊑)(Subset∨Subset˜)(1⊸⊑))˜ 𝕩
}

Sol_4 ← {+´ (Is_contained∘(','⊸((⊢-˜+`×¬)∘=⊔⊢)))¨ 𝕩}
data_4 ← •FLines "day_4.txt"
•Out "Day 4: " ∾ •Fmt (Sol_4 data_4)