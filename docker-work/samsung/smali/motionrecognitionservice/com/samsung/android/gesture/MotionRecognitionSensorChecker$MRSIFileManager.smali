.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MRSIFileManager"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 3629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3627
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    .line 3630
    const-string v0, "/data/log/mrsi_log.txt"

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    .line 3631
    const-string v0, "0000000000000000"

    .line 3632
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->createMRSIFile(Ljava/lang/String;)V

    .line 3633
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 3635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3627
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    .line 3636
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    .line 3637
    invoke-virtual {p0, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->createMRSIFile(Ljava/lang/String;)V

    .line 3638
    return-void
.end method


# virtual methods
.method createMRSIFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 3641
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3642
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 3644
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_40
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_3b

    .line 3646
    .local v1, "pf":Ljava/io/File;
    const-string v2, "MotionRecognitionSensorChecker"

    if-eqz v1, :cond_26

    .line 3647
    :try_start_15
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3648
    const-string v3, "mkdir true"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 3650
    :cond_21
    const-string v3, "mkdir false"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_26
    :goto_26
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 3654
    const-string v3, "CreateNewFile true"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 3656
    :cond_32
    const-string v3, "CreateNewFile false"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    :goto_37
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->writeData(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_3a} :catch_40
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3a} :catch_3b

    .end local v1    # "pf":Ljava/io/File;
    goto :goto_44

    .line 3662
    :catch_3b
    move-exception v1

    .line 3663
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_44

    .line 3660
    :catch_40
    move-exception v1

    .line 3661
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3664
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_44
    goto :goto_6e

    .line 3667
    :cond_45
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    const-string v2, "/data/log/mrsi_log.txt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    const-string v2, "/data/system/ff_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 3668
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->readData()Ljava/lang/String;

    move-result-object v1

    .line 3671
    .local v1, "efsFileData":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 3672
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->writeData(Ljava/lang/String;)V

    .line 3676
    .end local v1    # "efsFileData":Ljava/lang/String;
    :cond_6e
    :goto_6e
    return-void
.end method

.method isFileExists()Z
    .registers 3

    .line 3679
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3680
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method readData()Ljava/lang/String;
    .registers 8

    .line 3706
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3707
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3708
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 3710
    .local v2, "in":Ljava/io/InputStream;
    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 3711
    const/4 v3, 0x0

    .line 3712
    .local v3, "temp":I
    :goto_16
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    .line 3713
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 3715
    :cond_23
    const-string v4, "MotionRecognitionSensorChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File Data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3f} :catch_4b
    .catchall {:try_start_f .. :try_end_3f} :catchall_49

    .line 3720
    .end local v3    # "temp":I
    nop

    .line 3721
    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 3725
    :cond_43
    :goto_43
    goto :goto_55

    .line 3723
    :catch_44
    move-exception v3

    .line 3724
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 3726
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_55

    .line 3719
    :catchall_49
    move-exception v3

    goto :goto_5a

    .line 3716
    :catch_4b
    move-exception v3

    .line 3717
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    .line 3720
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_43

    .line 3721
    :try_start_51
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_44

    goto :goto_43

    .line 3727
    :goto_55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3720
    :goto_5a
    if-eqz v2, :cond_65

    .line 3721
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_65

    .line 3723
    :catch_60
    move-exception v4

    .line 3724
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 3725
    .end local v4    # "e":Ljava/io/IOException;
    :cond_65
    :goto_65
    nop

    .line 3726
    :goto_66
    throw v3
.end method

.method readFreeFallData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3761
    .local p1, "data":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;, "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3762
    .local v0, "size":I
    const/4 v1, 0x0

    .line 3764
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 3766
    :goto_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 3767
    add-int/lit8 v0, v0, 0x1

    .line 3768
    invoke-virtual {p1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_22} :catch_39
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_2f
    .catchall {:try_start_2 .. :try_end_22} :catchall_2d

    goto :goto_16

    .line 3777
    .end local v3    # "line":Ljava/lang/String;
    :cond_23
    nop

    .line 3779
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    .line 3783
    :goto_27
    goto :goto_43

    .line 3780
    :catch_28
    move-exception v2

    .line 3782
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 3777
    :catchall_2d
    move-exception v2

    goto :goto_44

    .line 3773
    :catch_2f
    move-exception v2

    .line 3775
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_30
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2d

    .line 3777
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_43

    .line 3779
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_28

    goto :goto_27

    .line 3770
    :catch_39
    move-exception v2

    .line 3772
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_2d

    .line 3777
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_43

    .line 3779
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_28

    goto :goto_27

    .line 3786
    :cond_43
    :goto_43
    return v0

    .line 3777
    :goto_44
    if-eqz v1, :cond_4e

    .line 3779
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 3783
    goto :goto_4e

    .line 3780
    :catch_4a
    move-exception v3

    .line 3782
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 3785
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4e
    :goto_4e
    throw v2
.end method

.method writeData(Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 3684
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3685
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .line 3687
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_8
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 3688
    const-string v2, "UTF_8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 3689
    .local v2, "byteArray":[B
    nop

    .line 3690
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_28
    .catchall {:try_start_8 .. :try_end_1c} :catchall_26

    .line 3696
    .end local v2    # "byteArray":[B
    nop

    .line 3697
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 3701
    :cond_20
    :goto_20
    goto :goto_32

    .line 3699
    :catch_21
    move-exception v2

    .line 3700
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3702
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_32

    .line 3695
    :catchall_26
    move-exception v2

    goto :goto_33

    .line 3692
    :catch_28
    move-exception v2

    .line 3693
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_29
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 3696
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_20

    .line 3697
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_21

    goto :goto_20

    .line 3703
    :goto_32
    return-void

    .line 3696
    :goto_33
    if-eqz v1, :cond_3e

    .line 3697
    :try_start_35
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3e

    .line 3699
    :catch_39
    move-exception v3

    .line 3700
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 3701
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3e
    :goto_3e
    nop

    .line 3702
    :goto_3f
    throw v2
.end method

.method writeFreeFallData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3731
    .local p1, "data":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;, "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3733
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 3734
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3735
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    invoke-virtual {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 3736
    invoke-virtual {p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3737
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3735
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 3739
    .end local v2    # "i":I
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3740
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3e} :catch_54
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_4a
    .catchall {:try_start_1 .. :try_end_3e} :catchall_48

    .line 3748
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    nop

    .line 3750
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 3754
    :goto_42
    goto :goto_5e

    .line 3751
    :catch_43
    move-exception v1

    .line 3753
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_42

    .line 3748
    :catchall_48
    move-exception v1

    goto :goto_5f

    .line 3744
    :catch_4a
    move-exception v1

    .line 3746
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_48

    .line 3748
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_5e

    .line 3750
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_43

    goto :goto_42

    .line 3741
    :catch_54
    move-exception v1

    .line 3743
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_48

    .line 3748
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_5e

    .line 3750
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_43

    goto :goto_42

    .line 3757
    :cond_5e
    :goto_5e
    return-void

    .line 3748
    :goto_5f
    if-eqz v0, :cond_69

    .line 3750
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 3754
    goto :goto_69

    .line 3751
    :catch_65
    move-exception v2

    .line 3753
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3756
    .end local v2    # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    throw v1
.end method
