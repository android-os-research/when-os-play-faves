.class Lcom/samsung/android/gesture/AR_MAIN_DATA;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# instance fields
.field ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

.field arFeature:Lcom/samsung/android/gesture/AR_FEATURE;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Lcom/samsung/android/gesture/AR_FEATURE;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_FEATURE;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    .line 312
    new-instance v0, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    .line 313
    return-void
.end method
