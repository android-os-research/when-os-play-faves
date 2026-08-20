.class public Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;
.super Ljava/lang/Object;
.source "ChimeraAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInfo"
.end annotation


# instance fields
.field public avgPss:J

.field public initialIdlePss:J

.field public pid:I

.field public pidFd:Ljava/io/FileDescriptor;

.field public processName:Ljava/lang/String;

.field public pss:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JJJ)V
    .registers 9

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 46
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 48
    iput-wide p5, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    .line 49
    iput-wide p7, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
