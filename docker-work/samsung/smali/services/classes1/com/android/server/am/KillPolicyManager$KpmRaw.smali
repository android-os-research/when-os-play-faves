.class public Lcom/android/server/am/KillPolicyManager$KpmRaw;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KpmRaw"
.end annotation


# static fields
.field public static final TINY_CYCLE_RESOULTION:I = 0x5

.field public static final TINY_NXST_HISTORY_ARRAY_SIZE:I = 0xa


# instance fields
.field public accMem:I

.field public accSwap:I

.field public appCnt:I

.field public avlMem:I

.field public cachedActTotalCnt:I

.field public cachedClientKillCount:I

.field public cachedEmptyKillCount:I

.field public cachedNormalKillCount:I

.field public cachedTotalCnt:I

.field public chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

.field public coldCount:I

.field public createTime:J

.field public curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public currentCachedActCnt:I

.field public cycleNum:I

.field public dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
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

.field public hotCount:I

.field public hotRatio:I

.field public isDailyBigdata:Z

.field public isGetPssDump:Z

.field public isStateChanged:Z

.field public isWarmUpCycle:Z

.field public killedPackageCount:I

.field public killedPackageRatio:I

.field public lastUpdateTime:J

.field public launchedAndKilledPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public launchedPackageCount:I

.field public lmkCnt:J

.field public lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

.field public lmkdCric:J

.field public lmkdCurrentCount:[J

.field public lmkdKilledProcessInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lmkdMed:J

.field public lmkdPrevCount:[J

.field public lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public lmkdStateCount:[J

.field public maxMem:I

.field public maxSwap:I

.field public minMem:I

.field public minSwap:I

.field public nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public peakLmkdKillAdj:I

.field public pickedActTotalCnt:I

.field public pickedTotalCnt:I

.field public policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public prKilledRatio:I

.field public prevLmkCnt:J

.field public prevLmkdCric:J

.field public prevLmkdMed:J

.field public prevTinyCachedNormalKillCount:I

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public procsAdjPss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public psiCpuMax:D

.field public psiCpuSum:D

.field public psiIoMax:D

.field public psiIoSum:D

.field public psiMemoryMax:D

.field public psiMemorySum:D

.field public resetStatus:I

.field public seedbedTotalCnt:I

.field public svKilledRatio:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public timeStamp:Ljava/lang/String;

.field public tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

.field public uptimeMillis:J

.field public warmCount:I


# direct methods
.method public static bridge synthetic -$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->checkMemCriticalLowTH()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpLmkdCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpLmkdCount()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->markKilledPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMemoryUsageByAdj(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemoryUsageByAdj(Ljava/util/HashMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcAdjPss(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcAdjPss(Ljava/util/HashMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcessHeavyPssList(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessHeavyPssList(Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .registers 9

    .line 2050
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 2037
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 2038
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2048
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2051
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    const p2, 0x7fffffff

    .line 2052
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    const/4 v0, 0x0

    .line 2053
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    const/high16 v1, -0x80000000

    .line 2054
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 2055
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 2056
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 2057
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 2059
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 2060
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 2061
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 2062
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 2065
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 2066
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 2067
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 2068
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 2069
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 2070
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 2073
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 2074
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 2075
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    .line 2076
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    .line 2077
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 2078
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    const-wide/16 v1, 0x0

    .line 2080
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 2081
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 2082
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 2083
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 2084
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 2085
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->initPrevKillInfo()V

    .line 2087
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmCurrentState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2088
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2089
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPolicyState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2090
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 2091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    .line 2092
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    const/4 p2, 0x0

    .line 2093
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 2094
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 2095
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 2096
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 2097
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    const/16 v3, 0x3e9

    .line 2098
    iput v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 2100
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 2102
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 2103
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 2104
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    .line 2105
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    const-wide/16 v3, 0x0

    .line 2107
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 2108
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 2109
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 2111
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 2112
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 2113
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 2115
    new-instance v3, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v3}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 2117
    sget-object v3, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    move v3, v0

    .line 2118
    :goto_b8
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    array-length v5, v4

    if-ge v3, v5, :cond_c2

    .line 2119
    aput-wide v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b8

    :cond_c2
    move v3, v0

    .line 2120
    :goto_c3
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    array-length v5, v4

    if-ge v3, v5, :cond_cd

    .line 2121
    aput-wide v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    .line 2122
    :cond_cd
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->initLmkdPrevCount()V

    .line 2124
    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLmkdReader(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;-><init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 2125
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 2127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 2128
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 2129
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 2130
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 2131
    :goto_ef
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    array-length p2, p1

    if-ge v0, p2, :cond_fb

    .line 2132
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    :cond_fb
    return-void
.end method


# virtual methods
.method public final addLaunchedPackage(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_45

    .line 2437
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 2438
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-ne p0, v0, :cond_45

    .line 2440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add addLaunchedPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cur count : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 2441
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    .line 2440
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public calcHotLaunchRatio(III)I
    .registers 6

    add-int/2addr p2, p1

    add-int/2addr p2, p3

    if-lez p2, :cond_f

    int-to-double p0, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    int-to-double p2, p2

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, p2

    double-to-int p0, p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public calcKillRatio(II)I
    .registers 7

    if-lez p1, :cond_d

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final checkMemCriticalLowTH()V
    .registers 7

    .line 2303
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 2306
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v2, "ActivityManager_KPM"

    if-eqz v1, :cond_2b

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMemCriticalLowTH() killRatio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%, killedPackageRatio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_2b
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetMEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH()I

    move-result v1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_4e

    const/4 v0, 0x1

    .line 2313
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetMEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-static {v1, v4}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$misCriticalKilledManyPakages(Lcom/android/server/am/KillPolicyManager;I)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2315
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_4e

    const-string v0, "checkMemCriticalLowTH() killRatio is over thrshold but not occurred many apps, so result not accepted"

    .line 2316
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_4d
    move v3, v0

    .line 2322
    :cond_4e
    :goto_4e
    iput v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 2323
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_6a

    .line 2324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMemCriticalLowTH() memory critical status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_6a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_8b

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isDetectCritcialLowEnabled()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v0, :cond_8b

    .line 2328
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0, v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportMemCriticalLow(Lcom/android/server/am/KillPolicyManager;I)V

    .line 2331
    :cond_8b
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetmIsChimeraPmmKillTriggered()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v0, v1, :cond_9b

    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-ne v0, v1, :cond_cb

    .line 2332
    :cond_9b
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->calculateMemoryFlood()V

    .line 2334
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->isRequiredKernelReset()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 2335
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string v0, "KERNEL"

    invoke-static {p0, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    goto :goto_cb

    .line 2337
    :cond_b8
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->isRequiredPlatformReset()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 2338
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string v0, "PLATFORM"

    invoke-static {p0, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    return-void
.end method

.method public final dumpLmkdCount()V
    .registers 13

    .line 2282
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_5c

    aget-object v4, v0, v3

    .line 2283
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 2285
    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-wide v10, v5, v10

    sub-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 2286
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v5, :cond_59

    .line 2287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "kills at or below oom_adj "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager_KPM"

    .line 2287
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_5c
    return-void
.end method

.method public getElapsedTimeMin()J
    .registers 5

    .line 2360
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getKilledPackageCountOfAdj(I)I
    .registers 6

    .line 2465
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2466
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_28
    return v1
.end method

.method public getKpmData(I)Ljava/lang/StringBuilder;
    .registers 10

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " "

    .line 2498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    if-ne v2, p1, :cond_11

    return-object v0

    .line 2502
    :cond_11
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-nez p1, :cond_1b

    const-string p0, "appCnt is 0"

    .line 2503
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    .line 2506
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 2507
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2510
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    int-to-double v2, v2

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2512
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2513
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    int-to-double v2, v2

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2515
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2516
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2518
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2520
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2522
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2524
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2526
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2528
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2530
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2532
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2534
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2536
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2538
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2540
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2542
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2544
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2546
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2548
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2550
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2552
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2556
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2558
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2560
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2562
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2564
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",["

    .line 2566
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    move v3, p1

    .line 2568
    :goto_15c
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    array-length v4, v4

    if-ge v3, v4, :cond_16e

    .line 2569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    aget-wide v4, v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_15c

    :cond_16e
    const-string v3, "],["

    .line 2572
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    aget-wide v4, v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v4, p1

    .line 2574
    :goto_17b
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    array-length v5, v5

    if-ge v4, v5, :cond_18d

    .line 2575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    aget-wide v5, v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_17b

    .line 2578
    :cond_18d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2580
    :goto_19b
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    array-length v2, v2

    if-ge p1, v2, :cond_1b1

    .line 2581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_19b

    :cond_1b1
    const-string p1, "],"

    .line 2584
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getKpmHeavyPssData(I)Ljava/lang/StringBuilder;
    .registers 20

    move-object/from16 v0, p0

    .line 2590
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " "

    .line 2591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2593
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    if-nez v3, :cond_1e

    const-string v0, ",didn\'t happen Previous App Kill by LMKD"

    .line 2594
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_235

    :cond_1e
    const-string v3, ","

    .line 2596
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2598
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    const-string v4, ", [null]"

    const-string v5, "]"

    const-string v6, ",["

    if-eqz v3, :cond_f6

    .line 2599
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmTotalSwap(Lcom/android/server/am/KillPolicyManager;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2610
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslShmemUsage:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslReclaimed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->system:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslSharedMem:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2618
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 2620
    :cond_f6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    :goto_f9
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    const/4 v7, 0x0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    if-eqz v3, :cond_188

    .line 2624
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v4, v3

    move v12, v7

    :goto_107
    if-ge v12, v4, :cond_184

    aget-object v13, v3, v12

    .line 2626
    iget-object v14, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const-string/jumbo v15, "}"

    const-string/jumbo v8, "{"

    if-eqz v14, :cond_16b

    .line 2627
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 2628
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v13, v9, v7

    long-to-double v13, v13

    div-double/2addr v13, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v16

    double-to-int v8, v13

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    aget-wide v13, v9, v8

    long-to-double v13, v13

    div-double/2addr v13, v10

    add-double v13, v13, v16

    double-to-int v8, v13

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    aget-wide v8, v9, v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    add-double v8, v8, v16

    double-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_181

    .line 2632
    :cond_16b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2633
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_181
    add-int/lit8 v12, v12, 0x1

    goto :goto_107

    .line 2637
    :cond_184
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18b

    .line 2639
    :cond_188
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    :goto_18b
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_235

    .line 2643
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 2644
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ver: "

    .line 2645
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2646
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "null"

    const-string v8, ", PackageName: "

    if-eqz v3, :cond_1c1

    .line 2647
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 2649
    :cond_1c1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    :goto_1c7
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    const-string v8, ", PackageVer: "

    if-eqz v3, :cond_1d6

    .line 2651
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1dc

    .line 2653
    :cond_1d6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1dc
    const-string v3, ", adj: "

    .line 2654
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pss: "

    .line 2655
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v8

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, swap: "

    .line 2656
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    add-double/2addr v3, v8

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, rss: "

    .line 2657
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    add-double/2addr v3, v8

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, "

    .line 2658
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18b

    :cond_235
    :goto_235
    return-object v1
.end method

.method public final getLaunchedPackageCount()I
    .registers 1

    .line 2460
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final initLmkdPrevCount()V
    .registers 10

    .line 2273
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_24

    aget-object v4, v0, v3

    .line 2274
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 2276
    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_24
    return-void
.end method

.method public initPrevKillInfo()V
    .registers 5

    .line 2223
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v0, :cond_13

    .line 2224
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCricCountInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 2225
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCountInfo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 2227
    :cond_13
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKCountInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    return-void
.end method

.method public final markKilledPackage(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_52

    .line 2447
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2449
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p2, :cond_52

    .line 2450
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2451
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_52

    .line 2452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markKilledPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adj "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", killed adj : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 2453
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    .line 2452
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method public updateBigdataInfo()V
    .registers 3

    .line 2264
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    .line 2265
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2266
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 2267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 2268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    return-void
.end method

.method public updateCycleInfo()V
    .registers 5

    .line 2243
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    .line 2245
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPolicyMetric(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    .line 2246
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    if-eqz v0, :cond_39

    .line 2248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmKpmStartTime(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_30

    .line 2250
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_41

    .line 2252
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmCurrentState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_41

    .line 2255
    :cond_39
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2258
    :cond_41
    :goto_41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 2259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 2260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    return-void
.end method

.method public final updateHotLaunchRatio()V
    .registers 4

    .line 2432
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcHotLaunchRatio(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    return-void
.end method

.method public updateKillInfo()V
    .registers 7

    .line 2232
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v0, :cond_17

    .line 2233
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCricCountInfo()J

    move-result-wide v0

    .line 2234
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCountInfo()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 2236
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 2237
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 2239
    :cond_17
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKCountInfo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    return-void
.end method

.method public final updateLaunchState(Ljava/lang/String;I)V
    .registers 6

    const-string v0, ")"

    const-string v1, ""

    const/16 v2, 0x9

    if-ne p2, v2, :cond_2a

    .line 2414
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 2415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HOT("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_74

    :cond_2a
    const/16 v2, 0x8

    if-ne p2, v2, :cond_50

    .line 2417
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 2418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WARM("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_74

    :cond_50
    const/4 v2, 0x7

    if-ne p2, v2, :cond_74

    .line 2420
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 2421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "COLD("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2424
    :cond_74
    :goto_74
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateHotLaunchRatio()V

    .line 2426
    sget-boolean p2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p2, :cond_a2

    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p2

    if-ne p0, p2, :cond_a2

    .line 2427
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateLaunchState() pkg "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    return-void
.end method

.method public final updateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$LmkdState;)V
    .registers 6

    .line 2295
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 2296
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 2297
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method

.method public updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .registers 5

    .line 2182
    iget v0, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    iget v1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    add-int/2addr v0, v1

    .line 2183
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmTotalSwap(Lcom/android/server/am/KillPolicyManager;)I

    move-result v1

    iget v2, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    sub-int/2addr v1, v2

    .line 2185
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 2186
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 2187
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    iget p1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 2189
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    if-le p1, v0, :cond_25

    .line 2190
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 2192
    :cond_25
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    if-ge p1, v0, :cond_2b

    .line 2193
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 2195
    :cond_2b
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    if-le p1, v1, :cond_31

    .line 2196
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 2198
    :cond_31
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    if-ge p1, v1, :cond_37

    .line 2199
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    :cond_37
    return-void
.end method

.method public final updateMemoryUsageByAdj(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .line 2493
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    return-void
.end method

.method public final updateProcAdjPss(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .line 2481
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    return-void
.end method

.method public final updateProcessHeavyPssList(Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;",
            ">;",
            "Lcom/android/server/am/KillPolicyManager$ProcMemInfo;",
            "I)V"
        }
    .end annotation

    .line 2486
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 2487
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 2488
    iput p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 2489
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    return-void
.end method

.method public updateProcessStateInfo(Ljava/lang/String;I)V
    .registers 10

    .line 2136
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 2137
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->addLaunchedPackage(Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLmkdReader(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getLmkdPreviousAndBServiceKillCount(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 2139
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateLaunchState(Ljava/lang/String;I)V

    .line 2140
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawProcessCount()V

    .line 2141
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawResetStatus()V

    .line 2142
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_110

    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p1

    if-ne p0, p1, :cond_110

    .line 2143
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo p2, "updateProcessStateInfo() appCnt - "

    .line 2144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " launch total - "

    .line 2146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " hot launch("

    .line 2148
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%) hot - "

    .line 2150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " warm - "

    .line 2152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cold - "

    .line 2154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager_KPM"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 2157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "cur previousKillRatio = "

    .line 2158
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, serviceKillRatio = "

    .line 2160
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, killedPackageRatio = "

    .line 2162
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 2164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo p2, "updateRawProcessCount() Average Cached (T:"

    .line 2167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    int-to-double v1, p2

    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v3, p2

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/A:"

    .line 2169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    int-to-double v1, v1

    iget v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), Picked (T:"

    .line 2171
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    int-to-double v1, v1

    iget v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2173
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    int-to-double v1, p2

    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, p2

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), Seed "

    .line 2175
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    int-to-double v1, p2

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, p0

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    return-void
.end method

.method public updatePsiInfo(DDD)V
    .registers 9

    .line 2203
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 2204
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 2205
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    add-double/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 2207
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_17

    .line 2208
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 2210
    :cond_17
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_1f

    .line 2211
    iput-wide p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 2213
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    cmpg-double v0, v0, p5

    if-gez v0, :cond_27

    .line 2214
    iput-wide p5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 2217
    :cond_27
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-ne p0, v0, :cond_59

    .line 2218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Psi info cpu : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", memory : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", io : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method

.method public final updateRawProcessCount()V
    .registers 12

    const-string v0, "ActivityManager_KPM"

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 2368
    :goto_8
    :try_start_8
    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v7}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_6e

    if-ge v1, v7, :cond_76

    .line 2370
    :try_start_1a
    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v7}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_6b

    .line 2372
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    const/16 v9, 0x384

    if-lt v8, v9, :cond_3e

    const/16 v9, 0x3e7

    if-gt v8, v9, :cond_3e

    add-int/lit8 v2, v2, 0x1

    :cond_3e
    const/16 v9, 0x352

    if-ne v8, v9, :cond_44

    add-int/lit8 v3, v3, 0x1

    :cond_44
    const/16 v10, 0x35c

    if-ne v8, v10, :cond_4a

    add-int/lit8 v4, v4, 0x1

    .line 2382
    :cond_4a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    if-nez v10, :cond_51

    goto :goto_6b

    .line 2385
    :cond_51
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_57} :catch_63
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_57} :catch_6e

    const/16 v10, 0x10

    if-ne v7, v10, :cond_6b

    if-ne v8, v9, :cond_60

    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    :catch_63
    move-exception v7

    .line 2394
    :try_start_64
    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_6e

    :cond_6b
    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_6e
    move-exception v1

    .line 2399
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_76
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 2403
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    .line 2404
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 2405
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 2406
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 2407
    iput v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    return-void
.end method

.method public final updateRawResetStatus()V
    .registers 4

    .line 2473
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcKillRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 2474
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcKillRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 2475
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getLaunchedPackageCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    const/16 v0, 0x2bc

    .line 2476
    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKilledPackageCountOfAdj(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 2477
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-static {v1, v0, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mcalcKilledPackageRatio(Lcom/android/server/am/KillPolicyManager;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    return-void
.end method
