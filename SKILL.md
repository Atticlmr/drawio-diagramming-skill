---
name: drawio-diagramming
description: |
  Create professional diagrams using Draw.io (diagrams.net) native XML format. Supports flowcharts, system architectures, neural network visualizations, and mathematical formulas with Greek symbols.
  
  Use when: creating technical diagrams, flowcharts, network architectures, ML model diagrams, or any visualization requiring precise control over layout and styling.
  
  Covers: XML format, Mermaid syntax, mathematical formulas (π, μ, σ), styling best practices, color standards, and export formats.
license: MIT
version: 1.0.0
---

# Draw.io Diagram Skill

## Quick Start

### 1. Basic Flowchart (XML)

```xml
<mxGraphModel>
  <root>
    <mxCell id="0"/>
    <mxCell id="1" parent="0"/>
    <mxCell id="start" value="Start" style="rounded=1;fillColor=#82b366;" vertex="1" parent="1">
      <mxGeometry x="200" y="20" width="80" height="40" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>
```

### 2. URL Generation

**XML Format:**
```
https://app.diagrams.net/?grid=0&pv=0&border=10&edit=_blank#create={"type":"xml","compressed":true,"data":"<base64+gzip_encoded>"}
```

**Mermaid Format:**
```
https://app.diagrams.net/?grid=0&pv=0&border=10&edit=_blank#create={"type":"mermaid","compressed":true,"data":"<base64_encoded>"}
```

---

## Core Concepts

### XML Structure

```xml
<mxGraphModel>
  <root>
    <!-- Layer 0: Root -->
    <mxCell id="0"/>
    <!-- Layer 1: Default layer -->
    <mxCell id="1" parent="0"/>
    
    <!-- Node (Vertex) -->
    <mxCell id="node1" value="Label" style="rounded=1;fillColor=#dae8fc;" 
            vertex="1" parent="1">
      <mxGeometry x="100" y="100" width="120" height="60" as="geometry"/>
    </mxCell>
    
    <!-- Edge (Connector) -->
    <mxCell id="edge1" style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;" 
            edge="1" parent="1" source="node1" target="node2">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>
```

### Key Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | string | Unique identifier |
| `value` | string | Display text (supports Unicode) |
| `style` | string | CSS-like styling properties |
| `vertex` | 1 | Marks as node/shape |
| `edge` | 1 | Marks as connector |
| `parent` | string | Parent container ID |
| `source` | string | Edge start node |
| `target` | string | Edge end node |

---

## Shape Styles

### Common Shapes

| Shape | Style |
|-------|-------|
| Rounded Rectangle | `rounded=1;whiteSpace=wrap;` |
| Circle | `ellipse;whiteSpace=wrap;` |
| Diamond | `rhombus;whiteSpace=wrap;` |
| Database | `shape=cylinder;whiteSpace=wrap;` |
| Document | `shape=mxgraph.flowchart.document;` |
| Container | `swimlane;startSize=30;` |

### Styling Properties

```
fillColor=#dae8fc          Background color
strokeColor=#6c8ebf        Border color
fontColor=#333333          Text color
fontFamily=Arial           Font family
fontSize=14                Font size
fontStyle=1                Bold (1=bold, 2=italic, 4=underline)
whiteSpace=wrap            Text wrapping
rounded=1                  Rounded corners
html=1                     Enable HTML rendering
```

### Color Standards (ISO)

| Purpose | Light | Dark/Border |
|---------|-------|-------------|
| Information | #dae8fc | #6c8ebf |
| Success | #d5e8d4 | #82b366 |
| Warning | #fff2cc | #d6b656 |
| Error | #f8cecc | #b85450 |
| Process | #ffe6cc | #d79b00 |
| Data | #e1d5e7 | #9673a6 |
| Neutral | #f5f5f5 | #666666 |

---

## Mathematical Formulas

### Greek Letters (UTF-8)

Use direct Unicode characters in `value` attribute with `html=1`:

```xml
<mxCell value="π(a|s) = N(μ, σ²)" style="html=1;fontFamily=Courier New;" .../>
```

| Character | Unicode | HTML Entity |
|-----------|---------|-------------|
| π | U+03C0 | `&pi;` |
| μ | U+03BC | `&mu;` |
| σ | U+03C3 | `&sigma;` |
| θ | U+03B8 | `&theta;` |
| α | U+03B1 | `&alpha;` |
| β | U+03B2 | `&beta;` |
| Σ | U+03A3 | `&sum;` |
| ∞ | U+221E | `&infin;` |

**Important:** Always use UTF-8 Unicode directly, not HTML entities. Entities require DTD definitions not present in mxGraphModel.

### Formula Examples

**Neural Network:**
```xml
<mxCell value="h = ReLU(Wx + b)" style="html=1;fontFamily=Courier New;" .../>
```

**Probability:**
```xml
<mxCell value="P(y|x) = softmax(z)" style="html=1;fontFamily=Courier New;" .../>
```

**Policy Gradient:**
```xml
<mxCell value="∇J(θ) = E[∇log π(a|s) · Q(s,a)]" style="html=1;fontFamily=Courier New;" .../>
```

---

## Layout Best Practices

### Spacing

- Minimum 20px between elements
- Align to grid (multiples of 10)
- Use consistent margins (20px)

### Typography

- Titles: 16px, bold
- Labels: 14px, normal
- Formulas: 13-14px, Courier New
- Color contrast: WCAG 2.1 AA minimum

### Flow Direction

| Direction | Use Case |
|-----------|----------|
| Top-Down | Process flows, hierarchies |
| Left-Right | Data flows, pipelines |
| Bidirectional | State machines, interactions |

---

## Complete Examples

### Example 1: Gaussian Policy Network

```xml
<mxGraphModel>
  <root>
    <mxCell id="0"/>
    <mxCell id="1" parent="0"/>
    
    <!-- Input -->
    <mxCell id="state" value="State s" 
            style="rounded=1;fillColor=#e1f5fe;strokeColor=#01579b;fontColor=#01579b;fontFamily=Arial;fontSize=16;fontStyle=1" 
            vertex="1" parent="1">
      <mxGeometry x="400" y="20" width="120" height="50" as="geometry"/>
    </mxCell>
    
    <!-- Feature Extractor -->
    <mxCell id="sfe" value="Shared Feature Extractor" 
            style="swimlane;startSize=30;fillColor=#e3f2fd;strokeColor=#1976d2" 
            vertex="1" parent="1">
      <mxGeometry x="320" y="110" width="280" height="120" as="geometry"/>
    </mxCell>
    <mxCell id="h1" value="H1" style="rounded=1;fillColor=#f5f5f5;" vertex="1" parent="sfe">
      <mxGeometry x="20" y="50" width="70" height="40" as="geometry"/>
    </mxCell>
    <mxCell id="h2" value="H2" style="rounded=1;fillColor=#f5f5f5;" vertex="1" parent="sfe">
      <mxGeometry x="105" y="50" width="70" height="40" as="geometry"/>
    </mxCell>
    <mxCell id="h3" value="H3" style="rounded=1;fillColor=#f5f5f5;" vertex="1" parent="sfe">
      <mxGeometry x="190" y="50" width="70" height="40" as="geometry"/>
    </mxCell>
    
    <!-- Output Heads -->
    <mxCell id="oh" value="Output Heads" 
            style="swimlane;startSize=30;fillColor=#fff8e1;strokeColor=#f57c00" 
            vertex="1" parent="1">
      <mxGeometry x="120" y="280" width="160" height="100" as="geometry"/>
    </mxCell>
    <mxCell id="mu" value="μ(s)" style="rounded=1;fillColor=#fff3e0;html=1;fontFamily=Courier New;" vertex="1" parent="oh">
      <mxGeometry x="15" y="50" width="60" height="35" as="geometry"/>
    </mxCell>
    <mxCell id="sigma" value="log σ(s)" style="rounded=1;fillColor=#fff3e0;html=1;fontFamily=Courier New;" vertex="1" parent="oh">
      <mxGeometry x="85" y="50" width="60" height="35" as="geometry"/>
    </mxCell>
    
    <!-- Gaussian -->
    <mxCell id="gaussian" value="π(a|s) = N(μ, σ²)" 
            style="rounded=1;fillColor=#f3e5f5;strokeColor=#7b1fa2;fontColor=#7b1fa2;html=1;fontFamily=Courier New;" 
            vertex="1" parent="1">
      <mxGeometry x="340" y="290" width="220" height="50" as="geometry"/>
    </mxCell>
    
    <!-- Action -->
    <mxCell id="action" value="a ~ N(μ, σ)" 
            style="rounded=1;fillColor=#e8f5e9;strokeColor=#388e3c;fontColor=#388e3c;html=1;fontFamily=Courier New;" 
            vertex="1" parent="1">
      <mxGeometry x="360" y="380" width="180" height="45" as="geometry"/>
    </mxCell>
    
    <!-- Edges -->
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="state" target="h1"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="h1" target="h2"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="h2" target="h3"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="h3" target="mu"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="h3" target="sigma"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="mu" target="gaussian"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="sigma" target="gaussian"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2" edge="1" parent="1" source="gaussian" target="action"/>
  </root>
</mxGraphModel>
```

### Example 2: Simple Flowchart

```xml
<mxGraphModel>
  <root>
    <mxCell id="0"/>
    <mxCell id="1" parent="0"/>
    
    <mxCell id="start" value="Start" style="rounded=1;fillColor=#82b366;" vertex="1" parent="1">
      <mxGeometry x="200" y="20" width="80" height="40" as="geometry"/>
    </mxCell>
    
    <mxCell id="process" value="Process" style="rounded=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
      <mxGeometry x="200" y="100" width="80" height="40" as="geometry"/>
    </mxCell>
    
    <mxCell id="decision" value="Decision?" style="rhombus;fillColor=#fff2cc;strokeColor=#d6b656;" vertex="1" parent="1">
      <mxGeometry x="200" y="180" width="80" height="60" as="geometry"/>
    </mxCell>
    
    <mxCell id="end" value="End" style="rounded=1;fillColor=#f8cecc;strokeColor=#b85450;" vertex="1" parent="1">
      <mxGeometry x="200" y="300" width="80" height="40" as="geometry"/>
    </mxCell>
    
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;" edge="1" parent="1" source="start" target="process"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;" edge="1" parent="1" source="process" target="decision"/>
    <mxCell style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;" edge="1" parent="1" source="decision" target="end"/>
  </root>
</mxGraphModel>
```

---

## Export Formats

| Format | Use Case | Vector |
|--------|----------|--------|
| PNG | Screenshots, presentations | No |
| SVG | Web, scalable graphics | Yes |
| PDF | Print, documents | Yes |
| HTML | Interactive embedding | - |
| XML | Native format, editing | - |

---

## Troubleshooting

### Common Issues

1. **Unicode not displaying**
   - Ensure `html=1` in style
   - Use UTF-8 encoding directly, not HTML entities
   - Check font supports the characters

2. **Edges not connecting**
   - Verify `source` and `target` IDs exist
   - Ensure `edge="1"` attribute is present
   - Check `<mxGeometry relative="1"/>` exists

3. **Colors not rendering**
   - Use 6-digit hex codes (#RRGGBB)
   - Include both `fillColor` and `strokeColor`
   - Check contrast ratios

---

## References

- Draw.io Documentation: https://www.diagrams.net/doc/
- Mermaid Syntax: https://mermaid.js.org/syntax/
- GitHub: https://github.com/jgraph/drawio
- Unicode Greek Letters: https://unicode.org/charts/PDF/U0370.pdf
- HTML Named Characters: https://html.spec.whatwg.org/multipage/named-characters.html
- ISO 5807: Information Processing - Flowchart Symbols
- WCAG 2.1: https://www.w3.org/WAI/WCAG21/quickref/
