.class public final Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationPowerSaveModeEvent"
.end annotation


# instance fields
.field public final mLocationPowerSaveMode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 438
    iget p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const-string p0, "UNKNOWN"

    goto :goto_21

    :cond_13
    const-string p0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    goto :goto_21

    :cond_16
    const-string p0, "FOREGROUND_ONLY"

    goto :goto_21

    :cond_19
    const-string p0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    goto :goto_21

    :cond_1c
    const-string p0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    goto :goto_21

    :cond_1f
    const-string p0, "NO_CHANGE"

    .line 458
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location power save mode changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
