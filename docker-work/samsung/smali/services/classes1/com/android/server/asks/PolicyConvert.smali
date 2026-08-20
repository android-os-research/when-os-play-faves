.class public Lcom/android/server/asks/PolicyConvert;
.super Ljava/lang/Object;
.source "PolicyConvert.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public pkgInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v0, "AASA_PolicyConvert "

    .line 20
    iput-object v0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AASA()V
    .registers 15

    const-string v0, "<PM>"

    const-string v1, "<PKG>"

    const-string v2, "<AASA VERSION=\""

    const-string v3, "0"

    .line 176
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 183
    :try_start_f
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/.aasa/AASApackages.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 186
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_de
    .catchall {:try_start_f .. :try_end_21} :catchall_db

    .line 187
    :try_start_21
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_c3
    .catchall {:try_start_21 .. :try_end_26} :catchall_117

    :try_start_26
    const-string v5, ""
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_28} :catch_c0
    .catchall {:try_start_26 .. :try_end_28} :catchall_bd

    move v9, v6

    .line 193
    :cond_29
    :goto_29
    :try_start_29
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b6

    .line 195
    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 196
    invoke-virtual {p0, v10, v2}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\""

    .line 198
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3f} :catch_b9
    .catchall {:try_start_29 .. :try_end_3f} :catchall_bd

    const/4 v13, -0x1

    if-ne v12, v13, :cond_53

    .line 248
    :try_start_42
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 256
    :goto_4a
    :try_start_4a
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_52
    return-void

    .line 202
    :cond_53
    :try_start_53
    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_57
    const-string v11, "<BlockBySPD>"

    .line 205
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_61

    const/4 v9, 0x1

    goto :goto_6a

    :cond_61
    const-string v11, "</BlockBySPD>"

    .line 207
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6a

    goto :goto_b6

    :cond_6a
    :goto_6a
    if-eqz v9, :cond_29

    .line 212
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_70} :catch_b9
    .catchall {:try_start_53 .. :try_end_70} :catchall_bd

    const-string v12, "<"

    if-eqz v11, :cond_80

    .line 214
    :try_start_74
    invoke-virtual {p0, v10, v1}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 216
    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 219
    :cond_80
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 221
    invoke-virtual {p0, v10, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 222
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 224
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a5

    .line 226
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v4, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 231
    :cond_a5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v4, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_b4} :catch_b9
    .catchall {:try_start_74 .. :try_end_b4} :catchall_bd

    goto/16 :goto_29

    :cond_b6
    :goto_b6
    move-object v5, v7

    move v6, v9

    goto :goto_c6

    :catch_b9
    move-exception v0

    move-object v5, v7

    move v6, v9

    goto :goto_e0

    :catchall_bd
    move-exception p0

    move-object v5, v7

    goto :goto_118

    :catch_c0
    move-exception v0

    move-object v5, v7

    goto :goto_e0

    :catch_c3
    move-exception v0

    goto :goto_e0

    :cond_c5
    move-object v8, v5

    :goto_c6
    if-eqz v5, :cond_d0

    .line 248
    :try_start_c8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d0
    :goto_d0
    if-eqz v8, :cond_f4

    .line 256
    :try_start_d2
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_f4

    :catch_d6
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    :catchall_db
    move-exception p0

    move-object v8, v5

    goto :goto_118

    :catch_de
    move-exception v0

    move-object v8, v5

    .line 242
    :goto_e0
    :try_start_e0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_117

    if-eqz v5, :cond_ef

    .line 248
    :try_start_e7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_ef

    :catch_eb
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_ef
    :goto_ef
    if-eqz v8, :cond_f4

    .line 256
    :try_start_f1
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_d6

    :cond_f4
    :goto_f4
    if-eqz v6, :cond_116

    .line 265
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    :goto_fe
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_116

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 270
    iget-object v5, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-virtual {p0, v2, v1, v3, v5}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_fe

    :cond_116
    return-void

    :catchall_117
    move-exception p0

    :goto_118
    if-eqz v5, :cond_122

    .line 248
    :try_start_11a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_122

    :catch_11e
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_122
    :goto_122
    if-eqz v8, :cond_12c

    .line 256
    :try_start_124
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_127} :catch_128

    goto :goto_12c

    :catch_128
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 262
    :cond_12c
    :goto_12c
    throw p0
.end method

.method public final EM()V
    .registers 12

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 400
    :try_start_7
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/.aasa/EMSupportPackages.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 404
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_98
    .catchall {:try_start_7 .. :try_end_19} :catchall_95

    .line 405
    :try_start_19
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_7a
    .catchall {:try_start_19 .. :try_end_1e} :catchall_77

    const-string v1, ""

    move-object v6, v1

    move-object v7, v6

    move v5, v2

    .line 411
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_71

    const-string v9, "<package value="

    .line 413
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_47

    const-string v6, "<package value=\""

    .line 415
    invoke-virtual {p0, v8, v6}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\""

    .line 416
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_45

    .line 419
    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_23

    :cond_45
    move-object v1, v3

    goto :goto_80

    :cond_47
    const-string v9, "<mode value"

    .line 426
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_56

    const-string v7, "<mode value=\""

    .line 428
    invoke-virtual {p0, v8, v7}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_23

    :cond_56
    const-string v9, "</package>"

    .line 431
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 433
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6e

    .line 434
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_6d} :catch_74
    .catchall {:try_start_23 .. :try_end_6d} :catchall_d3

    const/4 v5, 0x1

    :cond_6e
    move-object v6, v1

    move-object v7, v6

    goto :goto_23

    :cond_71
    move-object v1, v3

    move v2, v5

    goto :goto_80

    :catch_74
    move-exception v1

    move v2, v5

    goto :goto_9c

    :catchall_77
    move-exception p0

    goto/16 :goto_d5

    :catch_7a
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_9c

    :cond_7f
    move-object v4, v1

    :goto_80
    if-eqz v1, :cond_8a

    .line 449
    :try_start_82
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception v1

    .line 452
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8a
    :goto_8a
    if-eqz v4, :cond_b0

    .line 457
    :try_start_8c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_b0

    :catch_90
    move-exception v1

    .line 460
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    :catchall_95
    move-exception p0

    move-object v4, v1

    goto :goto_d5

    :catch_98
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v4

    .line 443
    :goto_9c
    :try_start_9c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_d3

    if-eqz v3, :cond_ab

    .line 449
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_ab

    :catch_a7
    move-exception v1

    .line 452
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_ab
    :goto_ab
    if-eqz v4, :cond_b0

    .line 457
    :try_start_ad
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_90

    :cond_b0
    :goto_b0
    if-eqz v2, :cond_d2

    .line 466
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 468
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 469
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 470
    iget-object v4, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_ba

    :cond_d2
    return-void

    :catchall_d3
    move-exception p0

    move-object v1, v3

    :goto_d5
    if-eqz v1, :cond_df

    .line 449
    :try_start_d7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_df

    :catch_db
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_df
    :goto_df
    if-eqz v4, :cond_e9

    .line 457
    :try_start_e1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    goto :goto_e9

    :catch_e5
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 463
    :cond_e9
    :goto_e9
    throw p0
.end method

.method public final MakeString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 150
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_12

    .line 151
    :cond_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        <emmode value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"/>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 158
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_7e

    .line 160
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_21

    .line 161
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_21
    const-string v1, "DELETE"

    .line 162
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\" datelimit=\""

    if-eqz v1, :cond_4b

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        <delete version=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 166
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        <restrict version=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" type=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" from=\"Token\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_72
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_7e
    return-void
.end method

.method public final MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 131
    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_12

    .line 132
    :cond_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        <restrict version=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" type=\"REVOKE\" datelimit=\"00000000\" from=\"Token\">"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    .line 138
    :goto_2c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_54

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            <permission value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_2c

    :cond_54
    const-string p1, "        </restrict>"

    .line 142
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final RestrictPackages()V
    .registers 15

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 287
    :try_start_c
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 291
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_f6
    .catchall {:try_start_c .. :try_end_1e} :catchall_f2

    .line 292
    :try_start_1e
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_d9
    .catchall {:try_start_1e .. :try_end_23} :catchall_171

    const-string v6, ""

    move v7, v2

    move-object v9, v3

    move-object v10, v9

    :goto_28
    move-object v8, v6

    .line 300
    :cond_29
    :goto_29
    :try_start_29
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_cf

    const-string v12, "<DATELIMIT value="

    .line 301
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_54

    const-string v12, "<DATELIMIT value=\""

    .line 302
    invoke-virtual {p0, v11, v12}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\""

    .line 303
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_51

    .line 305
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_51

    .line 306
    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_29

    :cond_51
    move-object v3, v4

    goto/16 :goto_dd

    :cond_54
    const-string v12, "<DELETE>"

    .line 314
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 315
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_29

    :cond_62
    const-string v12, "<DENY>"

    .line 316
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_70

    .line 317
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    goto :goto_29

    :cond_70
    const-string v12, "<PKG value="

    .line 319
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8d

    const-string v12, "<PKG value=\""

    .line 320
    invoke-virtual {p0, v11, v12}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v9, :cond_85

    if-nez v10, :cond_85

    .line 322
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    if-eqz v10, :cond_29

    if-nez v9, :cond_29

    .line 325
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_8d
    const-string v12, "</DELETE>"

    .line 328
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a8

    .line 330
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a6

    if-eqz v9, :cond_a6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a6

    .line 331
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6
    move-object v9, v3

    goto :goto_29

    :cond_a8
    const-string v12, "</DENY>"

    .line 336
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c4

    .line 338
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_c1

    if-eqz v10, :cond_c1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_c1

    .line 339
    invoke-interface {v1, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    move-object v10, v3

    goto/16 :goto_29

    :cond_c4
    const-string v12, "</DATELIMIT>"

    .line 342
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_ca} :catch_d6
    .catchall {:try_start_29 .. :try_end_ca} :catchall_d2

    if-eqz v11, :cond_29

    const/4 v7, 0x1

    goto/16 :goto_28

    :cond_cf
    move-object v3, v4

    move v2, v7

    goto :goto_dd

    :catchall_d2
    move-exception p0

    move-object v3, v4

    goto/16 :goto_172

    :catch_d6
    move-exception v2

    move-object v3, v4

    goto :goto_fa

    :catch_d9
    move-exception v4

    move v7, v2

    goto :goto_f9

    :cond_dc
    move-object v5, v3

    :goto_dd
    if-eqz v3, :cond_e7

    .line 354
    :try_start_df
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_e7

    :catch_e3
    move-exception v3

    .line 357
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_e7
    :goto_e7
    if-eqz v5, :cond_114

    .line 362
    :try_start_e9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_114

    :catch_ed
    move-exception v3

    .line 365
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_114

    :catchall_f2
    move-exception p0

    move-object v5, v3

    goto/16 :goto_172

    :catch_f6
    move-exception v4

    move v7, v2

    move-object v5, v3

    :goto_f9
    move-object v2, v4

    .line 349
    :goto_fa
    :try_start_fa
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_171

    if-eqz v3, :cond_109

    .line 354
    :try_start_101
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_109

    :catch_105
    move-exception v2

    .line 357
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_109
    :goto_109
    if-eqz v5, :cond_113

    .line 362
    :try_start_10b
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_113

    :catch_10f
    move-exception v2

    .line 365
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_113
    :goto_113
    move v2, v7

    :cond_114
    :goto_114
    if-eqz v2, :cond_170

    .line 371
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_143

    .line 372
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 373
    :goto_124
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_143

    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 375
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    .line 376
    iget-object v9, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v6, "DELETE"

    const-string v8, "00000000"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_124

    .line 379
    :cond_143
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_170

    .line 380
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 381
    :goto_151
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_170

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 383
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    .line 384
    iget-object v8, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v5, "DENY"

    const-string v7, "00000000"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_151

    :cond_170
    return-void

    :catchall_171
    move-exception p0

    :goto_172
    if-eqz v3, :cond_17c

    .line 354
    :try_start_174
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_178

    goto :goto_17c

    :catch_178
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_17c
    :goto_17c
    if-eqz v5, :cond_186

    .line 362
    :try_start_17e
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_182

    goto :goto_186

    :catch_182
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    :cond_186
    :goto_186
    throw p0
.end method

.method public convert(Ljava/lang/String;)Z
    .registers 4

    .line 27
    iget-object v0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "working.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/android/server/asks/PolicyConvert;->AASA()V

    .line 29
    invoke-virtual {p0}, Lcom/android/server/asks/PolicyConvert;->EM()V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/asks/PolicyConvert;->RestrictPackages()V

    .line 31
    iget-object v0, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/asks/PolicyConvert;->makeASKSxml(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 34
    invoke-virtual {p0}, Lcom/android/server/asks/PolicyConvert;->deleteFiles()V

    .line 39
    :cond_1c
    iget-object p0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const-string v0, "end"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final deleteFiles()V
    .registers 2

    .line 478
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/AASApolicy/AASA.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 481
    :cond_10
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/AASApolicy/AASA-TEMP.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 484
    :cond_20
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/EMSupportPackages.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 487
    :cond_30
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/RestrictPackages.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 490
    :cond_40
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/AASApackages.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_50
    return-void
.end method

.method public final isASKSxml()Z
    .registers 2

    .line 45
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/asks.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final makeASKSxml(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "\">\n"

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_56

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    iget-object v4, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 62
    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 64
    iget-object v4, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 67
    :cond_56
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/asks.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 72
    :try_start_5e
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_f0

    .line 73
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 74
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6e} :catch_f8
    .catchall {:try_start_5e .. :try_end_6e} :catchall_f6

    .line 75
    :try_start_6e
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<asks version=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 77
    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e2

    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    <package name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    move v2, v3

    .line 81
    :goto_b9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_dc

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    :cond_dc
    const-string p2, "    </package>\n"

    .line 84
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_8d

    :cond_e2
    const-string p1, "</asks>\n"

    .line 86
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_e7} :catch_ed
    .catchall {:try_start_6e .. :try_end_e7} :catchall_ea

    const/4 v3, 0x1

    move-object v2, v1

    goto :goto_f0

    :catchall_ea
    move-exception p0

    move-object v2, v1

    goto :goto_113

    :catch_ed
    move-exception p1

    move-object v2, v1

    goto :goto_f9

    :cond_f0
    :goto_f0
    if-eqz v2, :cond_112

    .line 102
    :goto_f2
    :try_start_f2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_112

    goto :goto_112

    :catchall_f6
    move-exception p0

    goto :goto_113

    :catch_f8
    move-exception p1

    .line 95
    :goto_f9
    :try_start_f9
    iget-object p0, p0, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_f9 .. :try_end_10f} :catchall_f6

    if-eqz v2, :cond_112

    goto :goto_f2

    :catch_112
    :cond_112
    :goto_112
    return v3

    :goto_113
    if-eqz v2, :cond_118

    .line 102
    :try_start_115
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_118

    .line 108
    :catch_118
    :cond_118
    throw p0
.end method

.method public final parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 118
    array-length p1, p0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_19

    const/4 p1, 0x1

    .line 119
    aget-object p0, p0, p1

    const-string p1, "\"/>"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    const/4 p1, 0x0

    .line 121
    aget-object p0, p0, p1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method
