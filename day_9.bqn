data_9 ← •Flines "day_9.txt"
Check_dir ← {𝕊"U": 0‿1; 𝕊"D": 0‿¯1; 𝕊"R": 1‿0; 𝕊"L": ¯1‿0}
Str_to_nat ← {+´ (⌽10⊸⋆¨↕≠𝕩) × (-⟜48 𝕩-@)}
parsed ← (⊢-˜+`×¬)∘(' '⊸≡¨)⊸⊔¨data_9
move ← ((Str_to_nat (1⊸⊑))¨parsed)/((Check_dir (0⊸⊑))¨ parsed)
h_tra ← +`move
R ← {×𝕩⊸×≥⟜2|(√+´∘×˜)𝕩}

T_tra ← {
    head ← ⊑𝕩
    tail ← 0‿0
    {
        head ↩ 𝕩
        tail ↩ head {𝕩-R(𝕩-𝕨)} tail 
        tail
    }¨ 𝕩 
}

•Out "Day 9: " ∾ •Fmt (≠⍷T_tra h_tra)
•Out "Day 9 part 2: " ∾ •Fmt (≠⍷(T_tra⍟9 h_tra))