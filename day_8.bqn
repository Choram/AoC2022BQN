One_line ← {1<≠𝕩 ? {(0⊑𝕩)>(1⊑𝕩) ? (0⊑𝕩)∾One_line (0⊑𝕩)∾(2↓𝕩); (0⊑𝕩)∾One_line 1↓𝕩} 𝕩; 𝕩}
Parse_line ← {-⟜1 ×⟜(∊Oneline)+⟜1 𝕩}
Parse_data ← {(≠𝕩)‿∘⥊∾´⥊Str_to_nat¨¨(≠𝕩)‿∘⥊𝕩}

data_8 ← •Flines "day_8.txt"
Sol_8 ← {+´+˝((Parseline˘ ⌈ Parseline⌾⌽˘) ⌈ (Parseline˘ ⌈ Parseline⌾⌽˘)⌾⍉)⊸=(Parse_data 𝕩)}
•Out "Day 8: " ∾ •Fmt (Sol_8 data_8)