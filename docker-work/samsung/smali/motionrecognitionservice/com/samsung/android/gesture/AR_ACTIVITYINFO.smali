.class Lcom/samsung/android/gesture/AR_ACTIVITYINFO;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# instance fields
.field isActivity:Z

.field previsActivity:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->isActivity:Z

    return-void
.end method
