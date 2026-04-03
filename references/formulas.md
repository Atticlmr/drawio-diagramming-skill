# Mathematical Formulas Reference

## Using Unicode in Draw.io XML

Draw.io supports direct UTF-8 Unicode characters in XML values. **Use direct Unicode, NOT HTML entities** (like `&pi;`).

## Greek Letters

### Lowercase

| Letter | Unicode | Code Point | Usage |
|--------|---------|------------|-------|
| α | α | U+03B1 | Alpha (learning rate) |
| β | β | U+03B2 | Beta (momentum) |
| γ | γ | U+03B3 | Gamma (discount factor) |
| δ | δ | U+03B4 | Delta (change) |
| ε | ε | U+03B5 | Epsilon (exploration) |
| θ | θ | U+03B8 | Theta (parameters) |
| λ | λ | U+03BB | Lambda (regularization) |
| μ | μ | U+03BC | Mu (mean) |
| π | π | U+03C0 | Pi (policy) |
| ρ | ρ | U+03C1 | Rho (correlation) |
| σ | σ | U+03C3 | Sigma (std dev) |
| τ | τ | U+03C4 | Tau (temperature) |
| φ | φ | U+03C6 | Phi (feature) |
| χ | χ | U+03C7 | Chi (chi-square) |
| ψ | ψ | U+03C8 | Psi (wave function) |
| ω | ω | U+03C9 | Omega (frequency) |

### Uppercase

| Letter | Unicode | Code Point | Usage |
|--------|---------|------------|-------|
| Γ | Γ | U+0393 | Gamma function |
| Δ | Δ | U+0394 | Delta (Laplacian) |
| Θ | Θ | U+0398 | Theta (big-O) |
| Λ | Λ | U+039B | Lambda matrix |
| Π | Π | U+03A0 | Product |
| Σ | Σ | U+03A3 | Summation |
| Φ | Φ | U+03A6 | Phi (cumulative) |
| Ψ | Ψ | U+03A8 | Psi (bra-ket) |
| Ω | Ω | U+03A9 | Omega (ohm) |

## Mathematical Symbols

### Operators

| Symbol | Unicode | HTML Entity | Description |
|--------|---------|-------------|-------------|
| × | × | `&times;` | Multiplication |
| ÷ | ÷ | `&divide;` | Division |
| ± | ± | `&plusmn;` | Plus-minus |
| ∓ | ∓ | `&#8723;` | Minus-plus |
| √ | √ | `&radic;` | Square root |
| ∞ | ∞ | `&infin;` | Infinity |
| ∂ | ∂ | `&part;` | Partial derivative |
| ∫ | ∫ | `&int;` | Integral |
| ∮ | ∮ | `&#8750;` | Contour integral |
| ∇ | ∇ | `&nabla;` | Nabla/del |
| ∑ | ∑ | `&sum;` | Summation |
| ∏ | ∏ | `&prod;` | Product |
| ∀ | ∀ | `&forall;` | For all |
| ∃ | ∃ | `&exist;` | There exists |
| ∈ | ∈ | `&isin;` | Element of |
| ∉ | ∉ | `&notin;` | Not element |
| ⊂ | ⊂ | `&sub;` | Subset |
| ⊆ | ⊆ | `&sube;` | Subset or equal |
| ∪ | ∪ | `&cup;` | Union |
| ∩ | ∩ | `&cap;` | Intersection |
| ∅ | ∅ | `&empty;` | Empty set |
| ° | ° | `&deg;` | Degree |
| ′ | ′ | `&prime;` | Prime |
| ″ | ″ | `&Prime;` | Double prime |

### Comparison

| Symbol | Unicode | Description |
|--------|---------|-------------|
| ≤ | ≤ | Less than or equal |
| ≥ | ≥ | Greater than or equal |
| ≠ | ≠ | Not equal |
| ≈ | ≈ | Approximately |
| ≡ | ≡ | Identical to |
| ≪ | ≪ | Much less than |
| ≫ | ≫ | Much greater than |
| ∝ | ∝ | Proportional |
| ∼ | ∼ | Tilde/similar |
| ≅ | ≅ | Congruent |

### Arrows

| Symbol | Unicode | Description |
|--------|---------|-------------|
| ← | ← | Left arrow |
| → | → | Right arrow |
| ↑ | ↑ | Up arrow |
| ↓ | ↓ | Down arrow |
| ↔ | ↔ | Left-right |
| ↕ | ↕ | Up-down |
| ⇒ | ⇒ | Implies |
| ⇐ | ⇐ | If and only if |
| ⇔ | ⇔ | Equivalent |
| ↦ | ↦ | Maps to |
| ⟼ | ⟼ | Long maps to |

### Superscripts and Subscripts

Use `<sup>` and `<sub>` tags with `html=1`:

```xml
<mxCell value="x<sup>2</sup> + y<sub>i</sub>" 
        style="html=1;fontFamily=Courier New;" .../>
```

Common superscripts:
- x² (square)
- x³ (cube)
- xⁿ (nth power)
- x⁻¹ (inverse)

## Machine Learning Formulas

### Neural Networks

**Forward Pass:**
```xml
<mxCell value="z = Wx + b" .../>
<mxCell value="h = σ(z)" .../>
<mxCell value="ŷ = softmax(z)" .../>
```

**Activation Functions:**
```xml
<mxCell value="σ(x) = 1/(1+e<sup>-x</sup>)" .../>
<mxCell value="ReLU(x) = max(0,x)" .../>
<mxCell value="tanh(x)" .../>
```

**Loss Functions:**
```xml
<mxCell value="L = -Σ y log(ŷ)" .../>  <!-- Cross-entropy -->
<mxCell value="MSE = 1/n Σ(y-ŷ)²" .../>
<mxCell value="L = ||y - ŷ||²" .../>
```

### Reinforcement Learning

**Policy:**
```xml
<mxCell value="π(a|s)" .../>
<mxCell value="π(a|s) = N(μ(s), σ²(s))" .../>
```

**Value Functions:**
```xml
<mxCell value="V^π(s) = E[Σ γ^t r_t | s]" .../>
<mxCell value="Q^π(s,a) = E[Σ γ^t r_t | s,a]" .../>
```

**Bellman Equation:**
```xml
<mxCell value="Q(s,a) = r + γ max Q(s',a')" .../>
```

**Policy Gradient:**
```xml
<mxCell value="∇J(θ) = E[∇log π(a|s) · A(s,a)]" .../>
```

### Statistics

**Normal Distribution:**
```xml
<mxCell value="N(μ, σ²)" .../>
<mxCell value="f(x) = 1/(σ√2π) e^(-(x-μ)²/2σ²)" .../>
```

**Expectation:**
```xml
<mxCell value="E[X] = Σ x P(x)" .../>
<mxCell value="Var(X) = E[(X-μ)²]" .../>
```

**Bayes' Theorem:**
```xml
<mxCell value="P(A|B) = P(B|A)P(A)/P(B)" .../>
```

## Tips for Formulas

1. **Use html=1**: Required for superscripts/subscripts
2. **Courier New font**: Monospace ensures proper alignment
3. **Keep it simple**: Complex formulas may need multiple nodes
4. **Test rendering**: Verify symbols display correctly

## Example Usage

```xml
<mxGraphModel>
  <root>
    <mxCell id="0"/>
    <mxCell id="1" parent="0"/>
    
    <mxCell id="policy" value="π(a|s) = N(μ, σ²)" 
            style="rounded=1;html=1;fontFamily=Courier New;fontSize=14;fillColor=#f3e5f5;strokeColor=#7b1fa2;" 
            vertex="1" parent="1">
      <mxGeometry x="200" y="100" width="180" height="40" as="geometry"/>
    </mxCell>
    
    <mxCell id="bellman" value="Q(s,a) = r + γ max Q(s',a')" 
            style="rounded=1;html=1;fontFamily=Courier New;fontSize=13;fillColor=#e3f2fd;strokeColor=#1976d2;" 
            vertex="1" parent="1">
      <mxGeometry x="200" y="160" width="220" height="40" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>
```

## Unicode Resources

- [Unicode Greek Letters](https://unicode.org/charts/PDF/U0370.pdf)
- [Unicode Math Symbols](https://unicode.org/charts/PDF/U2200.pdf)
- [HTML Entities](https://html.spec.whatwg.org/multipage/named-characters.html)
- [CopyChar](https://copychar.cc/) - Easy character copying
