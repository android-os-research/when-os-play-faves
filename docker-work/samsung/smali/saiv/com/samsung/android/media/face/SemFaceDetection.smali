.class public Lcom/samsung/android/media/face/SemFaceDetection;
.super Ljava/lang/Object;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceDetection$Settings;,
        Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultEnginePointer:J = 0x0L

.field private static final mReturnFeatureNotSupported:I = -0x1


# instance fields
.field private mFdPointer:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    .line 43
    :try_start_8
    const-string v0, "FacePreProcessing_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 46
    goto :goto_12

    .line 44
    :catch_e
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    .line 56
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 57
    return-void
.end method

.method private checkEngineBeforeRun()V
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_16

    .line 266
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 269
    return-void

    .line 267
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The function init() is not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I
.end method

.method private static native detectionDestroySupportMultiInstance([J)I
.end method

.method private static native detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I
.end method

.method private static native detectionFindFaceSupportMultiInstance([J[BII)I
.end method

.method private static native detectionGetFacePoseSupportMultiInstance([JI)I
.end method

.method private static native detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;
.end method

.method private static isSecProductFeatureConfigured()Z
    .registers 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method private static printNotSupportedFeatureMessage()V
    .registers 2

    .line 66
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method public init()I
    .registers 5

    .line 93
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_b

    .line 94
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 95
    const/4 v0, -0x1

    return v0

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_2a

    .line 103
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 104
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    .line 109
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I

    move-result v0

    return v0

    .line 100
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lcom/samsung/android/media/face/SemFaceDetection$Settings;)I
    .registers 6
    .param p1, "settings"    # Lcom/samsung/android/media/face/SemFaceDetection$Settings;

    .line 122
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_b

    .line 123
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 124
    const/4 v0, -0x1

    return v0

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_29

    .line 132
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 133
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    .line 138
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v0, p1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I

    move-result v0

    return v0

    .line 129
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 7

    .line 149
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_a

    .line 150
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 151
    return-void

    .line 155
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_27

    .line 159
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    .line 160
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "The function init() is not yet called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 165
    :cond_1f
    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionDestroySupportMultiInstance([J)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    aput-wide v4, v0, v1

    .line 167
    return-void

    .line 156
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .registers 8
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;)I"
        }
    .end annotation

    .line 228
    .local p2, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/face/SemFace;>;"
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_b

    .line 229
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 230
    const/4 v0, -0x1

    return v0

    .line 234
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->checkEngineBeforeRun()V

    .line 236
    if-eqz p2, :cond_7d

    .line 240
    if-eqz p1, :cond_75

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_44

    .line 249
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v0, p1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I

    move-result v0

    .line 251
    .local v0, "facenum":I
    if-lez v0, :cond_43

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    if-ge v1, v0, :cond_43

    .line 253
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v2, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;

    move-result-object v2

    .line 254
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v3, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFacePoseSupportMultiInstance([JI)I

    move-result v3

    .line 255
    .local v3, "pose":I
    new-instance v4, Lcom/samsung/android/media/face/SemFace;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "pose":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 258
    .end local v1    # "i":I
    :cond_43
    return v0

    .line 245
    .end local v0    # "facenum":I
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimension of image ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

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

    .line 241
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ArrayList<SemFace> is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run([BIILjava/util/ArrayList;)I
    .registers 10
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;)I"
        }
    .end annotation

    .line 183
    .local p4, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/face/SemFace;>;"
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_b

    .line 184
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    .line 185
    const/4 v0, -0x1

    return v0

    .line 189
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->checkEngineBeforeRun()V

    .line 191
    if-eqz p4, :cond_6d

    .line 195
    if-eqz p1, :cond_65

    .line 199
    if-lez p2, :cond_3c

    if-lez p3, :cond_3c

    .line 204
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionFindFaceSupportMultiInstance([J[BII)I

    move-result v0

    .line 206
    .local v0, "facenum":I
    if-lez v0, :cond_3b

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v0, :cond_3b

    .line 208
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v2, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;

    move-result-object v2

    .line 209
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v3, v1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFacePoseSupportMultiInstance([JI)I

    move-result v3

    .line 210
    .local v3, "pose":I
    new-instance v4, Lcom/samsung/android/media/face/SemFace;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "pose":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 213
    .end local v1    # "i":I
    :cond_3b
    return v0

    .line 200
    .end local v0    # "facenum":I
    :cond_3c
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

    .line 196
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ArrayList<SemFace> is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
