.class public final enum Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
.super Ljava/lang/Enum;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

.field public static final enum FAST_SPEED_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

.field public static final enum HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 282
    new-instance v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    const-string v1, "HIGH_DETECTION_RATE_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 287
    new-instance v1, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    const-string v3, "FAST_SPEED_MODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->FAST_SPEED_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    .line 277
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->$VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 292
    iput p3, p0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->mValue:I

    .line 293
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 277
    const-class v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .registers 1

    .line 277
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->$VALUES:[Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    invoke-virtual {v0}, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 301
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->mValue:I

    return v0
.end method
