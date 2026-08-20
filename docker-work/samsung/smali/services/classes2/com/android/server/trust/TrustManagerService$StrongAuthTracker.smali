.class public Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field public mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V
    .registers 3

    .line 2007
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2008
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 2005
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public allowTrustFromUnlock(I)V
    .registers 5

    if-ltz p1, :cond_4a

    .line 2062
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v0

    .line 2063
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2065
    sget-boolean v1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v1, :cond_3e

    .line 2066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowTrustFromUnlock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") -> trustAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " agentsCanRun="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrustManagerService"

    .line 2066
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v1

    if-eq v1, v0, :cond_49

    .line 2072
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    :cond_49
    return-void

    .line 2060
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId must be a valid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canAgentsRunForUser(I)Z
    .registers 3

    .line 2046
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2047
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V
    .registers 3

    if-eqz p1, :cond_15

    .line 2039
    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 2040
    invoke-virtual {p1, v0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 2041
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_15
    return-void
.end method

.method public onStrongAuthRequiredChanged(I)V
    .registers 4

    .line 2013
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2015
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStrongAuthRequiredChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") -> trustAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " agentsCanRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustManagerService"

    .line 2016
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 2023
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 2024
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V

    .line 2025
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 2026
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V

    .line 2027
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmIdleTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 2028
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V

    .line 2031
    :cond_6f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 2035
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    return-void
.end method
