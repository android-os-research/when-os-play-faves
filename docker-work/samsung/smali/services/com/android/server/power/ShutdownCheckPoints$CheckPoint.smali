.class public abstract Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CheckPoint"
.end annotation


# instance fields
.field public final mReason:Ljava/lang/String;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V
    .registers 5

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-interface {p1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mTimestamp:J

    .line 190
    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "Shutdown request from "

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_1a

    const-string v0, " for reason "

    .line 197
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    const-string v0, " at "

    .line 200
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/android/server/power/ShutdownCheckPoints;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (epoch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->dumpDetails(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public abstract dumpDetails(Ljava/io/PrintWriter;)V
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method
