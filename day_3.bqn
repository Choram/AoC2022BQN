# Day 3
Sol_3 ← {+´ 'a'⊸≤◶⟨-⟜'&', -⟜'`'⟩¨ ⊑∘((÷⟜2∘≠)⊸↓ (∊/⊣) (÷⟜2∘≠)⊸↑)¨ 𝕩}

data_3 ← •Flines "day_3.txt"
•Out "Day 3: " ∾ •Fmt (Sol_3 data_3)