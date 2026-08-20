.class public Lcom/android/server/am/GPUMemoryReclaimer$Utils;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GPUMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Utils"
.end annotation


# instance fields
.field public self:Lcom/android/server/am/GPUMemoryReclaimer;

.field public final synthetic this$0:Lcom/android/server/am/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;)V
    .registers 3

    .line 2728
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->this$0:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer$Utils-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;)V

    return-void
.end method


# virtual methods
.method public getProcessName(I)Ljava/lang/String;
    .registers 4

    .line 2732
    invoke-virtual {p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->getProcessRecord(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2733
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 2737
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/comm"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2738
    invoke-virtual {p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessRecord(I)Lcom/android/server/am/ProcessRecord;
    .registers 2

    .line 2747
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmAMS(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public readFileToLong(Ljava/lang/String;)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2756
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    move-exception p0

    .line 2760
    throw p0
.end method

.method public readFileToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2770
    :try_start_0
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2771
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {p1, p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2772
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_19

    .line 2778
    :try_start_10
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 2779
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception p0

    .line 2782
    throw p0

    :catch_19
    move-exception p0

    .line 2775
    throw p0
.end method
