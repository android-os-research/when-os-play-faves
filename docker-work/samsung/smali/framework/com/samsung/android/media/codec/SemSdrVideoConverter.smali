.class public Lcom/samsung/android/media/codec/SemSdrVideoConverter;
.super Ljava/lang/Object;
.source "SemSdrVideoConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;
    }
.end annotation


# static fields
.field private static blacklist mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;


# instance fields
.field private blacklist mProgressEventListener:Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mProgressEventListener:Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-direct {v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;-><init>()V

    sput-object v0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;

    .line 25
    return-void
.end method

.method public static whitelist create()Lcom/samsung/android/media/codec/SemSdrVideoConverter;
    .registers 3

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "support HDR soltuion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemSdrVideoConverter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-eqz v0, :cond_2c

    .line 38
    new-instance v1, Lcom/samsung/android/media/codec/SemSdrVideoConverter;

    invoke-direct {v1}, Lcom/samsung/android/media/codec/SemSdrVideoConverter;-><init>()V

    return-object v1

    .line 41
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist cancel()Z
    .registers 2

    .line 144
    sget-object v0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->stop()Z

    move-result v0

    return v0
.end method

.method public whitelist convert()Z
    .registers 2

    .line 133
    sget-object v0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->convert()Z

    move-result v0

    return v0
.end method

.method public whitelist getEstimatedOutputFileSize()I
    .registers 2

    .line 118
    sget-object v0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getOutputFileSize()I

    move-result v0

    return v0
.end method

.method public whitelist initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inputUri"    # Landroid/net/Uri;

    .line 105
    sget-object v0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/media/convert/core/ConvertVideo;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public whitelist initialize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "inputFilePath"    # Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->initialize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist setProgressEventListener(Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;)V
    .registers 4
    .param p1, "listner"    # Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    .line 155
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mProgressEventListener:Lcom/samsung/android/media/codec/SemSdrVideoConverter$ProgressEventListener;

    .line 156
    sget-object v0, Lcom/samsung/android/media/codec/SemSdrVideoConverter;->mConvertVideo:Lcom/samsung/android/media/convert/core/ConvertVideo;

    new-instance v1, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/SemSdrVideoConverter$1;-><init>(Lcom/samsung/android/media/codec/SemSdrVideoConverter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->setProgressUpdateListener(Lcom/samsung/android/media/convert/core/Convert$ConvertEventListener;)V

    .line 179
    return-void
.end method
