.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngineListHandler"
.end annotation


# static fields
.field public static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field public static final ATTR_ALIAS_IDX:I = 0x0

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_ID_IDX:I = 0x1

.field public static final ENGINE_LIST_XML:Ljava/lang/String; = "sdp_engine_list.xml"

.field public static final TAG_ENGINE:Ljava/lang/String; = "engine"

.field public static final TAG_ENGINE_LIST:Ljava/lang/String; = "engine_list"


# instance fields
.field public final synthetic this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;


# direct methods
.method public static bridge synthetic -$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)V
    .registers 2

    .line 3752
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)V

    return-void
.end method


# virtual methods
.method public final getEngineListLocked()Landroid/util/SparseArray;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3852
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    move-object v3, v1

    :goto_8
    add-int/lit8 v4, v2, -0x1

    const-string v5, "SdpManagerImpl"

    if-lez v2, :cond_af

    .line 3858
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3862
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 3863
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 3865
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 3866
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v6, "UTF-8"

    .line 3867
    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3871
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2a} :catch_93
    .catchall {:try_start_11 .. :try_end_2a} :catchall_91

    const-string v7, ""

    const/4 v8, 0x1

    move-object v10, v7

    move v9, v8

    :goto_2f
    if-eq v6, v8, :cond_8b

    const/4 v11, 0x2

    if-eq v6, v11, :cond_35

    goto :goto_86

    .line 3878
    :cond_35
    :try_start_35
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "engine"

    .line 3879
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    const-string v6, "alias"

    const/4 v11, 0x0

    .line 3880
    invoke-interface {v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    const-string/jumbo v6, "id"

    .line 3881
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 3882
    invoke-interface {v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 3884
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 3883
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_74

    .line 3886
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_74

    move v11, v8

    :cond_74
    move v9, v11

    goto :goto_77

    :cond_76
    const/4 v6, -0x1

    :goto_77
    if-eqz v9, :cond_7e

    .line 3889
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object v10, v7

    goto :goto_86

    .line 3893
    :cond_7e
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "Suspicious of damaged file..."

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3902
    :cond_86
    :goto_86
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_8a} :catch_93
    .catchall {:try_start_35 .. :try_end_8a} :catchall_91

    goto :goto_2f

    :cond_8b
    if-eqz v3, :cond_90

    .line 3912
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_90

    :catch_90
    :cond_90
    return-object v0

    :catchall_91
    move-exception p0

    goto :goto_a9

    :catch_93
    move-exception v2

    .line 3906
    :try_start_94
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a1

    .line 3907
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_91

    :cond_a1
    if-eqz v3, :cond_a6

    .line 3912
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a6

    :catch_a6
    :cond_a6
    move v2, v4

    goto/16 :goto_8

    :goto_a9
    if-eqz v3, :cond_ae

    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_ae

    .line 3915
    :catch_ae
    :cond_ae
    throw p0

    :cond_af
    const-string p0, "getEngineList :: No engine found"

    .line 3917
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getEngineListXmlFile()Landroid/util/AtomicFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3764
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public final getEngineListXmlFile(I)Landroid/util/AtomicFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p1, 0x0

    .line 3772
    :cond_4
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz p1, :cond_14

    goto :goto_21

    :cond_14
    const-string p0, "SdpManagerImpl"

    const-string p1, "Failed to get engine list due to non-existence..."

    .line 3775
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 3778
    :cond_21
    :goto_21
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p1
.end method

.method public final updateEngineListLocked()I
    .registers 16

    const-string v0, "engine"

    const-string v1, "engine_list"

    const/16 v2, -0x63

    const/4 v3, 0x1

    .line 3788
    :try_start_7
    invoke-virtual {p0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c1

    .line 3794
    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v5, v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1e

    .line 3795
    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    return v6

    :cond_1e
    const/4 v5, 0x0

    .line 3801
    :try_start_1f
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_9a
    .catchall {:try_start_1f .. :try_end_23} :catchall_98

    .line 3802
    :try_start_23
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_94
    .catchall {:try_start_23 .. :try_end_28} :catchall_98

    .line 3804
    :try_start_28
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v10, "UTF-8"

    .line 3805
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3806
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 3807
    invoke-interface {v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3812
    invoke-interface {v9, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3813
    iget-object v10, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v10, v10, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v11, v6

    :goto_4d
    if-ge v11, v10, :cond_85

    .line 3814
    iget-object v12, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v12}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 3815
    iget-object v13, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v13, v13, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v13}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3818
    invoke-interface {v9, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "alias"

    .line 3820
    invoke-virtual {v13}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "id"

    .line 3821
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v5, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3823
    invoke-interface {v9, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4d

    .line 3828
    :cond_85
    invoke-interface {v9, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3829
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3830
    invoke-virtual {v4, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_8e} :catch_92
    .catchall {:try_start_28 .. :try_end_8e} :catchall_b9

    .line 3843
    :try_start_8e
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_b5

    goto :goto_b5

    :catch_92
    move-exception v0

    goto :goto_96

    :catch_94
    move-exception v0

    move-object v8, v5

    :goto_96
    move-object v5, v7

    goto :goto_9c

    :catchall_98
    move-exception p0

    goto :goto_bb

    :catch_9a
    move-exception v0

    move-object v8, v5

    .line 3832
    :goto_9c
    :try_start_9c
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string v1, "SdpManagerImpl"

    const-string v3, "Failed to update engine list..."

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mrecordException(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 3834
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_af

    .line 3837
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_b9

    :cond_af
    if-eqz v8, :cond_b4

    .line 3843
    :try_start_b1
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b4

    :catch_b4
    :cond_b4
    move v3, v6

    :catch_b5
    :goto_b5
    if-eqz v3, :cond_b8

    move v2, v6

    :cond_b8
    return v2

    :catchall_b9
    move-exception p0

    move-object v5, v8

    :goto_bb
    if-eqz v5, :cond_c0

    :try_start_bd
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    .line 3846
    :catch_c0
    :cond_c0
    throw p0

    :catch_c1
    move-exception p0

    .line 3790
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method
