.class Lcom/samsung/android/gesture/AR_BAROFEATURE;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# static fields
.field static final AR_BUFFER_SIZE_BARO:I = 0x19


# instance fields
.field index:I

.field lowpassBaro:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/AR_BAROFEATURE;->lowpassBaro:[F

    return-void
.end method
