.class public Lcom/samsung/android/gamesdk/util/IO;
.super Ljava/lang/Object;
.source "IO.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSysFs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 16
    const-string v0, "readSysFs(): msg: "

    if-nez p1, :cond_6

    .line 17
    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_6
    const/4 v1, 0x0

    .line 21
    .local v1, "sysFs":Ljava/lang/String;
    const/4 v2, 0x0

    .line 22
    .local v2, "buf":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 23
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 25
    .local v4, "reader":Ljava/io/Reader;
    :try_start_a
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 26
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v4, v5

    .line 27
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 29
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSysFs(): path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_4c} :catch_79
    .catchall {:try_start_a .. :try_end_4c} :catchall_77

    .line 34
    nop

    .line 35
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 37
    nop

    .line 38
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 40
    nop

    .line 41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_58} :catch_59

    .line 45
    :cond_58
    :goto_58
    goto :goto_b3

    .line 43
    :catch_59
    move-exception v5

    .line 44
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_63
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_b3

    .line 33
    :catchall_77
    move-exception v5

    goto :goto_ba

    .line 30
    :catch_79
    move-exception v5

    .line 31
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_7a
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_7a .. :try_end_96} :catchall_77

    .line 34
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_9e

    .line 35
    :try_start_98
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_9e

    .line 43
    :catch_9c
    move-exception v5

    goto :goto_a9

    .line 37
    :cond_9e
    :goto_9e
    if-eqz v4, :cond_a3

    .line 38
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 40
    :cond_a3
    if-eqz v2, :cond_58

    .line 41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a8} :catch_9c

    goto :goto_58

    .line 44
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_a9
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_63

    .line 48
    .end local v5    # "e":Ljava/io/IOException;
    :goto_b3
    if-eqz v1, :cond_b9

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_b9
    return-object v1

    .line 34
    :goto_ba
    if-eqz v3, :cond_c2

    .line 35
    :try_start_bc
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_c2

    .line 43
    :catch_c0
    move-exception v6

    goto :goto_cd

    .line 37
    :cond_c2
    :goto_c2
    if-eqz v4, :cond_c7

    .line 38
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 40
    :cond_c7
    if-eqz v2, :cond_ea

    .line 41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_cc} :catch_c0

    goto :goto_ea

    .line 44
    .local v6, "e":Ljava/io/IOException;
    :goto_cd
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p0, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    .line 45
    .end local v6    # "e":Ljava/io/IOException;
    :cond_ea
    :goto_ea
    nop

    .line 46
    :goto_eb
    throw v5
.end method

.method public static readSysFsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 56
    const-string v0, "readSysFsMultipleLines(): msg: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 59
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 60
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 62
    .local v4, "reader":Ljava/io/Reader;
    :try_start_a
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 63
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v4, v5

    .line 64
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 66
    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "buf":Ljava/lang/String;
    if-eqz v5, :cond_33

    .line 67
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 70
    :cond_33
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readSysFsMultipleLines(): path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p0, v7}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_5b} :catch_89
    .catchall {:try_start_a .. :try_end_5b} :catchall_87

    .line 75
    nop

    .line 76
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 78
    nop

    .line 79
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 81
    nop

    .line 82
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_67} :catch_69

    .line 86
    goto/16 :goto_d7

    .line 84
    :catch_69
    move-exception v5

    .line 85
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p0, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_d7

    .line 74
    .end local v6    # "buf":Ljava/lang/String;
    :catchall_87
    move-exception v5

    goto :goto_dc

    .line 71
    :catch_89
    move-exception v5

    .line 72
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_8a
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_8a .. :try_end_a6} :catchall_87

    .line 75
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_ae

    .line 76
    :try_start_a8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_ae

    .line 84
    :catch_ac
    move-exception v5

    goto :goto_b9

    .line 78
    :cond_ae
    :goto_ae
    if-eqz v4, :cond_b3

    .line 79
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 81
    :cond_b3
    if-eqz v2, :cond_d6

    .line 82
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b8} :catch_ac

    goto :goto_d6

    .line 85
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_b9
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_d7

    .line 86
    :cond_d6
    :goto_d6
    nop

    .line 89
    :goto_d7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :goto_dc
    if-eqz v3, :cond_e4

    .line 76
    :try_start_de
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_e4

    .line 84
    :catch_e2
    move-exception v6

    goto :goto_ef

    .line 78
    :cond_e4
    :goto_e4
    if-eqz v4, :cond_e9

    .line 79
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 81
    :cond_e9
    if-eqz v2, :cond_10c

    .line 82
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_ee} :catch_e2

    goto :goto_10c

    .line 85
    .local v6, "e":Ljava/io/IOException;
    :goto_ef
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p0, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10d

    .line 86
    .end local v6    # "e":Ljava/io/IOException;
    :cond_10c
    :goto_10c
    nop

    .line 87
    :goto_10d
    throw v5
.end method
