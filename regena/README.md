---

### 🔹 regena.v

An 8-bit register with enable and **asynchronous active-low reset**.

#### Ports:

| Port     | Direction | Width | Description                   |
|----------|-----------|-------|-------------------------------|
| clock    | input     | 1     | Clock signal                  |
| ena      | input     | 1     | Enable signal                 |
| reset    | input     | 1     | **Active-low** asynchronous reset |
| R        | input     | 8     | Data input                    |
| Q        | output    | 8     | Data output                   |

