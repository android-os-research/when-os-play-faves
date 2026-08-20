.class public Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
.super Ljava/lang/Object;
.source "UseCasePriorityHints.java"


# static fields
.field public static final DEBUG:Z

.field public static final INVALID_PRIORITY_VALUE:I = -0x1

.field public static final INVALID_USE_CASE:I = -0x1

.field public static final NS:Ljava/lang/String;

.field public static final PATH_TO_VENDOR_CONFIG_XML:Ljava/lang/String; = "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

.field public static final TAG:Ljava/lang/String; = "UseCasePriorityHints"


# instance fields
.field public mDefaultBackground:I

.field public mDefaultForeground:I

.field public mPriorityHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public mVendorDefinedUseCase:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "UseCasePriorityHints"

    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    const/16 v0, 0x96

    .line 62
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    const/16 v0, 0x32

    .line 63
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return-void
.end method

.method public static formatTypeToNum(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I
    .registers 3

    const/4 v0, 0x0

    .line 207
    invoke-interface {p1, v0, p0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_5c

    :goto_10
    move p0, v0

    goto :goto_48

    :sswitch_12
    const-string p1, "USE_CASE_RECORD"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 p0, 0x4

    goto :goto_48

    :sswitch_1d
    const-string p1, "USE_CASE_SCAN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_10

    :cond_26
    const/4 p0, 0x3

    goto :goto_48

    :sswitch_28
    const-string p1, "USE_CASE_LIVE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_10

    :cond_31
    const/4 p0, 0x2

    goto :goto_48

    :sswitch_33
    const-string p1, "USE_CASE_PLAYBACK"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_10

    :cond_3c
    const/4 p0, 0x1

    goto :goto_48

    :sswitch_3e
    const-string p1, "USE_CASE_BACKGROUND"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto :goto_10

    :cond_47
    const/4 p0, 0x0

    :goto_48
    packed-switch p0, :pswitch_data_72

    return v0

    :pswitch_4c
    const/16 p0, 0x1f4

    return p0

    :pswitch_4f
    const/16 p0, 0xc8

    return p0

    :pswitch_52
    const/16 p0, 0x190

    return p0

    :pswitch_55
    const/16 p0, 0x12c

    return p0

    :pswitch_58
    const/16 p0, 0x64

    return p0

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x34bcc93b -> :sswitch_3e
        0x16873572 -> :sswitch_33
        0x48d65bc3 -> :sswitch_28
        0x48d97154 -> :sswitch_1d
        0x76aab968 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch
.end method

.method public static isPredefinedUseCase(I)Z
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_16

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_16

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_16

    const/16 v0, 0x190

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addNewUseCasePriority(III)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 202
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public getBackgroundPriority(I)I
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 74
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    .line 76
    :cond_20
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return p0
.end method

.method public getForegroundPriority(I)I
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 67
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    .line 69
    :cond_20
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    return p0
.end method

.method public isDefinedUseCase(I)Z
    .registers 3

    .line 80
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->isPredefinedUseCase(I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public parse()V
    .registers 5

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "UseCasePriorityHints"

    if-eqz v1, :cond_44

    .line 91
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parseInternal(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse vendor file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    :catch_2e
    move-exception p0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading vendor file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 100
    :cond_44
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v0, :cond_4d

    const-string v0, "no vendor priority configuration available. Using default priority"

    .line 101
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/16 v0, 0xb4

    const/16 v1, 0x64

    .line 103
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x1c2

    const/16 v1, 0xc8

    .line 104
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x1e0

    const/16 v1, 0x12c

    .line 105
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x1ea

    const/16 v1, 0x190

    .line 106
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v0, 0x258

    const/16 v1, 0x1f4

    .line 107
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    :goto_70
    return-void
.end method

.method public parseInternal(Ljava/io/InputStream;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readUseCase(Landroid/util/TypedXmlPullParser;)V

    .line 121
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_d} :catch_83

    const/4 p1, 0x0

    move v0, p1

    .line 125
    :goto_f
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 126
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 127
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 128
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v3, :cond_7f

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{defaultFg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", defaultBg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UseCasePriorityHints"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{useCase="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_82
    return-void

    :catch_83
    move-exception p0

    .line 123
    throw p0
.end method

.method public final readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 197
    invoke-interface {p2, p0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final readUseCase(Landroid/util/TypedXmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "config"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_8
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9d

    .line 143
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_8

    .line 146
    :cond_16
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "useCaseDefault"

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "bgPriority"

    const-string v5, "fgPriority"

    if-eqz v3, :cond_3c

    .line 149
    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 150
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 151
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 152
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_3c
    const-string/jumbo v3, "useCasePreDefined"

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const-string/jumbo v3, "type"

    .line 154
    invoke-static {v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->formatTypeToNum(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_57

    const-string v0, "UseCasePriorityHints"

    const-string v2, "Wrong predefined use case name given in the vendor config."

    .line 156
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 160
    :cond_57
    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v5

    .line 161
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v4

    .line 159
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 162
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 163
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_6b
    const-string/jumbo v3, "useCaseVendor"

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    const-string v3, "id"

    .line 165
    invoke-virtual {p0, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    .line 167
    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v5

    .line 168
    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v4

    .line 166
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 169
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 171
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 173
    :cond_98
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->skip(Landroid/util/TypedXmlPullParser;)V

    goto/16 :goto_8

    :cond_9d
    return-void
.end method

.method public final skip(Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1b

    const/4 p0, 0x1

    :goto_8
    if-eqz p0, :cond_1a

    .line 184
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v0, :cond_17

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    goto :goto_8

    :cond_14
    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_17
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_1a
    return-void

    .line 180
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
