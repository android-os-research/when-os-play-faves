.class public Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;
.super Ljava/lang/Object;
.source "CriticalEventLog.java"

# interfaces
.implements Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/CriticalEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogLoader"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLogFromFile(Ljava/io/File;)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;
    .registers 3

    .line 421
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    .line 422
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No log found, returning empty log proto."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    return-object p0

    .line 428
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    .line 427
    invoke-static {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception p0

    .line 430
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error reading log from disk."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    new-instance p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    invoke-direct {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    return-object p0
.end method


# virtual methods
.method public load(Ljava/io/File;Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer<",
            "Lcom/android/server/criticalevents/nano/CriticalEventProto;",
            ">;)V"
        }
    .end annotation

    .line 415
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;->loadLogFromFile(Ljava/io/File;)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_12

    aget-object v1, p0, v0

    .line 416
    invoke-virtual {p2, v1}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->append(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method
