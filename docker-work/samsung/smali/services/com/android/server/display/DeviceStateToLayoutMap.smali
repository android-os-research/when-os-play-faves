.class public Lcom/android/server/display/DeviceStateToLayoutMap;
.super Ljava/lang/Object;
.source "DeviceStateToLayoutMap.java"


# static fields
.field public static final CONFIG_FILE_PATH:Ljava/lang/String; = "etc/displayconfig/display_layout_configuration.xml"

.field public static final STATE_DEFAULT:I = -0x1

.field public static final TAG:Ljava/lang/String; = "DeviceStateToLayoutMap"


# instance fields
.field public final mLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/layout/Layout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/display/DeviceStateToLayoutMap;->loadLayoutsFromConfig()V

    const/4 v0, -0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    return-void
.end method


# virtual methods
.method public final createLayout(I)Lcom/android/server/display/layout/Layout;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to create a second layout for state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStateToLayoutMap"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_20
    new-instance v0, Lcom/android/server/display/layout/Layout;

    invoke-direct {v0}, Lcom/android/server/display/layout/Layout;-><init>()V

    .line 94
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "DeviceStateToLayoutMap:"

    .line 70
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Registered Layouts:"

    .line 73
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    :goto_e
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_42
    return-void
.end method

.method public get(I)Lcom/android/server/display/layout/Layout;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/layout/Layout;

    if-nez p1, :cond_14

    .line 82
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/server/display/layout/Layout;

    :cond_14
    return-object p1
.end method

.method public final loadLayoutsFromConfig()V
    .registers 11

    .line 103
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    .line 109
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading display layouts from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateToLayoutMap"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_2b
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_ae
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2b .. :try_end_35} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_35} :catch_ae

    .line 111
    :try_start_35
    invoke-static {v1}, Lcom/android/server/display/config/layout/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;

    move-result-object v3

    if-nez v3, :cond_53

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display layout config not found: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_a4

    .line 129
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_ae
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4f .. :try_end_52} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_52} :catch_ae

    return-void

    .line 116
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Lcom/android/server/display/config/layout/Layouts;->getLayout()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/layout/Layout;

    .line 117
    invoke-virtual {v4}, Lcom/android/server/display/config/layout/Layout;->getState()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 118
    invoke-virtual {p0, v5}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    move-result-object v5

    .line 119
    invoke-virtual {v4}, Lcom/android/server/display/config/layout/Layout;->getDisplay()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/layout/Display;

    .line 121
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getAddress()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v7

    .line 122
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->isDefaultDisplay()Z

    move-result v8

    const/4 v9, 0x0

    .line 126
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->isEnabled()Z

    move-result v6

    .line 120
    invoke-virtual {v5, v7, v8, v9, v6}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZZ)Lcom/android/server/display/layout/Layout$Display;
    :try_end_9f
    .catchall {:try_start_53 .. :try_end_9f} :catchall_a4

    goto :goto_7b

    .line 129
    :cond_a0
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_ae
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_a0 .. :try_end_a3} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_a3} :catch_ae

    goto :goto_c3

    :catchall_a4
    move-exception p0

    .line 110
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_ad

    :catchall_a9
    move-exception v1

    :try_start_aa
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ad
    throw p0
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ae} :catch_ae
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_aa .. :try_end_ae} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception p0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error while reading/parsing display layout config file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c3
    return-void
.end method
