.class public final Lcom/android/server/power/PowerManagerService$ProfilePowerState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfilePowerState"
.end annotation


# instance fields
.field public mLastUserActivityTime:J

.field public mLockingNotified:Z

.field public mScreenOffTimeout:J

.field public mScreenOffTimeoutForUser:J

.field public final mUserId:I

.field public mWakeLockSummary:I


# direct methods
.method public constructor <init>(IJJ)V
    .registers 8

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new ProfilePowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iput p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    .line 1214
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    .line 1216
    iput-wide p4, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    return-void
.end method

.method public constructor <init>(IJJZ)V
    .registers 11

    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new ProfilePowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iput p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    const-wide v0, 0x7fffffffffffffffL

    if-eqz p6, :cond_2d

    move-wide v2, v0

    goto :goto_2e

    :cond_2d
    move-wide v2, p2

    .line 1224
    :goto_2e
    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    if-eqz p6, :cond_33

    goto :goto_34

    :cond_33
    move-wide p2, v0

    .line 1225
    :goto_34
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    .line 1227
    iput-wide p4, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    return-void
.end method
