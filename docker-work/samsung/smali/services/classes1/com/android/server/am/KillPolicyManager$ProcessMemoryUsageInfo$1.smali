.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;
.super Ljava/lang/Thread;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final synthetic val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 4

    .line 3452
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    const-string v0, "ActivityManager_KPM"

    const-string v1, "KPM end cycle get pss"

    .line 3456
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 3458
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_15

    .line 3459
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 3461
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateProcAdjPss(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V

    .line 3463
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    if-eqz v1, :cond_2c

    .line 3464
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 3466
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    if-eqz v1, :cond_3f

    .line 3467
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    .line 3470
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    :goto_3f
    return-void
.end method
