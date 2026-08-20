.class public final Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;
.super Ljava/lang/Thread;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DetectorThread"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)V
    .registers 2

    .line 2174
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;-><init>(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    const-string v0, "MemoryPressureDetector"

    const-string/jumbo v1, "nandswap: MemoryPressureDetector thread starts"

    .line 2177
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mwaitForMemoryPressure(Lcom/android/server/am/PerProcessNandswap;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 2183
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fputmAvailable(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;Z)V

    goto/16 :goto_b5

    .line 2187
    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v1}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmPressureStateLock(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_a9

    .line 2188
    :try_start_22
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v2, v0}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fputmPressureState(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;I)V

    .line 2189
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_a6

    .line 2192
    :try_start_28
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmPressureState(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_81

    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmPressureState(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3b

    goto :goto_81

    .line 2198
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$misAppLaunch(Lcom/android/server/am/PerProcessNandswap;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2199
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "MemoryPressureDetector"

    const-string/jumbo v1, "nandswap: ignored in app launch"

    .line 2200
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2204
    :cond_54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2205
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v2}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmRecentNandswapMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v4}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmTrialThrottlingMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6c

    goto :goto_8

    .line 2208
    :cond_6c
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v2}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetself(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)Lcom/android/server/am/PerProcessNandswap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v3}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmPressureState(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mtryToPerProcessNandswapByPsi(Lcom/android/server/am/PerProcessNandswap;I)V

    .line 2209
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v2, v0, v1}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fputmRecentNandswapMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;J)V

    goto :goto_8

    .line 2193
    :cond_81
    :goto_81
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "MemoryPressureDetector"

    .line 2194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nandswap: ignored ppr-trial by psi: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v2}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmPressureState(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_a4} :catch_a9

    goto/16 :goto_8

    :catchall_a6
    move-exception p0

    .line 2189
    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw p0
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception p0

    const-string v0, "MemoryPressureDetector"

    const-string/jumbo v1, "nandswap: MemoryPressureDetector thread crashed!"

    .line 2212
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b5
    const-string p0, "MemoryPressureDetector"

    const-string/jumbo v0, "nandswap: MemoryPressureDetector thread terminated!"

    .line 2215
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
