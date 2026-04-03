# Style Guide

## Color Standards

### Semantic Colors (ISO/WCAG Compliant)

| Semantic Meaning | Fill (Light) | Stroke (Dark) | Hex Codes |
|------------------|--------------|---------------|-----------|
| **Start/End** | #82b366 | #2d5a27 | Green |
| **Process** | #dae8fc | #6c8ebf | Blue |
| **Decision** | #fff2cc | #d6b656 | Yellow |
| **Input/Output** | #d5e8d4 | #82b366 | Light Green |
| **Error/Exception** | #f8cecc | #b85450 | Red |
| **Warning** | #ffe6cc | #d79b00 | Orange |
| **Data/Storage** | #e1d5e7 | #9673a6 | Purple |
| **External** | #f5f5f5 | #666666 | Gray |

### Usage Guidelines

**Start/End Nodes:**
- Use green (#82b366)
- White text for contrast
- Bold font weight

**Process Steps:**
- Use blue (#dae8fc)
- Dark blue border (#6c8ebf)
- Regular weight text

**Decision Points:**
- Use diamond shape
- Yellow fill (#fff2cc)
- Brown border (#d6b656)

## Typography

### Font Hierarchy

| Element | Font | Size | Weight |
|---------|------|------|--------|
| Main Title | Arial | 18-20px | Bold (700) |
| Section Headers | Arial | 16px | Bold (700) |
| Node Labels | Arial | 14px | Normal (400) |
| Formulas | Courier New | 13-14px | Normal (400) |
| Edge Labels | Arial | 12px | Normal (400) |

### Font Recommendations

**General Text:**
- Arial - Clean, professional
- Helvetica - Alternative sans-serif
- Calibri - Modern office style

**Code/Formulas:**
- Courier New - Monospace, consistent width
- Consolas - Modern monospace
- Fira Code - Programming font with ligatures

## Spacing

### Grid System
- Base unit: 10px
- All coordinates should be multiples of 10
- Consistent alignment improves readability

### Element Spacing

| Relationship | Minimum Gap |
|--------------|-------------|
| Node to Node | 20px |
| Node to Edge | 10px |
| Text to Border | 8px |
| Container Padding | 20px |
| Swimlane Header | 30px |

## Shape Standards

### Standard Shapes

```xml
<!-- Rounded Rectangle (Default) -->
style="rounded=1;whiteSpace=wrap;"

<!-- Circle -->
style="ellipse;whiteSpace=wrap;"

<!-- Diamond (Decision) -->
style="rhombus;whiteSpace=wrap;"

<!-- Cylinder (Database) -->
style="shape=cylinder;whiteSpace=wrap;"

<!-- Document -->
style="shape=mxgraph.flowchart.document;whiteSpace=wrap;"

<!-- Container with Header -->
style="swimlane;startSize=30;whiteSpace=wrap;"
```

### Shape Sizing

| Shape Type | Recommended Width | Recommended Height |
|------------|-------------------|-------------------|
| Standard Node | 100-120px | 40-60px |
| Diamond | 80-100px | 60-80px |
| Circle | 60-80px | 60-80px |
| Cylinder | 100-120px | 60px |
| Container | 200-400px | 120-200px |

## Edge Styling

### Standard Edges

```xml
<!-- Solid Line -->
style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=2;"

<!-- Dashed Line -->
style="edgeStyle=orthogonalEdgeStyle;endArrow=classic;strokeWidth=1;dashed=1;"

<!-- Bidirectional -->
style="edgeStyle=orthogonalEdgeStyle;startArrow=classic;endArrow=classic;strokeWidth=2;"
```

### Arrow Types

| Type | Style |
|------|-------|
| Classic | `endArrow=classic` |
| Open | `endArrow=open` |
| Block | `endArrow=block` |
| Diamond | `endArrow=diamond` |
| Oval | `endArrow=oval` |

### Edge Routing

**Orthogonal (Recommended):**
- Right-angle turns
- Clean, professional look
- `edgeStyle=orthogonalEdgeStyle`

**Direct:**
- Straight lines
- Use for simple connections
- `edgeStyle=none`

**Elbow:**
- Diagonal then straight
- `edgeStyle=elbowEdgeStyle`

## Common Style Patterns

### Standard Node
```xml
style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontFamily=Arial;fontSize=14;"
```

### Formula Node
```xml
style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f5f5f5;strokeColor=#666666;fontFamily=Courier New;fontSize=13;"
```

### Container
```xml
style="swimlane;startSize=30;fillColor=#e3f2fd;strokeColor=#1976d2;fontFamily=Arial;fontSize=14;fontStyle=1;"
```

### Start/End Node
```xml
style="rounded=1;whiteSpace=wrap;html=1;fillColor=#82b366;strokeColor=#2d5a27;fontColor=#ffffff;fontFamily=Arial;fontSize=14;fontStyle=1;"
```

## Accessibility Guidelines

### Color Contrast
- Minimum 4.5:1 for normal text
- Minimum 3:1 for large text (18px+)
- Use [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/)

### Visual Hierarchy
- Use size to indicate importance
- Use color consistently
- Don't rely solely on color to convey meaning

### Text Legibility
- Minimum 12px for labels
- High contrast text/background
- Clear, sans-serif fonts

## International Standards

### ISO 5807: Flowchart Symbols
- Process: Rectangle
- Decision: Diamond
- Start/End: Rounded rectangle
- Input/Output: Parallelogram
- Connector: Circle

### ISO 10646: Unicode
- Use UTF-8 encoding
- Support for international characters
- Greek letters for mathematics
