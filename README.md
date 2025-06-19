# Shock Absorber Analysis for Suspension System

## Overview

This project analyzes three different shock absorber configurations for a suspension system using differential equations. The goal is to determine the optimal shock absorber that provides the best damping characteristics while being cost-effective for implementation in a Suspension Test Track (STT).

The analysis employs second-order ordinary differential equations to model the dynamic behavior of each shock absorber configuration and compares their responses to determine the most suitable option.

## Problem Statement

**Objective:** Select the best and most cost-effective shock absorber from three available options for a suspension system.

**Approach:** 
- Model each shock absorber using second-order ODEs
- Analyze damping characteristics
- Compare analytical and numerical solutions
- Provide recommendations based on performance metrics

## Mathematical Model

The suspension system is modeled using the standard mass-spring-damper equation:

```
m * d²x/dt² + c * dx/dt + k * x = 0
```

Where:
- `m` = mass (1800 kg for all configurations)
- `c` = damping coefficient (varies by shock)
- `k` = spring constant (varies by shock)
- `x(t)` = displacement as a function of time

### Shock Configurations

| Shock | Mass (m) | Damping (c) | Spring Constant (k) | ODE |
|-------|----------|-------------|---------------------|-----|
| 1     | 1800     | 100         | 220                 | `1800x'' + 100x' + 220x = 0` |
| 2     | 1800     | 1050        | 59                  | `1800x'' + 1050x' + 59x = 0` |
| 3     | 1800     | 1110        | 170                 | `1800x'' + 1110x' + 170x = 0` |

**Initial Conditions:**
- `x(0) = 0.030 m` (initial displacement)
- `x'(0) = 0 m/s` (initial velocity)

## Installation & Requirements

### Prerequisites
- MATLAB R2020a or later
- Symbolic Math Toolbox

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/shock-absorber-analysis-matlab.git
   cd shock-absorber-analysis-matlab
   ```

2. Open MATLAB and navigate to the project directory

3. Run the main script:
   ```matlab
   shock_absorber_analysis
   ```

## Usage

### Running the Analysis

1. **Start the Program:**
   ```matlab
   shock_absorber_analysis
   ```

2. **Interactive Features:**
   - Press any key to continue after the group information display
   - View analytical solutions for each shock absorber
   - Observe comparative graphs showing damping behavior
   - Choose to run the analysis multiple times

### Script Features

- **Symbolic Solutions:** Uses MATLAB's `dsolve` function for exact analytical solutions
- **Visualization:** Comparative plots of all three shock absorber responses
- **Interactive Interface:** User-friendly prompts and continuous operation option
- **Detailed Output:** Mathematical expressions and graphical analysis

### Example Output

```matlab
First Shock:    (3*exp(-t/36)*(787*cos((3935^(1/2)*t)/180)+3935^(1/2)*sin((3935^(1/2)*t)/180)))/78700

Second Shock:   (753^(1/2)*exp(t*(753^(1/2)/120 - 7/24))*(753^(1/2) + 35))/50200 - exp(-t*(753^(1/2)/120 + 7/24))*((7*753^(1/2))/10040 - 3/200)

Third Shock:    (exp(-t/3)*(20*exp(t/20) - 17))/100
```

## Results & Analysis

### Key Findings

1. **Shock 1 (Underdamped):**
   - Exhibits oscillatory behavior with gradual decay
   - Provides optimal balance between response time and stability
   - **Recommended choice** for suspension system

2. **Shock 2 (Overdamped):**
   - Slow return to equilibrium
   - No oscillations but longer settling time
   - Less suitable for dynamic applications

3. **Shock 3 (Critically/Near-Critically Damped):**
   - Fast return to equilibrium
   - Minimal oscillations
   - Good alternative but less optimal than Shock 1

### Performance Comparison

| Characteristic | Shock 1 | Shock 2 | Shock 3 |
|----------------|---------|---------|---------|
| Damping Type   | Under   | Over    | Critical|
| Oscillations   | Yes     | No      | Minimal |
| Settling Time  | Medium  | Long    | Short   |
| Stability      | Good    | Excellent| Good   |
| **Rating**     | **⭐⭐⭐⭐⭐** | ⭐⭐⭐ | ⭐⭐⭐⭐ |

## Technical Details

### Solution Methods
- **Analytical Approach:** Hand-calculated solutions using characteristic equation method
- **Numerical Approach:** MATLAB's symbolic solver (`dsolve`) for verification
- **Validation:** Comparison between analytical and MATLAB results shows excellent agreement

### Key MATLAB Functions Used
- `syms` - Symbolic variable declaration
- `diff` - Differentiation
- `dsolve` - ODE solver
- `fplot` - Function plotting
- `fprintf` - Formatted output

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Course Instructor for guidance on differential equations applications
- MATLAB Documentation and Community
- Academic resources on suspension system design
