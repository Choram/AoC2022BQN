# Day 1
Parse_input ← {(⊢-˜+`×¬)∘(⟨⟩⊸≡¨)⊸⊔𝕩}
Str_to_nat ← {+´ (⌽10⊸⋆¨↕≠𝕩) × (-⟜48 𝕩-@)}
Sol_1 ← {⌈´ +´¨ Str_to_nat¨¨ Parse_input 𝕩}

data_1 ← •FLines "day_1.txt"
•Out "Day 1: " ∾ •Fmt (Sol_1 data_1)