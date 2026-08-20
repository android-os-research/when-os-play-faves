.class public final enum Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
.super Ljava/lang/Enum;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 668
    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v1, "LANDMARK_13_KEYPOINTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 674
    new-instance v1, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v3, "LANDMARK_35_KEYPOINTS"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 680
    new-instance v3, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const-string v6, "LANDMARK_38_KEYPOINTS"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v5, v7}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 663
    new-array v6, v7, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    aput-object v3, v6, v5

    sput-object v6, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

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

    .line 684
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 685
    iput p3, p0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->mValue:I

    .line 686
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 663
    const-class v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .registers 1

    .line 663
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-virtual {v0}, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 694
    iget v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->mValue:I

    return v0
.end method
