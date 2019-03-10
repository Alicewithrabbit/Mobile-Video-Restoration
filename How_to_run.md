
# Binary 

### How to run

**TODO**: Binary location example/dumpdecoderinfor

1. Put all mp4 file into “**seq**” folder

2. running following cmd

   ```
   sh getDecoderInfor.sh
   ```

3. Output file will be generated into “**results**” folder (temporal files are in “**streams**” and logs can be found in **run.log**)

4. Please contact  xxxx@kuaishou.com for bugs or further infomation

# Decoded information 

### Decoded information format 

1. All decoding infomation are raster-scaning CTU based.

2. Within each CTU, the infomation are organized into 4x4 raster-scanning sub-block. 

3. Level of infomation

   ```shell
   # symbol “+” shows info level
    +         sequence level, including width/heigh and other info for entire video
    ++        frame level, including frame num, frame type and other frame level infomation.
    +++       CTU level, including CTU cordinations
    ++++      PU level, including intra modes, MV and other PU level infomation
    +++++     TU level, including QP, cbf and other TU level infomation
   ```

4. The format of each output item is:

   1. First showing the level and description of current info (e.g. "++++     Inter 0   Intra 1")

   2. Then showing detailed info in following item in 4x4 unit (like prediction directions for this intra example)

      ```shell
      # Example of PU level infomation
      # This is showing current CTU inter/intra modes distribution and it is an all inter CTU
        ++++ 	   Inter 0   Intra 1
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
        ...
        ...
      # Since it is the all inter CTU, intra mode is 63 for all 4x4 sub-blocks
      # If and sub-blocks are intra coded, a number from 0-34 will illustrate intra prediction directions
        ++++       IntraMode  0~34, 63 not intra
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
        63 63 63 63 63 63 63 63 63 63 63 63 63 63 63 63
      
      ```

### A full examle of one frame

1. Sequance level information：
    ```
    TODO
    ```
   
2. Frame level information：
    ```
    TODO
    ```

3. CTU level information：
    ```
    TODO
    ```



### Noted

1. The QP info for skip mode and TU with cbf==0 are not accurate. The output value is only repeating the one of last non-skip TU. So the QP is only valid when cbr ==1.
2. Please ignore the MV info of the frame boundary which is expanding outside the frame size. The mode is showing -1 and MV value is uninitialized.
