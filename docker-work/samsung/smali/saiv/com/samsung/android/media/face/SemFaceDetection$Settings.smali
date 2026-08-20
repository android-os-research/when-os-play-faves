.class public Lcom/samsung/android/media/face/SemFaceDetection$Settings;
.super Ljava/lang/Object;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableFrontalRollSearch:Z

.field private mEnableFrontalTiltDownSearch:Z

.field private mEnableProfileSearch:Z

.field private mMaxFaceSize:F

.field private mMinFaceSize:F

.field private mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 325
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    .line 326
    iput v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    .line 328
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    .line 329
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    .line 330
    return-void
.end method


# virtual methods
.method public getMaxFaceSize()F
    .registers 2

    .line 379
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    return v0
.end method

.method public getMinFaceSize()F
    .registers 2

    .line 361
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    return v0
.end method

.method public getProcessingMode()Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-object v0
.end method

.method public isFrontalRollSearchEnabled()Z
    .registers 2

    .line 415
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    return v0
.end method

.method public isFrontalTiltDownSearchEnabled()Z
    .registers 2

    .line 433
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    return v0
.end method

.method public isProfileSearchEnabled()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    return v0
.end method

.method public setFrontalRollSearchEnabled(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 424
    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    .line 425
    return-void
.end method

.method public setFrontalTiltDownSearchEnabled(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 442
    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    .line 443
    return-void
.end method

.method public setMaxFaceSize(F)V
    .registers 2
    .param p1, "maxFaceSize"    # F

    .line 388
    iput p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    .line 389
    return-void
.end method

.method public setMinFaceSize(F)V
    .registers 2
    .param p1, "minFaceSize"    # F

    .line 370
    iput p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    .line 371
    return-void
.end method

.method public setProcessingMode(Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;)V
    .registers 3
    .param p1, "processingMode"    # Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 347
    if-nez p1, :cond_7

    .line 348
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    goto :goto_9

    .line 351
    :cond_7
    iput-object p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 353
    :goto_9
    return-void
.end method

.method public setProfileSearchEnabled(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 406
    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    .line 407
    return-void
.end method
