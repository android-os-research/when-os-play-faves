.class public Lcom/samsung/android/media/face/SemFaceLandmark;
.super Ljava/lang/Object;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceLandmark$Settings;,
        Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultEnginePointer:J = 0x0L

.field private static final mReturnFeatureNotSupported:I = -0x1


# instance fields
.field private mLdPointer:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/samsung/android/media/face/SemFaceLandmark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    .line 44
    :try_start_8
    const-string v0, "FacePreProcessing_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 47
    goto :goto_12

    .line 45
    :catch_e
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    .line 57
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 58
    return-void
.end method

.method private checkEngineBeforeRun()V
    .registers 5

    .line 637
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_16

    .line 640
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 643
    return-void

    .line 641
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The function init() is not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkInputBufferBeforeRun([BII)V
    .registers 7
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .line 646
    if-eqz p1, :cond_3b

    .line 649
    array-length v0, p1

    if-eqz v0, :cond_33

    .line 652
    if-lez p2, :cond_a

    if-lez p3, :cond_a

    .line 655
    return-void

    .line 653
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimension of image ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data size is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isSecProductFeatureConfigured()Z
    .registers 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method private static native landmarkCopyImageToNative([J[BIII)I
.end method

.method private static landmarkCreate([J)I
    .registers 2
    .param p0, "ldPointer"    # [J

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I

    move-result v0

    return v0
.end method

.method private static native landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I
.end method

.method private static native landmarkDestroy([J)V
.end method

.method private static native landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;
.end method

.method private static native landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;
.end method

.method private static native landmarkRemoveImageFromNative([J)I
.end method

.method private static printNotSupportedFeatureMessage()V
    .registers 2

    .line 67
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    const-string v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method public findEyes([BIILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;)",
            "Ljava/util/ArrayList<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 465
    .local p4, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/face/SemFace;>;"
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 466
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 467
    return-object v1

    .line 471
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 472
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 474
    if-eqz p4, :cond_d3

    .line 478
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 480
    .local v0, "facenum":I
    if-eqz v0, :cond_cb

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v2, "eyeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/Point;>;"
    iget-object v3, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v4, 0x0

    invoke-static {v3, p1, p2, p3, v4}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 487
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v0, :cond_c5

    .line 489
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/face/SemFace;

    .line 490
    .local v4, "face":Lcom/samsung/android/media/face/SemFace;
    const-string v5, "-th face is null"

    if-eqz v4, :cond_a8

    .line 493
    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 494
    .local v6, "faceROI":Landroid/graphics/Rect;
    if-eqz v6, :cond_8b

    .line 497
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_5a

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_5a

    .line 501
    iget-object v5, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v5

    .line 502
    .local v5, "eyept":[Landroid/graphics/Point;
    array-length v7, v5

    if-nez v7, :cond_54

    .line 503
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 505
    :cond_54
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    .end local v5    # "eyept":[Landroid/graphics/Point;
    .end local v6    # "faceROI":Landroid/graphics/Rect;
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 498
    .restart local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    .restart local v6    # "faceROI":Landroid/graphics/Rect;
    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face rect information has improper dimension ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_8b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Face rect information of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    .end local v6    # "faceROI":Landroid/graphics/Rect;
    :cond_a8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face information of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    .end local v3    # "i":I
    .end local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    :cond_c5
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 509
    return-object v2

    .line 481
    .end local v2    # "eyeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/Point;>;"
    :cond_cb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No available face information"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    .end local v0    # "facenum":I
    :cond_d3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ArrayList<SemFace> information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findEyes([BIILandroid/graphics/Rect;)[Landroid/graphics/Point;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "faceROI"    # Landroid/graphics/Rect;

    .line 188
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 189
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 190
    return-object v1

    .line 194
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 197
    if-eqz p4, :cond_67

    .line 201
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_36

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_36

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "eyept":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, p3, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 208
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2, p4, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 210
    array-length v2, v0

    if-nez v2, :cond_35

    .line 211
    return-object v1

    .line 213
    :cond_35
    return-object v0

    .line 202
    .end local v0    # "eyept":[Landroid/graphics/Point;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findEyes([BIILcom/samsung/android/media/face/SemFace;)[Landroid/graphics/Point;
    .registers 10
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "face"    # Lcom/samsung/android/media/face/SemFace;

    .line 231
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 232
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 233
    return-object v1

    .line 237
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 240
    if-eqz p4, :cond_7f

    .line 244
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 248
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->isCoordinatesProper()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "eyept":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, p3, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 255
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 257
    array-length v2, v0

    if-nez v2, :cond_3d

    .line 258
    return-object v1

    .line 260
    :cond_3d
    return-object v0

    .line 249
    .end local v0    # "eyept":[Landroid/graphics/Point;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findEyes4Orientation([BIILjava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 15
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 527
    .local p4, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/face/SemFace;>;"
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 528
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 529
    return-object v1

    .line 533
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 534
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 536
    if-eqz p4, :cond_d2

    .line 540
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 542
    .local v0, "facenum":I
    if-eqz v0, :cond_ca

    .line 547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v2, "eyeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/Point;>;"
    iget-object v3, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v3, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 549
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v0, :cond_c4

    .line 551
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/face/SemFace;

    .line 552
    .local v4, "face":Lcom/samsung/android/media/face/SemFace;
    const-string v5, "-th face is null"

    if-eqz v4, :cond_a7

    .line 555
    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 556
    .local v6, "faceROI":Landroid/graphics/Rect;
    if-eqz v6, :cond_8a

    .line 559
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_59

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_59

    .line 563
    iget-object v5, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v5

    .line 564
    .local v5, "eyept":[Landroid/graphics/Point;
    array-length v7, v5

    if-nez v7, :cond_53

    .line 565
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 567
    :cond_53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .end local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    .end local v5    # "eyept":[Landroid/graphics/Point;
    .end local v6    # "faceROI":Landroid/graphics/Rect;
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 560
    .restart local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    .restart local v6    # "faceROI":Landroid/graphics/Rect;
    :cond_59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face rect information has improper dimension ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Face rect information of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    .end local v6    # "faceROI":Landroid/graphics/Rect;
    :cond_a7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face information of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    .end local v3    # "i":I
    .end local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    :cond_c4
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 571
    return-object v2

    .line 543
    .end local v2    # "eyeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/Point;>;"
    :cond_ca
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No available face information"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    .end local v0    # "facenum":I
    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ArrayList<SemFace> information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findEyes4Orientation([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
    .registers 10
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "faceROI"    # Landroid/graphics/Rect;
    .param p5, "orientation"    # I

    .line 279
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 280
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 281
    return-object v1

    .line 285
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 288
    if-eqz p4, :cond_67

    .line 292
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_36

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_36

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "eyept":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 299
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v3, 0x0

    invoke-static {v2, p4, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 300
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 301
    array-length v2, v0

    if-nez v2, :cond_35

    .line 302
    return-object v1

    .line 304
    :cond_35
    return-object v0

    .line 293
    .end local v0    # "eyept":[Landroid/graphics/Point;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findEyes4Orientation([BIILcom/samsung/android/media/face/SemFace;I)[Landroid/graphics/Point;
    .registers 11
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "face"    # Lcom/samsung/android/media/face/SemFace;
    .param p5, "orientation"    # I

    .line 323
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 324
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 325
    return-object v1

    .line 329
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 332
    if-eqz p4, :cond_7e

    .line 336
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 340
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->isCoordinatesProper()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "eyept":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 347
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindEyes4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 349
    array-length v2, v0

    if-nez v2, :cond_3c

    .line 350
    return-object v1

    .line 352
    :cond_3c
    return-object v0

    .line 341
    .end local v0    # "eyept":[Landroid/graphics/Point;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()I
    .registers 5

    .line 98
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_b

    .line 99
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 100
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_29

    .line 108
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 109
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->release()V

    .line 114
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([J)I

    move-result v0

    return v0

    .line 105
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lcom/samsung/android/media/face/SemFaceLandmark$Settings;)I
    .registers 6
    .param p1, "settings"    # Lcom/samsung/android/media/face/SemFaceLandmark$Settings;

    .line 127
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_b

    .line 128
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 129
    const/4 v0, -0x1

    return v0

    .line 133
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_29

    .line 137
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 138
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->release()V

    .line 143
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v0, p1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCreate([JLcom/samsung/android/media/face/SemFaceLandmark$Settings;)I

    move-result v0

    return v0

    .line 134
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 7

    .line 154
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_a

    .line 155
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 156
    return-void

    .line 160
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    if-eqz v0, :cond_27

    .line 164
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    .line 165
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark;->TAG:Ljava/lang/String;

    const-string v1, "The function init() is not yet called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 170
    :cond_1f
    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkDestroy([J)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    aput-wide v4, v0, v1

    .line 172
    return-void

    .line 161
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run([BIILjava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 15
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 589
    .local p4, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/face/SemFace;>;"
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 590
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 591
    return-object v1

    .line 595
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 596
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 598
    if-eqz p4, :cond_d2

    .line 602
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    .local v0, "facenum":I
    if-eqz v0, :cond_ca

    .line 609
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v2, "keypointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/Point;>;"
    iget-object v3, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v3, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 611
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v0, :cond_c4

    .line 613
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/face/SemFace;

    .line 614
    .local v4, "face":Lcom/samsung/android/media/face/SemFace;
    const-string v5, "-th face is null"

    if-eqz v4, :cond_a7

    .line 617
    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 618
    .local v6, "faceROI":Landroid/graphics/Rect;
    if-eqz v6, :cond_8a

    .line 621
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_59

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_59

    .line 625
    iget-object v5, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v5

    .line 626
    .local v5, "keypoint":[Landroid/graphics/Point;
    array-length v7, v5

    if-nez v7, :cond_53

    .line 627
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 629
    :cond_53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    .end local v5    # "keypoint":[Landroid/graphics/Point;
    .end local v6    # "faceROI":Landroid/graphics/Rect;
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 622
    .restart local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    .restart local v6    # "faceROI":Landroid/graphics/Rect;
    :cond_59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face rect information has improper dimension ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Face rect information of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .end local v6    # "faceROI":Landroid/graphics/Rect;
    :cond_a7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face information of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    .end local v3    # "i":I
    .end local v4    # "face":Lcom/samsung/android/media/face/SemFace;
    :cond_c4
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v1}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 633
    return-object v2

    .line 605
    .end local v2    # "keypointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/graphics/Point;>;"
    :cond_ca
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No available face information"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    .end local v0    # "facenum":I
    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ArrayList<SemFace> information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run([BIILandroid/graphics/Rect;I)[Landroid/graphics/Point;
    .registers 10
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "faceROI"    # Landroid/graphics/Rect;
    .param p5, "orientation"    # I

    .line 371
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 372
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 373
    return-object v1

    .line 377
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 378
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 380
    if-eqz p4, :cond_67

    .line 384
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_36

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_36

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "keypoints":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 391
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    const/4 v3, 0x0

    invoke-static {v2, p4, v3}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 392
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 393
    array-length v2, v0

    if-nez v2, :cond_35

    .line 394
    return-object v1

    .line 396
    :cond_35
    return-object v0

    .line 385
    .end local v0    # "keypoints":[Landroid/graphics/Point;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run([BIILcom/samsung/android/media/face/SemFace;I)[Landroid/graphics/Point;
    .registers 11
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "face"    # Lcom/samsung/android/media/face/SemFace;
    .param p5, "orientation"    # I

    .line 418
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->isSecProductFeatureConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 419
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceLandmark;->printNotSupportedFeatureMessage()V

    .line 420
    return-object v1

    .line 424
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkEngineBeforeRun()V

    .line 425
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceLandmark;->checkInputBufferBeforeRun([BII)V

    .line 427
    if-eqz p4, :cond_7e

    .line 431
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 435
    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->isCoordinatesProper()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "keypoints":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2, p1, p2, p3, p5}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkCopyImageToNative([J[BIII)I

    .line 442
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getPose()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkFindAll4OrientationWithPose([JLandroid/graphics/Rect;I)[Landroid/graphics/Point;

    move-result-object v0

    .line 443
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceLandmark;->mLdPointer:[J

    invoke-static {v2}, Lcom/samsung/android/media/face/SemFaceLandmark;->landmarkRemoveImageFromNative([J)I

    .line 444
    array-length v2, v0

    if-nez v2, :cond_3c

    .line 445
    return-object v1

    .line 447
    :cond_3c
    return-object v0

    .line 436
    .end local v0    # "keypoints":[Landroid/graphics/Point;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect information has improper dimension ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
