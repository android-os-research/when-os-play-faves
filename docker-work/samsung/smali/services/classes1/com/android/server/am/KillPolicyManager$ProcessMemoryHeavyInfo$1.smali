.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;
.super Ljava/lang/Thread;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->gatherHeavyProcessThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public final synthetic val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final synthetic val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 5

    .line 3100
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iput-object p4, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "ActivityManager_KPM"

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    .line 3104
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "PMM gatherHeavyProcessThread"

    .line 3105
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager;->getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 3108
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v1, :cond_45

    iget-boolean v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    if-nez v1, :cond_45

    .line 3109
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    const/4 v2, 0x1

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v1, v2, v4}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 3110
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I

    move-result v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateProcessHeavyPssList(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V

    .line 3111
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateMemoryUsageByAdj(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V

    .line 3112
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V

    goto :goto_4c

    .line 3114
    :cond_45
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v1, v3, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 3117
    :goto_4c
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v1, :cond_66

    .line 3118
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I

    move-result v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateProcessHeavyPssList(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V

    .line 3119
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateMemoryUsageByAdj(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V

    .line 3122
    :cond_66
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_95

    .line 3123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessMemoryHeavy peakLmkdKillAdj : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mshowDebugHeavyProcess(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/util/ArrayList;)V

    .line 3125
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception v0

    .line 3128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3130
    :cond_95
    :goto_95
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {p0, v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fputisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Z)V

    return-void
.end method
