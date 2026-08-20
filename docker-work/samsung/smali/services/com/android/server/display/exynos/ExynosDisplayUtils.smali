.class public final Lcom/android/server/display/exynos/ExynosDisplayUtils;
.super Ljava/lang/Object;
.source "ExynosDisplayUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExynosDisplayUtils"

.field public static XML_SYSFS_PATH:Ljava/lang/String; = "/sys/class/dqe/dqe/xml"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static existFile(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 185
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "ExynosDisplayUtils"

    if-nez v2, :cond_26

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " File not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 192
    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_41

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not File"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_41
    const/4 p0, 0x1

    return p0
.end method

.method public static existPath(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 203
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 110
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayUtils;->XML_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_40

    if-eqz v0, :cond_40

    const/4 v1, 0x0

    const-string v2, ".xml"

    .line 113
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_40

    if-eqz v0, :cond_40

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    return-object v0

    .line 122
    :cond_40
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    return-object p0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ExynosDisplayUtils"

    if-nez v1, :cond_23

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " File not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 67
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not File"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3e
    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_44
    if-ge v5, v0, :cond_4b

    .line 79
    aput-byte v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_4b
    const-string v0, "File Close error"

    if-eqz p0, :cond_5f

    .line 84
    :try_start_4f
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_59} :catch_5c
    .catchall {:try_start_4f .. :try_end_59} :catchall_5a

    goto :goto_60

    :catchall_5a
    move-exception p0

    goto :goto_b9

    :catch_5c
    move-exception p0

    move-object v1, v2

    goto :goto_80

    :cond_5f
    move-object v5, v2

    :goto_60
    if-eqz v5, :cond_c3

    .line 87
    :try_start_62
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_7d
    .catchall {:try_start_62 .. :try_end_66} :catchall_7a

    if-lez p0, :cond_72

    .line 89
    :try_start_68
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, p0, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v4, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v2, v6

    .line 91
    :cond_72
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_75} :catch_76
    .catchall {:try_start_68 .. :try_end_75} :catchall_7a

    goto :goto_c3

    :catch_76
    move-exception v1

    move v4, p0

    move-object p0, v1

    goto :goto_7e

    :catchall_7a
    move-exception p0

    move-object v2, v5

    goto :goto_b9

    :catch_7d
    move-exception p0

    :goto_7e
    move-object v1, v2

    move-object v2, v5

    .line 94
    :goto_80
    :try_start_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , in : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_80 .. :try_end_af} :catchall_5a

    if-eqz v2, :cond_cd

    .line 99
    :try_start_b1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_cd

    .line 101
    :catch_b5
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    :goto_b9
    if-eqz v2, :cond_c2

    .line 99
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_c2

    .line 101
    :catch_bf
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_c2
    :goto_c2
    throw p0

    :cond_c3
    :goto_c3
    if-eqz v5, :cond_cc

    .line 99
    :try_start_c5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_cc

    .line 101
    :catch_c9
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    :goto_cc
    move-object v1, v2

    :cond_cd
    :goto_cd
    return-object v1
.end method

.method public static parserFactoryXMLALText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "File Close error"

    .line 761
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    const-string v5, "ExynosDisplayUtils"

    const/4 v6, 0x0

    if-nez v4, :cond_2b

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " File not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 777
    :cond_2b
    :try_start_2b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_30} :catch_12f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_127
    .catchall {:try_start_2b .. :try_end_30} :catchall_124

    .line 783
    :try_start_30
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 785
    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 786
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 788
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 789
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_49} :catch_122
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_49} :catch_120
    .catchall {:try_start_30 .. :try_end_49} :catchall_13f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4c
    const/4 v13, 0x1

    if-eq v7, v13, :cond_ea

    if-nez v7, :cond_55

    :goto_51
    move-object/from16 v15, p1

    goto/16 :goto_e3

    :cond_55
    if-ne v7, v13, :cond_58

    goto :goto_51

    :cond_58
    const-string/jumbo v14, "mode"

    const/4 v9, 0x2

    if-ne v7, v9, :cond_b2

    .line 798
    :try_start_5e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 800
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    const-string/jumbo v14, "name"

    .line 801
    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, p1

    .line 802
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7b

    move v10, v13

    goto :goto_7b

    :cond_79
    move-object/from16 v15, p1

    .line 806
    :cond_7b
    :goto_7b
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_91

    const-string v13, "al"

    .line 807
    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 809
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v14, p3

    if-ne v13, v14, :cond_93

    move v11, v9

    goto :goto_93

    :cond_91
    move/from16 v14, p3

    .line 813
    :cond_93
    :goto_93
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    const-string v7, "att0"

    .line 814
    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a6

    move/from16 v9, p5

    :goto_a3
    const/16 v12, 0xb

    goto :goto_e3

    .line 817
    :cond_a6
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move/from16 v9, p5

    if-ne v7, v9, :cond_e3

    goto :goto_a3

    :cond_af
    move/from16 v9, p5

    goto :goto_e3

    :cond_b2
    move-object/from16 v15, p1

    const/4 v6, 0x3

    if-ne v7, v6, :cond_d1

    .line 822
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 824
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c2

    const/4 v10, 0x0

    .line 827
    :cond_c2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c9

    const/4 v11, 0x0

    .line 830
    :cond_c9
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    const/4 v12, 0x0

    goto :goto_e3

    :cond_d1
    const/4 v6, 0x4

    if-ne v7, v6, :cond_e3

    if-ne v10, v13, :cond_e3

    if-ne v11, v9, :cond_e3

    const/16 v6, 0xb

    if-ne v12, v6, :cond_e3

    .line 835
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_e3
    :goto_e3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v6, 0x0

    goto/16 :goto_4c

    .line 840
    :cond_ea
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_ee} :catch_122
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_ee} :catch_120
    .catchall {:try_start_5e .. :try_end_ee} :catchall_13f

    if-nez v0, :cond_fa

    .line 861
    :try_start_f0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_f5

    :goto_f3
    const/4 v1, 0x0

    goto :goto_f9

    .line 863
    :catch_f5
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    :goto_f9
    return-object v1

    .line 843
    :cond_fa
    :try_start_fa
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 845
    :goto_101
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_118

    .line 846
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v9

    .line 847
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9
    :try_end_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fa .. :try_end_115} :catch_122
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_115} :catch_120
    .catchall {:try_start_fa .. :try_end_115} :catchall_13f

    add-int/lit8 v9, v9, 0x1

    goto :goto_101

    .line 861
    :cond_118
    :try_start_118
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_11f

    .line 863
    :catch_11c
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11f
    return-object v0

    :catch_120
    move-exception v0

    goto :goto_129

    :catch_122
    move-exception v0

    goto :goto_131

    :catchall_124
    move-exception v0

    const/4 v6, 0x0

    goto :goto_141

    :catch_127
    move-exception v0

    const/4 v4, 0x0

    .line 857
    :goto_129
    :try_start_129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v4, :cond_13d

    goto :goto_136

    :catch_12f
    move-exception v0

    const/4 v4, 0x0

    .line 854
    :goto_131
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_134
    .catchall {:try_start_129 .. :try_end_134} :catchall_13f

    if-eqz v4, :cond_13d

    .line 861
    :goto_136
    :try_start_136
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_13d

    .line 863
    :catch_13a
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13d
    :goto_13d
    const/4 v1, 0x0

    return-object v1

    :catchall_13f
    move-exception v0

    move-object v6, v4

    :goto_141
    if-eqz v6, :cond_14a

    .line 861
    :try_start_143
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_146} :catch_147

    goto :goto_14a

    .line 863
    :catch_147
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_14a
    :goto_14a
    throw v0
.end method

.method public static parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 15

    const-string v0, "File Close error"

    .line 876
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "ExynosDisplayUtils"

    const/4 v3, 0x0

    if-nez v1, :cond_25

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " File not found"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 891
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2a} :catch_d3
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_cb
    .catchall {:try_start_25 .. :try_end_2a} :catchall_c9

    .line 897
    :try_start_2a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 898
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 899
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 900
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 902
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_3e} :catch_c7
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3e} :catch_c5
    .catchall {:try_start_2a .. :try_end_3e} :catchall_e2

    const/4 v6, 0x0

    move v7, v6

    :goto_40
    const/4 v8, 0x1

    if-eq v4, v8, :cond_92

    if-nez v4, :cond_46

    goto :goto_8d

    :cond_46
    if-ne v4, v8, :cond_49

    goto :goto_8d

    :cond_49
    const/4 v9, 0x2

    const-string/jumbo v10, "mode"

    if-ne v4, v9, :cond_79

    .line 911
    :try_start_4f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 913
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    const-string/jumbo v9, "name"

    .line 914
    invoke-interface {p0, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 915
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    move v7, v8

    :cond_67
    if-ne v7, v8, :cond_8d

    if-eqz p2, :cond_71

    .line 920
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 921
    :cond_71
    invoke-interface {p0, v3, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 922
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_79
    const/4 v8, 0x3

    if-ne v4, v8, :cond_8d

    .line 928
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    move v7, v6

    :cond_87
    if-eqz p2, :cond_8d

    .line 933
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 939
    :cond_8d
    :goto_8d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_40

    .line 942
    :cond_92
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_96} :catch_c7
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_96} :catch_c5
    .catchall {:try_start_4f .. :try_end_96} :catchall_e2

    if-nez p0, :cond_a0

    .line 968
    :try_start_98
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_9f

    .line 970
    :catch_9c
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9f
    return-object v3

    .line 945
    :cond_a0
    :try_start_a0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 947
    :goto_a6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-ge v6, p1, :cond_bd

    .line 948
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, p0, v6

    .line 949
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v6
    :try_end_ba
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_ba} :catch_c7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ba} :catch_c5
    .catchall {:try_start_a0 .. :try_end_ba} :catchall_e2

    add-int/lit8 v6, v6, 0x1

    goto :goto_a6

    .line 968
    :cond_bd
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_c4

    .line 970
    :catch_c1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c4
    return-object p0

    :catch_c5
    move-exception p0

    goto :goto_cd

    :catch_c7
    move-exception p0

    goto :goto_d5

    :catchall_c9
    move-exception p0

    goto :goto_e4

    :catch_cb
    move-exception p0

    move-object v1, v3

    .line 964
    :goto_cd
    :try_start_cd
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_e1

    goto :goto_da

    :catch_d3
    move-exception p0

    move-object v1, v3

    .line 961
    :goto_d5
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_e2

    if-eqz v1, :cond_e1

    .line 968
    :goto_da
    :try_start_da
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_e1

    .line 970
    :catch_de
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    :goto_e1
    return-object v3

    :catchall_e2
    move-exception p0

    move-object v3, v1

    :goto_e4
    if-eqz v3, :cond_ed

    .line 968
    :try_start_e6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_ed

    .line 970
    :catch_ea
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_ed
    :goto_ed
    throw p0
.end method

.method public static parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "degamma"

    const-string v4, "gamma"

    const-string v5, "File Close error"

    .line 983
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    const-string v7, "ExynosDisplayUtils"

    const/4 v8, 0x0

    if-nez v6, :cond_2f

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " File not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 998
    :cond_2f
    :try_start_2f
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_34} :catch_194
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_18c
    .catchall {:try_start_2f .. :try_end_34} :catchall_189

    .line 1004
    :try_start_34
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1006
    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1007
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 1009
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_4d} :catch_187
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4d} :catch_185
    .catchall {:try_start_34 .. :try_end_4d} :catchall_1a4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4f
    const/4 v14, 0x1

    if-eq v9, v14, :cond_14f

    if-nez v9, :cond_56

    goto/16 :goto_148

    :cond_56
    if-ne v9, v14, :cond_5a

    goto/16 :goto_148

    :cond_5a
    const-string/jumbo v15, "mode"

    const-string/jumbo v11, "hsc48_lcg"

    const-string v14, "cgc17_enc"

    const/4 v8, 0x2

    if-ne v9, v8, :cond_108

    .line 1020
    :try_start_65
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1022
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_81

    const-string/jumbo v15, "name"

    const/4 v8, 0x0

    .line 1023
    invoke-interface {v0, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v8, p1

    .line 1024
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_83

    const/4 v12, 0x1

    goto :goto_83

    :cond_81
    move-object/from16 v8, p1

    .line 1028
    :cond_83
    :goto_83
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_87} :catch_187
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_87} :catch_185
    .catchall {:try_start_65 .. :try_end_87} :catchall_1a4

    const-string v8, "att0"

    if-eqz v15, :cond_af

    .line 1029
    :try_start_8b
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    const/4 v9, 0x0

    .line 1030
    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "att1"

    .line 1031
    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1032
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v2, :cond_ab

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v14, p4

    if-ne v8, v14, :cond_148

    goto :goto_107

    :cond_ab
    move/from16 v14, p4

    goto/16 :goto_148

    :cond_af
    move/from16 v14, p4

    .line 1037
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_cb

    .line 1038
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_148

    const/4 v9, 0x0

    .line 1039
    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1040
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v2, :cond_148

    :goto_c8
    const/4 v13, 0x2

    goto/16 :goto_148

    .line 1045
    :cond_cb
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e6

    .line 1046
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_148

    const/4 v9, 0x0

    .line 1047
    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_df

    goto :goto_c8

    .line 1052
    :cond_df
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v2, :cond_148

    goto :goto_107

    .line 1057
    :cond_e6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_101

    .line 1058
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_148

    const/4 v9, 0x0

    .line 1059
    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_fa

    goto :goto_c8

    .line 1064
    :cond_fa
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v2, :cond_148

    goto :goto_107

    .line 1070
    :cond_101
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_148

    :goto_107
    goto :goto_c8

    :cond_108
    const/4 v8, 0x3

    if-ne v9, v8, :cond_138

    .line 1075
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1077
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_116

    const/4 v12, 0x0

    .line 1080
    :cond_116
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_124

    .line 1081
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_148

    :goto_122
    const/4 v13, 0x0

    goto :goto_148

    .line 1083
    :cond_124
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_131

    .line 1084
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_148

    goto :goto_122

    .line 1087
    :cond_131
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_148

    goto :goto_122

    :cond_138
    const/4 v8, 0x4

    if-ne v9, v8, :cond_148

    const/4 v8, 0x1

    if-ne v12, v8, :cond_148

    const/4 v8, 0x2

    if-ne v13, v8, :cond_148

    .line 1094
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_148
    :goto_148
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v8, 0x0

    goto/16 :goto_4f

    .line 1100
    :cond_14f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_153} :catch_187
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_153} :catch_185
    .catchall {:try_start_8b .. :try_end_153} :catchall_1a4

    if-nez v0, :cond_15f

    .line 1121
    :try_start_155
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_15a

    :goto_158
    const/4 v1, 0x0

    goto :goto_15e

    .line 1123
    :catch_15a
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_158

    :goto_15e
    return-object v1

    .line 1103
    :cond_15f
    :try_start_15f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 1105
    :goto_166
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_17d

    .line 1106
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v11

    .line 1107
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11
    :try_end_17a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15f .. :try_end_17a} :catch_187
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_17a} :catch_185
    .catchall {:try_start_15f .. :try_end_17a} :catchall_1a4

    add-int/lit8 v11, v11, 0x1

    goto :goto_166

    .line 1121
    :cond_17d
    :try_start_17d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_180} :catch_181

    goto :goto_184

    .line 1123
    :catch_181
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_184
    return-object v0

    :catch_185
    move-exception v0

    goto :goto_18e

    :catch_187
    move-exception v0

    goto :goto_196

    :catchall_189
    move-exception v0

    const/4 v8, 0x0

    goto :goto_1a6

    :catch_18c
    move-exception v0

    const/4 v6, 0x0

    .line 1117
    :goto_18e
    :try_start_18e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v6, :cond_1a2

    goto :goto_19b

    :catch_194
    move-exception v0

    const/4 v6, 0x0

    .line 1114
    :goto_196
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_199
    .catchall {:try_start_18e .. :try_end_199} :catchall_1a4

    if-eqz v6, :cond_1a2

    .line 1121
    :goto_19b
    :try_start_19b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_19e} :catch_19f

    goto :goto_1a2

    .line 1123
    :catch_19f
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a2
    :goto_1a2
    const/4 v1, 0x0

    return-object v1

    :catchall_1a4
    move-exception v0

    move-object v8, v6

    :goto_1a6
    if-eqz v8, :cond_1af

    .line 1121
    :try_start_1a8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1ab} :catch_1ac

    goto :goto_1af

    .line 1123
    :catch_1ac
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_1af
    :goto_1af
    throw v0
.end method

.method public static parserTuneXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "File Close error"

    .line 343
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    const-string v3, "ExynosDisplayUtils"

    const/4 v4, 0x0

    if-nez v2, :cond_27

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " File not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 360
    :cond_27
    :try_start_27
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_2c} :catch_176
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_16e
    .catchall {:try_start_27 .. :try_end_2c} :catchall_16c

    .line 366
    :try_start_2c
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 368
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 369
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 371
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 372
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_45} :catch_16a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_45} :catch_168
    .catchall {:try_start_2c .. :try_end_45} :catchall_185

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_47
    const/4 v11, 0x1

    if-eq v5, v11, :cond_11a

    if-nez v5, :cond_4e

    goto/16 :goto_114

    :cond_4e
    if-ne v5, v11, :cond_52

    goto/16 :goto_114

    :cond_52
    const/4 v12, 0x2

    const-string/jumbo v13, "hsc"

    const-string v14, "gamma"

    const-string v8, "cgc"

    const-string/jumbo v15, "mode"

    if-ne v5, v12, :cond_c6

    .line 381
    :try_start_5f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7a

    const-string/jumbo v12, "name"

    .line 384
    invoke-interface {v0, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v15, p1

    .line 385
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    move v9, v11

    goto :goto_7c

    :cond_7a
    move-object/from16 v15, p1

    .line 389
    :cond_7c
    :goto_7c
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_80} :catch_16a
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_80} :catch_168
    .catchall {:try_start_5f .. :try_end_80} :catchall_185

    const-string v11, "1"

    const-string v12, "enable"

    if-eqz v8, :cond_95

    .line 391
    :try_start_86
    invoke-interface {v0, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_90

    .line 393
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 395
    :cond_90
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_93
    const/16 v10, 0xc

    .line 398
    :cond_95
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 400
    invoke-interface {v0, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a5

    .line 402
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 404
    :cond_a5
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    const/16 v16, 0xd

    goto :goto_ad

    :cond_ab
    move/from16 v16, v10

    .line 406
    :goto_ad
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 408
    invoke-interface {v0, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_bd

    .line 410
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 412
    :cond_bd
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c0
    const/16 v10, 0xe

    goto :goto_114

    :cond_c3
    move/from16 v10, v16

    goto :goto_114

    :cond_c6
    const/4 v12, 0x3

    if-ne v5, v12, :cond_ea

    .line 416
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d4

    const/4 v9, 0x0

    .line 421
    :cond_d4
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_db

    const/4 v10, 0x0

    .line 423
    :cond_db
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e2

    const/4 v10, 0x0

    .line 425
    :cond_e2
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_114

    const/4 v10, 0x0

    goto :goto_114

    :cond_ea
    const/4 v8, 0x4

    if-ne v5, v8, :cond_114

    if-ne v9, v11, :cond_fa

    const/16 v5, 0xc

    if-ne v10, v5, :cond_fa

    .line 430
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fa
    if-ne v9, v11, :cond_107

    const/16 v5, 0xd

    if-ne v10, v5, :cond_107

    .line 432
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_107
    if-ne v9, v11, :cond_114

    const/16 v5, 0xe

    if-ne v10, v5, :cond_114

    .line 434
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_114
    :goto_114
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_47

    .line 439
    :cond_11a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 441
    :goto_126
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_13d

    .line 442
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v0, v5

    .line 443
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_126

    .line 446
    :cond_13d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_142
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v5, v9, :cond_160

    .line 447
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v0, v5

    .line 448
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5
    :try_end_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_15b} :catch_16a
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_15b} :catch_168
    .catchall {:try_start_86 .. :try_end_15b} :catchall_185

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_142

    .line 462
    :cond_160
    :try_start_160
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_167

    .line 464
    :catch_164
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_167
    return-object v0

    :catch_168
    move-exception v0

    goto :goto_170

    :catch_16a
    move-exception v0

    goto :goto_178

    :catchall_16c
    move-exception v0

    goto :goto_187

    :catch_16e
    move-exception v0

    move-object v2, v4

    .line 458
    :goto_170
    :try_start_170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_184

    goto :goto_17d

    :catch_176
    move-exception v0

    move-object v2, v4

    .line 455
    :goto_178
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_17b
    .catchall {:try_start_170 .. :try_end_17b} :catchall_185

    if-eqz v2, :cond_184

    .line 462
    :goto_17d
    :try_start_17d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_180} :catch_181

    goto :goto_184

    .line 464
    :catch_181
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_184
    :goto_184
    return-object v4

    :catchall_185
    move-exception v0

    move-object v4, v2

    :goto_187
    if-eqz v4, :cond_190

    .line 462
    :try_start_189
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_18c} :catch_18d

    goto :goto_190

    .line 464
    :catch_18d
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_190
    :goto_190
    throw v0
.end method

.method public static parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "File Close error"

    .line 217
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v4, "ExynosDisplayUtils"

    const/4 v5, 0x0

    if-nez v3, :cond_29

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " File not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 234
    :cond_29
    :try_start_29
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_2e} :catch_159
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_151
    .catchall {:try_start_29 .. :try_end_2e} :catchall_14f

    .line 240
    :try_start_2e
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 242
    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 243
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 245
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_42} :catch_14d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_42} :catch_14b
    .catchall {:try_start_2e .. :try_end_42} :catchall_168

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_44
    const/4 v11, 0x1

    if-eq v6, v11, :cond_125

    if-nez v6, :cond_4b

    goto/16 :goto_11f

    :cond_4b
    if-ne v6, v11, :cond_4f

    goto/16 :goto_11f

    :cond_4f
    const/4 v12, 0x2

    const-string/jumbo v13, "hsc"

    const-string v14, "gamma"

    const-string v8, "cgc"

    const-string/jumbo v15, "mode"

    const-string v11, "dqe"

    if-ne v6, v12, :cond_ac

    .line 253
    :try_start_5e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_79

    const-string/jumbo v12, "name"

    .line 256
    invoke-interface {v0, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v15, p1

    .line 257
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v9, 0x1

    goto :goto_7b

    :cond_79
    move-object/from16 v15, p1

    .line 261
    :cond_7b
    :goto_7b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a2

    .line 262
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    const/16 v10, 0xc

    .line 264
    :cond_89
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    const/16 v16, 0xd

    goto :goto_94

    :cond_92
    move/from16 v16, v10

    .line 266
    :goto_94
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    const/16 v10, 0xe

    goto/16 :goto_11f

    :cond_9e
    move/from16 v10, v16

    goto/16 :goto_11f

    .line 269
    :cond_a2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    const/16 v10, 0xb

    goto/16 :goto_11f

    :cond_ac
    const/4 v12, 0x3

    if-ne v6, v12, :cond_dd

    .line 273
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ba

    const/4 v9, 0x0

    .line 278
    :cond_ba
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d5

    .line 279
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c7

    const/4 v10, 0x0

    .line 281
    :cond_c7
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    const/4 v10, 0x0

    .line 283
    :cond_ce
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    goto :goto_db

    .line 286
    :cond_d5
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    :goto_db
    const/4 v10, 0x0

    goto :goto_11f

    :cond_dd
    const/4 v8, 0x4

    if-ne v6, v8, :cond_11f

    .line 290
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_111

    const/4 v6, 0x1

    if-ne v9, v6, :cond_f5

    const/16 v6, 0xc

    if-ne v10, v6, :cond_f4

    .line 292
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f4
    const/4 v6, 0x1

    :cond_f5
    if-ne v9, v6, :cond_103

    const/16 v6, 0xd

    if-ne v10, v6, :cond_102

    .line 294
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_102
    const/4 v6, 0x1

    :cond_103
    if-ne v9, v6, :cond_11f

    const/16 v6, 0xe

    if-ne v10, v6, :cond_11f

    .line 296
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11f

    :cond_111
    const/4 v6, 0x1

    if-ne v9, v6, :cond_11f

    const/16 v6, 0xb

    if-ne v10, v6, :cond_11f

    .line 299
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_11f
    :goto_11f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto/16 :goto_44

    .line 305
    :cond_125
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 307
    :goto_12c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_143

    .line 308
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v8

    .line 309
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8
    :try_end_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_140} :catch_14d
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_140} :catch_14b
    .catchall {:try_start_5e .. :try_end_140} :catchall_168

    add-int/lit8 v8, v8, 0x1

    goto :goto_12c

    .line 328
    :cond_143
    :try_start_143
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_146} :catch_147

    goto :goto_14a

    .line 330
    :catch_147
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14a
    return-object v0

    :catch_14b
    move-exception v0

    goto :goto_153

    :catch_14d
    move-exception v0

    goto :goto_15b

    :catchall_14f
    move-exception v0

    goto :goto_16a

    :catch_151
    move-exception v0

    move-object v3, v5

    .line 324
    :goto_153
    :try_start_153
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_167

    goto :goto_160

    :catch_159
    move-exception v0

    move-object v3, v5

    .line 321
    :goto_15b
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_15e
    .catchall {:try_start_153 .. :try_end_15e} :catchall_168

    if-eqz v3, :cond_167

    .line 328
    :goto_160
    :try_start_160
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_167

    .line 330
    :catch_164
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_167
    :goto_167
    return-object v5

    :catchall_168
    move-exception v0

    move-object v5, v3

    :goto_16a
    if-eqz v5, :cond_173

    .line 328
    :try_start_16c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_16f} :catch_170

    goto :goto_173

    .line 330
    :catch_170
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_173
    :goto_173
    throw v0
.end method

.method public static parserXMLALText(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .registers 16

    const-string v0, "File Close error"

    .line 570
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "ExynosDisplayUtils"

    const/4 v3, 0x0

    if-nez v1, :cond_25

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " File not found"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 584
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2a} :catch_dd
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_d5
    .catchall {:try_start_25 .. :try_end_2a} :catchall_d3

    .line 590
    :try_start_2a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 591
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 592
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 593
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 595
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 596
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_46
    const/4 v9, 0x1

    if-eq v4, v9, :cond_9c

    if-nez v4, :cond_4c

    goto :goto_97

    :cond_4c
    if-ne v4, v9, :cond_4f

    goto :goto_97

    :cond_4f
    const/4 v10, 0x2

    const/16 v11, 0xb

    if-ne v4, v10, :cond_73

    .line 605
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 607
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b

    const-string v10, "al"

    .line 608
    invoke-interface {p0, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 610
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, p2, :cond_6b

    move v7, v9

    .line 614
    :cond_6b
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    move v8, v11

    goto :goto_97

    :cond_73
    const/4 v10, 0x3

    if-ne v4, v10, :cond_89

    .line 618
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    move v7, v6

    .line 623
    :cond_81
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    move v8, v6

    goto :goto_97

    :cond_89
    const/4 v10, 0x4

    if-ne v4, v10, :cond_97

    if-ne v7, v9, :cond_97

    if-ne v8, v11, :cond_97

    .line 628
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_97
    :goto_97
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_46

    .line 633
    :cond_9c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_a0} :catch_d1
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_a0} :catch_cf
    .catchall {:try_start_2a .. :try_end_a0} :catchall_ec

    if-nez p0, :cond_aa

    .line 654
    :try_start_a2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_a9

    .line 656
    :catch_a6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a9
    return-object v3

    .line 636
    :cond_aa
    :try_start_aa
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 638
    :goto_b0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-ge v6, p1, :cond_c7

    .line 639
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, p0, v6

    .line 640
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v6
    :try_end_c4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_c4} :catch_d1
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_c4} :catch_cf
    .catchall {:try_start_aa .. :try_end_c4} :catchall_ec

    add-int/lit8 v6, v6, 0x1

    goto :goto_b0

    .line 654
    :cond_c7
    :try_start_c7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_ce

    .line 656
    :catch_cb
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ce
    return-object p0

    :catch_cf
    move-exception p0

    goto :goto_d7

    :catch_d1
    move-exception p0

    goto :goto_df

    :catchall_d3
    move-exception p0

    goto :goto_ee

    :catch_d5
    move-exception p0

    move-object v1, v3

    .line 650
    :goto_d7
    :try_start_d7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_eb

    goto :goto_e4

    :catch_dd
    move-exception p0

    move-object v1, v3

    .line 647
    :goto_df
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_e2
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_ec

    if-eqz v1, :cond_eb

    .line 654
    :goto_e4
    :try_start_e4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_eb

    .line 656
    :catch_e8
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    :goto_eb
    return-object v3

    :catchall_ec
    move-exception p0

    move-object v3, v1

    :goto_ee
    if-eqz v3, :cond_f7

    .line 654
    :try_start_f0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_f4

    goto :goto_f7

    .line 656
    :catch_f4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_f7
    :goto_f7
    throw p0
.end method

.method public static parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const-string v0, "File Close error"

    .line 477
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "ExynosDisplayUtils"

    const/4 v3, 0x0

    if-nez v1, :cond_25

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " File not found"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 489
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2a} :catch_ad
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_a5
    .catchall {:try_start_25 .. :try_end_2a} :catchall_a3

    .line 495
    :try_start_2a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 496
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 497
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 498
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 500
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_3e
    const/4 v6, 0x1

    if-eq v4, v6, :cond_6b

    if-nez v4, :cond_44

    goto :goto_66

    :cond_44
    if-ne v4, v6, :cond_47

    goto :goto_66

    :cond_47
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5c

    .line 509
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 512
    invoke-interface {p0, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 513
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_5c
    const/4 v6, 0x3

    if-ne v4, v6, :cond_66

    .line 518
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    :cond_66
    :goto_66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_3e

    .line 529
    :cond_6b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_6f} :catch_a1
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_6f} :catch_9f
    .catchall {:try_start_2a .. :try_end_6f} :catchall_bc

    if-nez p0, :cond_79

    .line 555
    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_78

    .line 557
    :catch_75
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    return-object v3

    .line 532
    :cond_79
    :try_start_79
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 534
    :goto_80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_97

    .line 535
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    aput-object p2, p0, p1

    .line 536
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1
    :try_end_94
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_94} :catch_a1
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_94} :catch_9f
    .catchall {:try_start_79 .. :try_end_94} :catchall_bc

    add-int/lit8 p1, p1, 0x1

    goto :goto_80

    .line 555
    :cond_97
    :try_start_97
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_9e

    .line 557
    :catch_9b
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    return-object p0

    :catch_9f
    move-exception p0

    goto :goto_a7

    :catch_a1
    move-exception p0

    goto :goto_af

    :catchall_a3
    move-exception p0

    goto :goto_be

    :catch_a5
    move-exception p0

    move-object v1, v3

    .line 551
    :goto_a7
    :try_start_a7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_bb

    goto :goto_b4

    :catch_ad
    move-exception p0

    move-object v1, v3

    .line 548
    :goto_af
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_bc

    if-eqz v1, :cond_bb

    .line 555
    :goto_b4
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_bb

    .line 557
    :catch_b8
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    :goto_bb
    return-object v3

    :catchall_bc
    move-exception p0

    move-object v3, v1

    :goto_be
    if-eqz v3, :cond_c7

    .line 555
    :try_start_c0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_c7

    .line 557
    :catch_c4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_c7
    :goto_c7
    throw p0
.end method

.method public static parserXMLNodeText(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const-string v0, "File Close error"

    .line 669
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ExynosDisplayUtils"

    if-nez v1, :cond_25

    .line 671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " File not found"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 682
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2a} :catch_b9
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_b1
    .catchall {:try_start_25 .. :try_end_2a} :catchall_af

    .line 688
    :try_start_2a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 689
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 690
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 691
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 693
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_40
    const/4 v8, 0x1

    if-eq v4, v8, :cond_78

    if-nez v4, :cond_46

    goto :goto_73

    :cond_46
    if-ne v4, v8, :cond_49

    goto :goto_73

    :cond_49
    const/4 v9, 0x2

    if-ne v4, v9, :cond_58

    .line 701
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 703
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    move v7, v8

    goto :goto_73

    :cond_58
    const/4 v9, 0x3

    if-ne v4, v9, :cond_67

    .line 707
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 709
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    move v7, v6

    goto :goto_73

    :cond_67
    const/4 v9, 0x4

    if-ne v4, v9, :cond_73

    if-ne v7, v8, :cond_73

    .line 715
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_73
    :goto_73
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_40

    .line 720
    :cond_78
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0
    :try_end_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_7c} :catch_ad
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_7c} :catch_ab
    .catchall {:try_start_2a .. :try_end_7c} :catchall_c8

    if-nez p0, :cond_86

    .line 746
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_85

    .line 748
    :catch_82
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-object v2

    .line 723
    :cond_86
    :try_start_86
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 725
    :goto_8c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-ge v6, p1, :cond_a3

    .line 726
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, p0, v6

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v6
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_a0} :catch_ad
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a0} :catch_ab
    .catchall {:try_start_86 .. :try_end_a0} :catchall_c8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    .line 746
    :cond_a3
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_aa

    .line 748
    :catch_a7
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_aa
    return-object p0

    :catch_ab
    move-exception p0

    goto :goto_b3

    :catch_ad
    move-exception p0

    goto :goto_bb

    :catchall_af
    move-exception p0

    goto :goto_ca

    :catch_b1
    move-exception p0

    move-object v1, v2

    .line 742
    :goto_b3
    :try_start_b3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_c7

    goto :goto_c0

    :catch_b9
    move-exception p0

    move-object v1, v2

    .line 739
    :goto_bb
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_b3 .. :try_end_be} :catchall_c8

    if-eqz v1, :cond_c7

    .line 746
    :goto_c0
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_c7

    .line 748
    :catch_c4
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    :goto_c7
    return-object v2

    :catchall_c8
    move-exception p0

    move-object v2, v1

    :goto_ca
    if-eqz v2, :cond_d3

    .line 746
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d3

    .line 748
    :catch_d0
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_d3
    :goto_d3
    throw p0
.end method

.method public static sendEmptyUpdate()V
    .registers 5

    :try_start_0
    const-string v0, "SurfaceFlinger"

    .line 1133
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    .line 1136
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1137
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    .line 1138
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    const-string v0, "ExynosDisplayUtils"

    const-string v1, "failed to sendEmptyUpdate"

    .line 1142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .registers 5

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_38

    const/4 p0, 0x0

    .line 133
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_24

    .line 138
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_22

    const/4 p0, 0x1

    return p0

    :catch_22
    move-exception p0

    goto :goto_2d

    :catch_24
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_2d

    :catch_28
    move-exception p1

    .line 135
    :try_start_29
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_24

    return v1

    .line 141
    :goto_2d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return v1
.end method

.method public static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_34

    const/4 p0, 0x0

    .line 160
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_20

    .line 165
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 166
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_1e

    const/4 p0, 0x1

    return p0

    :catch_1e
    move-exception p0

    goto :goto_29

    :catch_20
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_29

    :catch_24
    move-exception p1

    .line 162
    :try_start_25
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_20

    return v1

    .line 168
    :goto_29
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_34
    return v1
.end method
