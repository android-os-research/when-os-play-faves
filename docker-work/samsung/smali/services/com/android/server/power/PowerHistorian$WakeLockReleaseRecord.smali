.class public final Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "PowerHistorian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerHistorian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeLockReleaseRecord"
.end annotation


# instance fields
.field public final mElapsedTimeMillis:J

.field public final mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$WakeLock;J)V
    .registers 4

    .line 194
    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 196
    iput-wide p2, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mElapsedTimeMillis:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mElapsedTimeMillis:J

    .line 203
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " %-18s"

    .line 202
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
