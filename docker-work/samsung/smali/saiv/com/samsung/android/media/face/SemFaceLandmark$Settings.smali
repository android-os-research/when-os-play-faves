.class public Lcom/samsung/android/media/face/SemFaceLandmark$Settings;
.super Ljava/lang/Object;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableProfileDetection:Z

.field private mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEnableProfileDetection:Z

    .line 714
    return-void
.end method


# virtual methods
.method public getEngineOption()Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .registers 2

    .line 722
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method

.method public isProfileDetectionOptionEnabled()Z
    .registers 2

    .line 745
    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEnableProfileDetection:Z

    return v0
.end method

.method public setEngineOption(Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;)V
    .registers 3
    .param p1, "engineOption"    # Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 731
    if-nez p1, :cond_7

    .line 732
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_38_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    goto :goto_9

    .line 735
    :cond_7
    iput-object p1, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 737
    :goto_9
    return-void
.end method
