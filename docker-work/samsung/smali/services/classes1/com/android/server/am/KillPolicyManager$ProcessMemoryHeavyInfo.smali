.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessMemoryHeavyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;
    }
.end annotation


# instance fields
.field public final HEAVY_MEMORY_MAX_LIST:I

.field public final PROCESS_PSS:I

.field public final PROCESS_RSS:I

.field public final PROCESS_SWAP_PSS:I

.field public final THREAD_SLEEP_TIME:I

.field public final THRESHOLD_HEAVY_MEMORY_DETECT:I

.field public dumpHeavyProcessByAdj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public dumpHeavyProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fgsMemDumpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$MemDumpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public isThreadRunning:Z

.field public final isThreshold:Z

.field public mProcessMemoryDumpThread:Ljava/lang/Thread;

.field public memoryUsageByAdj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public peakLmkdKillAdj:I

.field public procMemDumpInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityManagerService$MemDumpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getProcessMemoryDumpInformation(ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->reportHeavyProcessTop5ByAdj()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugAdjMemory()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDebugHeavyProcess(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/util/ArrayList;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 3

    .line 2972
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xbb8

    .line 2973
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->THREAD_SLEEP_TIME:I

    const p1, 0x7d000

    .line 2974
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->THRESHOLD_HEAVY_MEMORY_DETECT:I

    const/4 p1, 0x5

    .line 2975
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->HEAVY_MEMORY_MAX_LIST:I

    const/4 p1, 0x0

    .line 2976
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreshold:Z

    .line 2977
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->PROCESS_PSS:I

    const/4 v0, 0x1

    .line 2978
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->PROCESS_SWAP_PSS:I

    const/4 v0, 0x2

    .line 2979
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->PROCESS_RSS:I

    .line 2980
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    const/16 p1, 0x3e9

    .line 2981
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 2983
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 2984
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 2985
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 2986
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 2987
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 2988
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clearHeavyList()V
    .registers 2

    const/16 v0, 0x3e9

    .line 3432
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 3433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 3434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 3435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 3436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    return-void
.end method

.method public dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3013
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_d

    const-string/jumbo p0, "null"

    return-object p0

    .line 3019
    :cond_d
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 3020
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    const-string p0, "empty"

    return-object p0

    .line 3024
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    goto :goto_5b

    :cond_56
    const-string v3, ","

    .line 3029
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    :goto_5b
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 3032
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3034
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3036
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3038
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3040
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3042
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3043
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3044
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3045
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3046
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3048
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3050
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    int-to-double v1, v1

    div-double/2addr v1, v5

    add-double/2addr v1, v7

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 3054
    :cond_da
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 6

    .line 3169
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 3170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3171
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3174
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3175
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 3176
    invoke-virtual {p0, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    goto :goto_52

    .line 3178
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_52

    .line 3180
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3183
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 3184
    invoke-virtual {p0, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    :cond_52
    :goto_52
    return-void
.end method

.method public final fillMemoryUsageByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;)V
    .registers 10

    .line 3156
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_24

    .line 3157
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [J

    iget-wide v5, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    aput-wide v5, v4, v3

    iget-wide v5, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    aput-wide v5, v4, v2

    iget-wide v2, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    aput-wide v2, v4, v1

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 3160
    :cond_24
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    .line 3161
    aget-wide v4, p0, v3

    iget-wide v6, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    add-long/2addr v4, v6

    aput-wide v4, p0, v3

    .line 3162
    aget-wide v3, p0, v2

    iget-wide v5, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v3, v5

    aput-wide v3, p0, v2

    .line 3163
    aget-wide v2, p0, v1

    iget-wide v4, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    add-long/2addr v2, v4

    aput-wide v2, p0, v1

    :goto_43
    return-void
.end method

.method public final fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V
    .registers 5

    if-eqz p1, :cond_42

    .line 3140
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 3141
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 3142
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 3143
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    goto :goto_42

    .line 3145
    :cond_2c
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    const/4 p0, 0x0

    .line 3146
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 3147
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_38

    goto :goto_42

    :catch_38
    move-exception p0

    .line 3151
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method

.method public gatherHeavyProcessThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 5

    .line 3100
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    const-string v1, "PMMProcessHeavyDumpThread"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->mProcessMemoryDumpThread:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 3133
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 3134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getProcessMemoryDumpInformation(ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .registers 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3275
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    const-wide v5, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_18

    move-object/from16 v0, p2

    .line 3276
    iget v0, v0, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    goto :goto_20

    .line 3278
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmTotalMem(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    :goto_20
    mul-int/lit16 v0, v0, 0x400

    int-to-double v9, v0

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-long v5, v9

    .line 3281
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    const-string v9, " mb"

    const-string v10, " mb, rss: "

    const-string v11, " mb, swap: "

    const-string v12, ", pss: "

    const-string v13, ", adj: "

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    const-string v15, "ActivityManager_KPM"

    const-wide/16 v18, 0x0

    if-eqz v0, :cond_198

    .line 3282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_198

    .line 3283
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3284
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    new-instance v8, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;

    invoke-direct {v8, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 3285
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_198

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3289
    iget-object v0, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    if-nez v0, :cond_7d

    goto :goto_6b

    .line 3300
    :cond_7d
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v20, v8

    const/4 v8, 0x5

    const/16 v21, 0x0

    if-ge v0, v8, :cond_9d

    .line 3301
    new-instance v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v0, v8}, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3302
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3303
    iput-object v14, v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    const/4 v8, 0x1

    move/from16 v22, v8

    move-object v8, v0

    goto :goto_a1

    :cond_9d
    move-object/from16 v8, v21

    const/16 v22, 0x0

    :goto_a1
    if-nez v22, :cond_ab

    if-eqz v2, :cond_a6

    goto :goto_ab

    :cond_a6
    move-wide/from16 v23, v3

    move-object/from16 v25, v7

    goto :goto_105

    :cond_ab
    :goto_ab
    move-wide/from16 v23, v3

    const/4 v3, 0x0

    .line 3313
    :goto_ae
    :try_start_ae
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b2} :catch_fb

    if-ge v3, v0, :cond_e3

    .line 3315
    :try_start_b4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_d1

    .line 3317
    iget-object v4, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;
    :try_end_be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b4 .. :try_end_be} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_be} :catch_fb

    move-object/from16 v25, v7

    :try_start_c0
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 3318
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v21
    :try_end_ce
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c0 .. :try_end_ce} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_ce} :catch_f3

    goto :goto_e5

    :catch_cf
    move-exception v0

    goto :goto_d7

    :cond_d1
    move-object/from16 v25, v7

    goto :goto_de

    :catch_d4
    move-exception v0

    move-object/from16 v25, v7

    .line 3323
    :goto_d7
    :try_start_d7
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    :goto_de
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v25

    goto :goto_ae

    :cond_e3
    move-object/from16 v25, v7

    :goto_e5
    move-object/from16 v0, v21

    if-eqz v22, :cond_f5

    .line 3329
    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 3330
    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    goto :goto_f5

    :catch_f3
    move-exception v0

    goto :goto_fe

    :cond_f5
    :goto_f5
    if-eqz v2, :cond_105

    .line 3333
    invoke-virtual {v1, v14, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_fa} :catch_f3

    goto :goto_105

    :catch_fb
    move-exception v0

    move-object/from16 v25, v7

    .line 3335
    :goto_fe
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :cond_105
    :goto_105
    invoke-virtual {v1, v14}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillMemoryUsageByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;)V

    .line 3341
    iget-object v0, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    const-string/jumbo v3, "vis"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    iget-object v0, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    const-string/jumbo v3, "percept"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    iget-object v0, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    const-string/jumbo v3, "perceptl"

    .line 3342
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    iget-object v0, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    const-string/jumbo v3, "perceptm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 3343
    :cond_134
    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    iget-wide v7, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v3, v7

    add-long v18, v18, v3

    .line 3344
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3347
    :cond_140
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_190

    .line 3348
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "getProcessMemoryDumpInformation() process : "

    .line 3349
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v3, v3

    div-double v3, v3, v16

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3352
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v3, v3

    div-double v3, v3, v16

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3353
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v3, v3

    div-double v3, v3, v16

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_190
    move-object/from16 v8, v20

    move-wide/from16 v3, v23

    move-object/from16 v7, v25

    goto/16 :goto_6b

    :cond_198
    move-wide/from16 v23, v3

    move-wide/from16 v3, v18

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fgsMemDumpList total size "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " kb, Threshold(30%) "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " kb"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_29f

    .line 3362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v23

    cmp-long v0, v3, v5

    if-ltz v0, :cond_22e

    const/4 v0, 0x0

    .line 3364
    :goto_1cc
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_22e

    .line 3365
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3366
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "fgsMemDumpList process : "

    .line 3367
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v5, v5

    div-double v5, v5, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v5, v5, v18

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3370
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v5, v5

    div-double v5, v5, v16

    add-double v5, v5, v18

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3371
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v5, v5

    div-double v5, v5, v16

    add-double v5, v5, v18

    double-to-int v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1cc

    :cond_22e
    if-eqz v2, :cond_286

    .line 3376
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_234
    if-ge v3, v2, :cond_286

    aget-object v4, v0, v3

    .line 3377
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "[ADJ Label] : "

    if-eqz v5, :cond_26c

    .line 3378
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - Top "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    invoke-virtual {v1, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    goto :goto_283

    .line 3382
    :cond_26c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - this ADJ not found"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_283
    add-int/lit8 v3, v3, 0x1

    goto :goto_234

    .line 3386
    :cond_286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProcessMemoryDumpInformation() elapsed time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29f
    return-void
.end method

.method public final getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;",
            ">;"
        }
    .end annotation

    .line 3058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    .line 3064
    :goto_b
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    array-length v3, v3

    if-ge v2, v3, :cond_92

    move v3, v1

    .line 3065
    :goto_11
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    array-length v4, v4

    if-ge v3, v4, :cond_8e

    move v4, v1

    .line 3066
    :goto_17
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    array-length v5, v5

    if-ge v4, v5, :cond_8b

    .line 3067
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    aget v5, v5, v2

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    .line 3068
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_88

    .line 3070
    new-instance v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    iget-object v9, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v8, v9}, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3071
    iput v2, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    .line 3072
    iput v3, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    .line 3073
    iput v4, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    long-to-int v6, v6

    .line 3074
    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 3075
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    .line 3076
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    .line 3077
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    .line 3078
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    .line 3079
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    .line 3080
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    .line 3081
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    .line 3082
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    .line 3083
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    .line 3084
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 3090
    :cond_92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_a5

    .line 3091
    new-instance p1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p1, p0}, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    const/4 p0, -0x1

    .line 3092
    iput p0, p1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 3093
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a5
    return-object v0
.end method

.method public final reportHeavyProcessTop5ByAdj()V
    .registers 25

    move-object/from16 v0, p0

    const-string v1, " "

    .line 3209
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    const-string v3, "ActivityManager_KPM"

    if-nez v2, :cond_10

    const-string v0, "dumpHeavyProcessByAdj is null"

    .line 3210
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3212
    :cond_10
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1c

    const-string v0, "dumpHeavyProcessByAdj is 0 size"

    .line 3213
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3217
    :cond_1c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 3221
    :try_start_2b
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_2f
    if-ge v9, v7, :cond_167

    aget-object v10, v6, v9

    .line 3222
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_154

    .line 3223
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_154

    .line 3224
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_154

    .line 3225
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "TF"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3226
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    .line 3227
    :goto_66
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_149

    .line 3228
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 3229
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 3230
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 3231
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v7

    .line 3232
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v18, v11

    .line 3233
    iget-object v11, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v11, :cond_a4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v19, v10

    move/from16 v23, v11

    move v11, v9

    move/from16 v9, v23

    goto :goto_b1

    :cond_a4
    move v11, v9

    move-object/from16 v19, v10

    iget-wide v9, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_b1
    add-int v10, v15, v8

    add-int/2addr v10, v6

    add-int/2addr v10, v7

    add-int/2addr v10, v9

    move/from16 v20, v11

    const/16 v11, 0x7e4

    if-le v10, v11, :cond_f8

    .line 3236
    sget-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v10, :cond_ef

    .line 3237
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v11, "reportHeavyProcessTop5ByAdj "

    .line 3238
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3239
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3240
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3241
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3242
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3243
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    :cond_ef
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    .line 3246
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v6

    .line 3249
    :cond_f8
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3250
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v6, :cond_107

    .line 3251
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_110

    .line 3253
    :cond_107
    iget-wide v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3255
    :goto_110
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v10, v10

    div-double/2addr v10, v8

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v21

    double-to-int v7, v10

    .line 3256
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v10, v10

    div-double/2addr v10, v8

    add-double v10, v10, v21

    double-to-int v7, v10

    .line 3257
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v17

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    move/from16 v9, v20

    goto/16 :goto_66

    :cond_149
    move-object/from16 v17, v6

    move/from16 v16, v7

    move/from16 v20, v9

    move-object v6, v10

    .line 3259
    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_153
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_153} :catch_162

    goto :goto_15a

    :cond_154
    move-object/from16 v17, v6

    move/from16 v16, v7

    move/from16 v20, v9

    :goto_15a
    add-int/lit8 v9, v20, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v17

    goto/16 :goto_2f

    :catch_162
    const-string v1, "failed to create the KPUT"

    .line 3264
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_167
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    return-void
.end method

.method public final sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TYPE"

    const/4 v2, 0x2

    .line 3193
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "UPTM"

    .line 3194
    invoke-virtual {p1, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3196
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    const-string p1, "ActivityManager_KPM"

    const-string p2, "failed to create the KPUT"

    .line 3199
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 3202
    :goto_23
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string p2, "KPUT"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPeakLmkdKillLevel(I)V
    .registers 3

    .line 2993
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    if-le v0, p1, :cond_a

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_a

    .line 2994
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    :cond_a
    return-void
.end method

.method public final showDebugAdjMemory()V
    .registers 16

    .line 3416
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_81

    aget-object v4, v0, v3

    .line 3417
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "[ADJ Label] : "

    const-string v7, "ActivityManager_KPM"

    if-eqz v5, :cond_67

    .line 3418
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 3419
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3420
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - Pss: "

    .line 3421
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v5, v2

    long-to-double v9, v9

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    div-double/2addr v9, v11

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v13

    double-to-int v4, v9

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, swapPss: "

    .line 3422
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v9, v5, v4

    long-to-double v9, v9

    div-double/2addr v9, v11

    add-double/2addr v9, v13

    double-to-int v4, v9

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, Rss: "

    .line 3423
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-wide v4, v5, v4

    long-to-double v4, v4

    div-double/2addr v4, v11

    add-double/2addr v4, v13

    double-to-int v4, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3424
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 3426
    :cond_67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - this ADJ not found"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_81
    return-void
.end method

.method public final showDebugHeavyProcess(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ActivityManager_KPM"

    if-eqz p1, :cond_aa

    .line 3391
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_aa

    const/4 v1, 0x0

    .line 3392
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    .line 3393
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 3394
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "showDebugHeavyProcess() process : "

    .line 3395
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ver: "

    .line 3396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3397
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_43

    const-string v4, ", PackageName: "

    .line 3398
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    :cond_43
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v4, :cond_51

    const-string v4, ", PackageVer: "

    .line 3401
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    const-string v4, ", adj: "

    .line 3403
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pss: "

    .line 3404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, swap: "

    .line 3405
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, rss: "

    .line 3406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, "

    .line 3407
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_aa
    const-string p0, "ProcessMemoryHeavy not found"

    .line 3411
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    return-void
.end method
