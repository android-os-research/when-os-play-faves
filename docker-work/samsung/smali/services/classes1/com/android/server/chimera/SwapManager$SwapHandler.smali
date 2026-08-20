.class public final Lcom/android/server/chimera/SwapManager$SwapHandler;
.super Landroid/os/Handler;
.source "SwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SwapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SwapHandler"
.end annotation


# instance fields
.field public mAttachedLittleCores:Z

.field public final synthetic this$0:Lcom/android/server/chimera/SwapManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SwapManager;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    .line 198
    invoke-static {p1}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmChimeraSwapThread(Lcom/android/server/chimera/SwapManager;)Lcom/android/server/ServiceThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/android/server/chimera/SwapManager$SwapHandler;->mAttachedLittleCores:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/SwapManager;Lcom/android/server/chimera/SwapManager$SwapHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/chimera/SwapManager$SwapHandler;-><init>(Lcom/android/server/chimera/SwapManager;)V

    return-void
.end method


# virtual methods
.method public attachToLittleCores()V
    .registers 3

    .line 204
    iget-boolean v0, p0, Lcom/android/server/chimera/SwapManager$SwapHandler;->mAttachedLittleCores:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/android/server/chimera/SwapManager$SwapHandler;->mAttachedLittleCores:Z

    .line 206
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 207
    fill-array-data v0, :array_1a

    .line 208
    new-instance v1, Lcom/samsung/android/os/SemAffinityControl;

    invoke-direct {v1}, Lcom/samsung/android/os/SemAffinityControl;-><init>()V

    .line 209
    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/os/SemAffinityControl;->setAffinity(I[I)I

    :cond_19
    return-void

    :array_1a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 292
    invoke-virtual {p0}, Lcom/android/server/chimera/SwapManager$SwapHandler;->attachToLittleCores()V

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    goto :goto_10

    .line 296
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/SwapManager$SwapHandler;->handleSwapProcessList(Ljava/util/List;)V

    :goto_10
    return-void
.end method

.method public handleSwapProcessList(Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_1f2

    .line 219
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_c

    goto/16 :goto_1f2

    .line 223
    :cond_c
    sget-object v1, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v1}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v1

    .line 224
    iget-object v3, v0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    invoke-static {v3}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmSwapMemTarget(Lcom/android/server/chimera/SwapManager;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4a

    .line 225
    sget-object v3, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "available memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", swap memory target: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    invoke-static {v0}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmSwapMemTarget(Lcom/android/server/chimera/SwapManager;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", Skipping swap as available has satisfied!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_4a
    iget-object v3, v0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    invoke-static {v3}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmSwapMemTarget(Lcom/android/server/chimera/SwapManager;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 232
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v1

    .line 234
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v11, v6

    move-wide v9, v7

    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    if-eqz v12, :cond_16c

    .line 235
    iget v15, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    if-eqz v15, :cond_16c

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    if-ne v15, v13, :cond_78

    goto/16 :goto_16c

    .line 240
    :cond_78
    iget v12, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 241
    sget-object v13, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v13, v12}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcRss(Lcom/android/server/chimera/SystemRepository;I)[J

    move-result-object v13

    .line 243
    aget-wide v14, v13, v6

    cmp-long v14, v14, v7

    const/4 v15, 0x3

    const/16 v18, 0x2

    if-nez v14, :cond_bc

    const/4 v14, 0x1

    aget-wide v19, v13, v14

    cmp-long v14, v19, v7

    if-nez v14, :cond_bc

    aget-wide v19, v13, v18

    cmp-long v14, v19, v7

    if-nez v14, :cond_bc

    aget-wide v19, v13, v15

    cmp-long v14, v19, v7

    if-nez v14, :cond_bc

    .line 245
    sget-object v13, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping swap for process "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with no memory usage. Dead?"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v14, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 250
    :cond_bc
    aget-wide v19, v13, v18

    const-wide/16 v16, 0x400

    cmp-long v6, v19, v16

    if-gez v6, :cond_e4

    .line 251
    sget-object v6, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping swap for anon too small: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v13, v18

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e0
    move-object/from16 v21, v5

    goto/16 :goto_188

    .line 255
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/SwapManager$SwapHandler;->isAppLaunch()Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 256
    sget-object v5, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Open app, skip swap. "

    invoke-interface {v5, v6, v7}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18f

    .line 260
    :cond_f7
    sget-object v6, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v6, v12}, Lcom/android/server/chimera/SystemRepository;->swapProcess(I)V

    add-int/lit8 v11, v11, 0x1

    .line 263
    sget-object v6, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v6, v12}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcRss(Lcom/android/server/chimera/SystemRepository;I)[J

    move-result-object v6

    .line 264
    aget-wide v7, v6, v15

    aget-wide v13, v13, v15

    sub-long/2addr v7, v13

    add-long/2addr v9, v7

    .line 267
    sget-object v13, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "Swapped pid:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " RssAnon:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v11

    aget-wide v11, v6, v18

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " VmSwap:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    aget-wide v11, v6, v11

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " SwappedKb:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v14, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x2

    mul-long/2addr v6, v9

    const-wide/16 v11, 0x3

    .line 272
    div-long/2addr v6, v11

    cmp-long v6, v6, v3

    if-ltz v6, :cond_16a

    .line 273
    sget-object v6, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipp swap as swap target satisfied:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v5

    goto :goto_18f

    :cond_16a
    move v11, v5

    goto :goto_188

    :cond_16c
    :goto_16c
    move-object/from16 v21, v5

    .line 236
    sget-object v5, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ProcessInfo data error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_188
    move-object/from16 v5, v21

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_5e

    .line 278
    :cond_18f
    :goto_18f
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v5

    .line 279
    sget-object v7, Lcom/android/server/chimera/SwapManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/SwapManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Swap complete, target:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " total swapped count:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size(Kb):"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ZRAMFree:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ZRAM used:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v5

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, v0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    invoke-static {v1}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmSwappedProcCnt(Lcom/android/server/chimera/SwapManager;)J

    move-result-wide v2

    int-to-long v4, v11

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fputmSwappedProcCnt(Lcom/android/server/chimera/SwapManager;J)V

    .line 285
    iget-object v1, v0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    invoke-static {v1}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmSwappedMemMb(Lcom/android/server/chimera/SwapManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v9, v4

    add-long/2addr v2, v9

    invoke-static {v1, v2, v3}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fputmSwappedMemMb(Lcom/android/server/chimera/SwapManager;J)V

    .line 286
    iget-object v0, v0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    invoke-static {v0}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmSwapActionCnt(Lcom/android/server/chimera/SwapManager;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fputmSwapActionCnt(Lcom/android/server/chimera/SwapManager;J)V

    :cond_1f2
    :goto_1f2
    return-void
.end method

.method public final isAppLaunch()Z
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/android/server/chimera/SwapManager$SwapHandler;->this$0:Lcom/android/server/chimera/SwapManager;

    invoke-static {p0}, Lcom/android/server/chimera/SwapManager;->-$$Nest$fgetmIsAppLaunch(Lcom/android/server/chimera/SwapManager;)Z

    move-result p0

    return p0
.end method
