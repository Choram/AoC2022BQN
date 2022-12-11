# Day 2
sel_data ← 3‿3⥊3/+⟜1↕3
out_data ← ⌽3‿3⥊(2⌽⁼⟨3,0,6⟩) ∾ (1⌽⁼⟨3,0,6⟩) ∾ (⟨3,0,6⟩)
score_mat ← ⍉(sel_data + out_data)
Parse_input_2 ← {{∾´('X'⊸≤)◶⟨-⟜'A', -⟜'X'⟩¨¨ ' '((⊢-˜+`×¬)∘=⊔⊢)𝕩}¨ 𝕩}
Sol_2 ← {+´(Parse_input_2 𝕩)⊑score_mat}

data_2 ← •FLines "day_2.txt"
•Out "Day 2: " ∾ •Fmt (Sol_2 data_2)