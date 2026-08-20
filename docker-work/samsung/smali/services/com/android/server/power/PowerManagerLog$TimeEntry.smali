.class public Lcom/android/server/power/PowerManagerLog$TimeEntry;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"

# interfaces
.implements Lcom/android/server/power/PowerManagerLog$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeEntry"
.end annotation


# instance fields
.field public mTime:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerLog$TimeEntry;->mTime:J

    return-void
.end method

.method public static of(J)Lcom/android/server/power/PowerManagerLog$TimeEntry;
    .registers 3

    .line 392
    new-instance v0, Lcom/android/server/power/PowerManagerLog$TimeEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerLog$TimeEntry;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public dumpOnce(Ljava/io/PrintWriter;J)J
    .registers 4

    .line 383
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerLog$TimeEntry;->mTime:J

    return-wide p0
.end method

.method public getTime(J)J
    .registers 3

    .line 378
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerLog$TimeEntry;->mTime:J

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time ref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerLog$TimeEntry;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
