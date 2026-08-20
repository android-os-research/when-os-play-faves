.class public Lcom/samsung/android/media/face/SemFaceGAERecognition;
.super Ljava/lang/Object;
.source "SemFaceGAERecognition.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceGAERecognition"

.field private static final mDefaultEnginePointer:J = 0x0L

.field private static final mReturnFeatureNotSupported:I = -0x1


# instance fields
.field private mGAEPointer:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 187
    :try_start_0
    const-string v0, "HprFace_GAE_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 190
    goto :goto_a

    .line 188
    :catch_6
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    .line 46
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 47
    return-void
.end method

.method private checkEngineBeforeRun()V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    if-eqz v0, :cond_16

    .line 177
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 180
    return-void

    .line 178
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The function init() is not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native gaeCreate([J)I
.end method

.method private static native gaeDestroy([J)I
.end method

.method private static native gaeFindAll([J[BIILandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[BII",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native gaeFindAllOnBitmap([JLandroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static printNotSupportedFeatureMessage()V
    .registers 2

    .line 169
    const-string v0, "SemFaceGAERecognition"

    const-string v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method


# virtual methods
.method public init()I
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    if-eqz v0, :cond_1e

    .line 59
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 60
    const-string v0, "SemFaceGAERecognition"

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->release()V

    .line 65
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeCreate([J)I

    move-result v0

    return v0

    .line 56
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 7

    .line 73
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    if-eqz v0, :cond_1d

    .line 77
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_15

    .line 78
    const-string v0, "SemFaceGAERecognition"

    const-string v1, "The function init() is not yet called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 83
    :cond_15
    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeDestroy([J)I

    .line 84
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    aput-wide v4, v0, v1

    .line 85
    return-void

    .line 74
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Improperly instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run(Landroid/graphics/Bitmap;Lcom/samsung/android/media/face/SemFace;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 13
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "face"    # Lcom/samsung/android/media/face/SemFace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/samsung/android/media/face/SemFace;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 140
    .local p3, "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p4, "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p5, "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->checkEngineBeforeRun()V

    .line 142
    if-eqz p1, :cond_74

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_43

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_43

    .line 150
    if-eqz p2, :cond_3b

    .line 154
    invoke-virtual {p2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 156
    .local v0, "faceROI":Landroid/graphics/Rect;
    if-eqz v0, :cond_33

    .line 160
    if-eqz p3, :cond_2b

    if-eqz p4, :cond_2b

    if-eqz p5, :cond_2b

    .line 165
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeFindAllOnBitmap([JLandroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    return v1

    .line 161
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "More than one ArrayList<Float> are null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Face rect information is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v0    # "faceROI":Landroid/graphics/Rect;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_43
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

    .line 143
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run([BIILcom/samsung/android/media/face/SemFace;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 20
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "face"    # Lcom/samsung/android/media/face/SemFace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/samsung/android/media/face/SemFace;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 100
    .local p5, "genderConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p6, "ageConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p7, "expressionConfidence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move v8, p2

    move v9, p3

    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->checkEngineBeforeRun()V

    .line 102
    if-eqz p1, :cond_70

    .line 106
    if-lez v8, :cond_46

    if-lez v9, :cond_46

    .line 110
    if-eqz p4, :cond_3d

    .line 114
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 116
    .local v10, "faceROI":Landroid/graphics/Rect;
    if-eqz v10, :cond_34

    .line 120
    if-eqz p5, :cond_2b

    if-eqz p6, :cond_2b

    if-eqz p7, :cond_2b

    .line 125
    move-object v11, p0

    iget-object v0, v11, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v10

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/face/SemFaceGAERecognition;->gaeFindAll([J[BIILandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    .line 120
    :cond_2b
    move-object v11, p0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one ArrayList<Float> are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_34
    move-object v11, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face rect information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    .end local v10    # "faceROI":Landroid/graphics/Rect;
    :cond_3d
    move-object v11, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_46
    move-object v11, p0

    .line 107
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

    .line 103
    :cond_70
    move-object v11, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
