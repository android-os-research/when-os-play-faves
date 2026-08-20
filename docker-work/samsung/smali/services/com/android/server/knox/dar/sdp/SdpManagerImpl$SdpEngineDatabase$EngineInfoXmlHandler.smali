.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngineInfoXmlHandler"
.end annotation


# static fields
.field public static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field public static final ATTR_ALIAS_IDX:I = 0x0

.field public static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field public static final ATTR_FLAGS_IDX:I = 0x4

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_ID_IDX:I = 0x2

.field public static final ATTR_IS_MIGRATING:Ljava/lang/String; = "isMigrating"

.field public static final ATTR_IS_MIGRATING_IDX:I = 0x6

.field public static final ATTR_PKG_NAME:Ljava/lang/String; = "pkgName"

.field public static final ATTR_PKG_NAME_IDX:I = 0x1

.field public static final ATTR_USERID:Ljava/lang/String; = "userid"

.field public static final ATTR_USERID_IDX:I = 0x3

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final ATTR_VERSION_IDX:I = 0x5

.field public static final ENGINE_XML:Ljava/lang/String; = "SdpUser"

.field public static final TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field public final synthetic this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;


# direct methods
.method public static bridge synthetic -$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)V
    .registers 2

    .line 3923
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)V

    return-void
.end method


# virtual methods
.method public final getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 27

    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_169

    .line 4025
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v4

    .line 4026
    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 4028
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 4029
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v7, "UTF-8"

    .line 4030
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4040
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_13a
    .catchall {:try_start_8 .. :try_end_21} :catchall_138

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, -0x1

    move v15, v9

    move/from16 v16, v15

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move-object v10, v8

    :goto_2d
    const/4 v2, 0x1

    if-eq v7, v2, :cond_132

    const/4 v1, 0x2

    if-eq v7, v1, :cond_36

    :cond_33
    const/4 v7, 0x3

    goto/16 :goto_129

    .line 4046
    :cond_36
    :try_start_36
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "user"

    .line 4047
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "alias"

    .line 4048
    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    const-string/jumbo v1, "pkgName"

    .line 4049
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    const-string/jumbo v1, "id"

    const/4 v7, 0x2

    .line 4050
    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    const-string/jumbo v1, "userid"
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6d} :catch_13a
    .catchall {:try_start_36 .. :try_end_6d} :catchall_138

    const/4 v2, 0x3

    .line 4051
    :try_start_6e
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_fe
    .catchall {:try_start_6e .. :try_end_72} :catchall_138

    :try_start_72
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    const-string v1, "flags"

    const/4 v2, 0x4

    .line 4052
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    const-string/jumbo v1, "version"

    const/4 v7, 0x5

    .line 4053
    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    const-string/jumbo v1, "isMigrating"

    const/4 v2, 0x6

    .line 4054
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 4056
    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x1

    .line 4057
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x2

    .line 4059
    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 4058
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_b7} :catch_13a
    .catchall {:try_start_72 .. :try_end_b7} :catchall_138

    const/4 v7, 0x3

    .line 4061
    :try_start_b8
    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 4060
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x4

    .line 4063
    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    .line 4062
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x5

    .line 4065
    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 4064
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 4067
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 4066
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4068
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f9

    if-ltz v11, :cond_f9

    if-ltz v12, :cond_f9

    if-ltz v13, :cond_f9

    if-ltz v14, :cond_f9

    goto :goto_fa

    :cond_f9
    move v1, v9

    :goto_fa
    move v15, v1

    move/from16 v16, v2

    goto :goto_102

    :catch_fe
    move-exception v0

    move v7, v2

    goto :goto_13c

    :cond_101
    const/4 v7, 0x3

    :goto_102
    if-eqz v15, :cond_121

    .line 4073
    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/16 v21, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v8

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v16

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_119} :catch_130
    .catchall {:try_start_b8 .. :try_end_119} :catchall_138

    .line 4077
    :try_start_119
    invoke-virtual {v1, v10}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_11e
    .catchall {:try_start_119 .. :try_end_11c} :catchall_138

    move-object v3, v1

    goto :goto_129

    :catch_11e
    move-exception v0

    move-object v3, v1

    goto :goto_13c

    .line 4079
    :cond_121
    :try_start_121
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Suspicious of damaged file..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4088
    :goto_129
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_12d} :catch_130
    .catchall {:try_start_121 .. :try_end_12d} :catchall_138

    move v7, v1

    goto/16 :goto_2d

    :catch_130
    move-exception v0

    goto :goto_13c

    :cond_132
    if-eqz v5, :cond_137

    .line 4100
    :try_start_134
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_137

    :catch_137
    :cond_137
    return-object v3

    :catchall_138
    move-exception v0

    goto :goto_163

    :catch_13a
    move-exception v0

    const/4 v7, 0x3

    :goto_13c
    move-object/from16 v1, p0

    .line 4092
    :try_start_13e
    iget-object v2, v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v2, v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string v8, "SdpManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EngineInfoXmlHandler :: Failed to get engine info... "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v0, v9}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mrecordException(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_158
    .catchall {:try_start_13e .. :try_end_158} :catchall_138

    if-eqz v4, :cond_15b

    const/4 v4, 0x0

    :cond_15b
    if-eqz v5, :cond_160

    .line 4100
    :try_start_15d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_160

    :catch_160
    :cond_160
    move v0, v6

    goto/16 :goto_4

    :goto_163
    if-eqz v5, :cond_168

    :try_start_165
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_168

    .line 4103
    :catch_168
    :cond_168
    throw v0

    :cond_169
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getEngineInfoXmlFile(I)Landroid/util/AtomicFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3945
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SdpUser"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3946
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3947
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_5e

    .line 3948
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t make directory - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3949
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 3951
    :cond_5e
    :goto_5e
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3952
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public final removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 3

    .line 4110
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 4111
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_2a

    :catch_c
    move-exception p0

    .line 4113
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 4114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t remove engine info file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public final updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 13

    const-string/jumbo v0, "user"

    .line 3959
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    const/16 v2, -0x63

    .line 3962
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_c5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3970
    :try_start_10
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_9e
    .catchall {:try_start_10 .. :try_end_14} :catchall_9c

    .line 3971
    :try_start_14
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_98
    .catchall {:try_start_14 .. :try_end_19} :catchall_9c

    .line 3973
    :try_start_19
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v9, "UTF-8"

    .line 3974
    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3975
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 3976
    invoke-interface {v8, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3980
    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "alias"

    .line 3982
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "pkgName"

    .line 3983
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "id"

    .line 3984
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "userid"

    .line 3985
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "flags"

    .line 3986
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "version"

    .line 3987
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "isMigrating"

    .line 3988
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v8, v5, v9, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3992
    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3993
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3994
    invoke-virtual {v1, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_92} :catch_96
    .catchall {:try_start_19 .. :try_end_92} :catchall_bd

    .line 4007
    :try_start_92
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_b9

    goto :goto_b9

    :catch_96
    move-exception p1

    goto :goto_9a

    :catch_98
    move-exception p1

    move-object v7, v5

    :goto_9a
    move-object v5, v6

    goto :goto_a0

    :catchall_9c
    move-exception p0

    goto :goto_bf

    :catch_9e
    move-exception p1

    move-object v7, v5

    .line 3996
    :goto_a0
    :try_start_a0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string v0, "SdpManagerImpl"

    const-string v4, "Failed to update engine info..."

    invoke-static {p0, v0, p1, v4}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mrecordException(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 3998
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_b3

    .line 4001
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_b3
    .catchall {:try_start_a0 .. :try_end_b3} :catchall_bd

    :cond_b3
    if-eqz v7, :cond_b8

    .line 4007
    :try_start_b5
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b8

    :catch_b8
    :cond_b8
    move v4, v3

    :catch_b9
    :goto_b9
    if-eqz v4, :cond_bc

    move v2, v3

    :cond_bc
    return v2

    :catchall_bd
    move-exception p0

    move-object v5, v7

    :goto_bf
    if-eqz v5, :cond_c4

    :try_start_c1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c4

    .line 4010
    :catch_c4
    :cond_c4
    throw p0

    :catch_c5
    move-exception p0

    .line 3964
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method
