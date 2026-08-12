# 8086 Assembly Language Programs

This repository contains solutions to four fundamental 8086 Assembly Language problems. Due to browser-based emulator limitations, the original MASM/TASM source codes were adapted to run seamlessly on the https://vgath-8086.github.io/ide .

---

## 📌 Environment & Emulator Specifications
* **Target Emulator:** https://vgath-8086.github.io/ide 
* **Format:** `.COM` executable style starting at offset `100h` (`ORG 100h`).
* **Execution Termination:** Replaced DOS `INT 21H / AH=4CH` interrupts with the `HLT` instruction to prevent infinite execution loops in the web environment.

---

## 🛠️ Key Modifications & Differences

| Aspect | Standard MASM/TASM | Adapted for vgath-8086 Emulator |
| :--- | :--- | :--- |
| **Structure** | Uses full segment directives (`.MODEL`, `.DATA`, `.CODE`) | Flat structure using `ORG 100h` |
| **Data Memory** | Named variable access like `[A]` or `[B]` | Direct register assignment or immediate values |
| **String / Pointer Addressing** | Direct `LEA` or `OFFSET` directives | Immediate values / Direct string handling |
| **Program Exit** | `MOV AH, 4CH` followed by `INT 21H` | `HLT` instruction |

---

## 📜 Problem Overview & Logic

### 1. Largest of Three Numbers
* **Logic:** Loads three integer values directly into registers (`AL`, `BL`, `CL`), compares them sequentially using conditional jumps (`JGE`), and outputs the maximum single-digit value to the console via `INT 21H / AH=02H`.

### 2. Uppercase, Lowercase, or Neither
* **Logic:** Accepts character input using `INT 21H / AH=01H`. Checks ASCII boundaries (`65–90` for Uppercase, `97–122` for Lowercase) and prints `'U'`, `'L'`, or `'N'` accordingly.

### 3. The Alphabet Forwards and Backwards
* **Logic:** Utilizes `CX = 26` with `LOOP` instructions. First prints `'A'` to `'Z'`, issues carriage return/line feed (`0Dh`, `0Ah`), and then loops backwards from `'Z'` to `'A'`.

### 4. Sum of Odd Numbers Between Two Limits
* **Logic:** Iterates through numbers between limits ($N_1=50$, $N_2=100$) in register `BX`. Checks bitwise status using `TEST BL, 1` to identify odd numbers and accumulates the total in `AX`.
* **Output:** Since the resulting sum ($1875_{10} = 0753_{16}$) exceeds single-digit ASCII conversion bounds, the output is verified directly via the **`AX` Register (`AX = 0753`)**.

---

## 🚀 How to Run
1. Open the https://vgath-8086.github.io/ide .
2. Copy and paste the adapted `.asm` code into the editor.
3. Click **Compile**.
4. Click **Run** or use step-by-step execution to observe register state changes.