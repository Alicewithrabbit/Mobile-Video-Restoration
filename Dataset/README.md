# Dataset

## Usage

Folder `dev` contains 24 degraded videos. Their corresponding high-quality versions are in `dev/origin`.

Folder `eval` contains 12 degraded videos, which will be used to evaluate the performance of submissions.

## Note: The valid frame numbers may vary from original to degraded videos.

In order to simulate cutting/truncating operations during transferring file over different platforms, the valid frame number may be different from original/degraded videos.

During your training processing, please only follow valid frame numbers for each orig/dev pair.

| **Seq** | Orig frame count | Dev frame count  | Valid frames |
| :-----: | :--: | :--: | :--------------: |
|         |      |      |                  |
|  **0**  | 348  | 348  |       0~347        |
|  **1**  | 301  | 300  |       0~299        |
|  **2**  | 301  | 300  |       0~299        |
|  **3**  | 301  | 300  |       0~299        |
|  **4**  | 317  | 300  |       0~299        |
|  **5**  | 301  | 301  |       0~300        |
|  **6**  | 300  | 300  |       0~299        |
|  **7**  | 299  | 299  |       0~298        |
|  **8**  | 303  | 301  |       0~300        |
|  **9**  | 197  | 197  |       0~196        |
| **10**  | 299  | 299  |       0~298        |
| **11**  | 598  | 598  |       0~597        |
| **12**  | 300  | 300  |       0~299        |
| **13**  | 301  | 300  |       0~299        |
| **14**  | 219  | 219  |       0~218        |
| **15**  | 202  | 202  |       0~201        |
| **16**  | 300  | 300  |       0~299        |
| **17**  | 301  | 300  |       0~299        |
| **18**  | 289  | 289  |       0~288        |
| **19**  | 303  | 300  |       0~299        |
| **20**  | 296  | 297  |       0~296        |
| **21**  | 301  | 300  |       0~299        |
| **22**  | 301  | 300  |       0~299        |
| **23**  | 246  | 246  |       0~245        |
