# 8-bit Arithmetic Logic Unit (ALU)

本模組為 8 位元的算術邏輯單元 (ALU)，可根據 `opcode` 執行常見的運算與邏輯操作。

---

## 📌 支援的操作

| Opcode | 指令名稱 | 功能說明             |
|--------|-----------|----------------------|
| 3'd0   | `plus`    | `out = a + b`        |
| 3'd1   | `minus`   | `out = a - b`        |
| 3'd2   | `band`    | `out = a & b`        |
| 3'd3   | `bor`     | `out = a \| b`       |
| 3'd4   | `unegate` | `out = ~a`           |
| other  | `default` | `out = 8'hxx` (未知) |

---

## 📁 資料夾結構

```bash
alu/
├── README.md          # 本說明檔
├── src/
│   └── alu.v          # ALU 主模組程式
├── tb/
│   └── alu_tb.v       # 測試平台 (Testbench)
├── doc/
│   └── alu_waveform.jpg   # 測試波形圖（可選）
