.class public Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;
.super Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GPUMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KGSLPlugin"
.end annotation


# instance fields
.field public final COMMAND_TYPE_BG:I

.field public final COMMAND_TYPE_FG:I

.field public final KGSL_PROC_PATH:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public mPerf:Landroid/util/BoostFramework;

.field public self:Lcom/android/server/am/GPUMemoryReclaimer;

.field public final synthetic this$0:Lcom/android/server/am/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;)V
    .registers 6

    .line 2883
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->this$0:Lcom/android/server/am/GPUMemoryReclaimer;

    const-string v0, "KGSL"

    .line 2884
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;Ljava/lang/String;)V

    .line 2874
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMR "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2878
    iput v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->COMMAND_TYPE_BG:I

    const/4 v1, 0x2

    .line 2879
    iput v1, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->COMMAND_TYPE_FG:I

    const-string v1, "/sys/class/kgsl/kgsl/proc"

    .line 2881
    iput-object v1, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->KGSL_PROC_PATH:Ljava/lang/String;

    .line 2885
    iput-object p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    .line 2886
    new-instance p2, Landroid/util/BoostFramework;

    invoke-direct {p2}, Landroid/util/BoostFramework;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "vendor.perf.bgt.enable"

    const-string v2, "false"

    .line 2889
    invoke-virtual {p2, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2888
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 2891
    iput-boolean v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    goto :goto_4e

    :cond_45
    const/4 p2, 0x0

    .line 2893
    iput-object p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo p0, "perf-hal bgt disabled"

    .line 2894
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-void
.end method


# virtual methods
.method public calculateReclaimed([J)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x2

    .line 2945
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public calculateResident([J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2938
    aget-wide v0, p1, p0

    const/4 p0, 0x1

    aget-wide v2, p1, p0

    add-long/2addr v0, v2

    const/4 p0, 0x2

    aget-wide p0, p1, p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public getMeminfoRaw(I)[J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/kgsl/kgsl/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gpumem_mapped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gpumem_unmapped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/gpumem_reclaimed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [J

    .line 2926
    iget-object v3, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v3}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    move-result-object v3

    .line 2927
    invoke-virtual {v3, v0}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x0

    aput-wide v3, v2, v0

    iget-object v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    move-result-object v0

    .line 2928
    invoke-virtual {v0, v1}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    move-result-object p0

    .line 2929
    invoke-virtual {p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide p0

    const/4 v0, 0x2

    aput-wide p0, v2, v0

    return-object v2
.end method

.method public getReclaimableTasks()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;",
            ">;"
        }
    .end annotation

    .line 2952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2955
    :try_start_5
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/kgsl/kgsl/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 2957
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_53

    .line 2958
    aget-object v3, v1, v2

    .line 2959
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2960
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2961
    new-instance v4, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;

    iget-object v5, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->this$0:Lcom/android/server/am/GPUMemoryReclaimer;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, p0, v6}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;ILcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask-IA;)V

    .line 2962
    invoke-virtual {v4}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_35} :catch_38

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :catch_38
    move-exception v1

    .line 2966
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access /sys/class/kgsl/kgsl/proc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-object v0
.end method

.method public swapIn(I)I
    .registers 5

    .line 2912
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/high16 v1, 0x42820000    # 65.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 p1, 0xa

    .line 2915
    invoke-virtual {p0, p1, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    return v2
.end method

.method public swapOut(I)I
    .registers 5

    .line 2903
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    const v1, 0x42824000    # 65.125f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 p1, 0xa

    .line 2906
    invoke-virtual {p0, p1, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    return v2
.end method
