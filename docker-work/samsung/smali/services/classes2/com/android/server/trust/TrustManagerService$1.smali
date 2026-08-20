.class public Lcom/android/server/trust/TrustManagerService$1;
.super Landroid/app/trust/ITrustManager$Stub;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public static synthetic $r8$lambda$6tGcP2kY724AQoFZTqhRnLDeAIc()V
    .registers 0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->lambda$reportKeyguardShowingChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pyl_KxHwG4qxp9w_YCR2VYIh6iI(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService$1;->lambda$setDeviceLockedForUser$2(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ko1M1aNN-RgLnwxL61pthLXH4dk(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService$1;->lambda$setDeviceLockedForUser$1(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpUser(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService$1;->dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/app/trust/ITrustManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$reportKeyguardShowingChanged$0()V
    .registers 0

    return-void
.end method

.method public static synthetic lambda$setDeviceLockedForUser$1(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 1741
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onDeviceLocked(I)V

    return-void
.end method

.method public static synthetic lambda$setDeviceLockedForUser$2(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 1743
    invoke-virtual {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onDeviceUnlocked(I)V

    return-void
.end method


# virtual methods
.method public clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .registers 5

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1781
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    monitor-enter p1

    .line 1782
    :try_start_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1783
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_35

    .line 1784
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xe

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    if-ltz p2, :cond_31

    .line 1787
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "except"

    .line 1788
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1789
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1791
    :cond_31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_35
    move-exception p0

    .line 1783
    :try_start_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1622
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "TrustManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1623
    :cond_f
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p0, "disabled because the system is in safe mode."

    .line 1624
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1627
    :cond_1d
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustAgentsCanRun(Lcom/android/server/trust/TrustManagerService;)Z

    move-result p1

    if-nez p1, :cond_2b

    const-string p0, "disabled because the third-party apps can\'t run yet."

    .line 1628
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1631
    :cond_2b
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    .line 1632
    iget-object p3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/trust/TrustManagerService$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/trust/TrustManagerService$1$1;-><init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V

    const-wide/16 p0, 0x5dc

    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dumpBool(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    :goto_7
    return-object p0
.end method

.method public final dumpHex(I)Ljava/lang/String;
    .registers 3

    .line 1695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpUser(Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V
    .registers 14

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1644
    iget-object v1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1645
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p2, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, " User \"%s\" (id=%d, flags=%#x)"

    .line 1644
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1646
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    if-nez v0, :cond_30

    const-string p0, "(managed profile)"

    .line 1647
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "   disabled because switching to this user is not possible."

    .line 1648
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_30
    if-eqz p3, :cond_37

    const-string p3, " (current)"

    .line 1652
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    :cond_37
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": trusted="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$maggregateIsTrusted(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1655
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", trustManaged="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$maggregateIsTrustManaged(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", deviceLocked="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1657
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", strongAuthRequired="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmStrongAuthTracker(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move-result-object v0

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1658
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    .line 1657
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$1;->dumpHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p3, "   Enabled agents:"

    .line 1660
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 1663
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmActiveAgents(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v9, v2

    :cond_d3
    :goto_d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1664
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v4, :cond_e6

    goto :goto_d3

    .line 1665
    :cond_e6
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v2

    const-string v4, "    "

    .line 1666
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     bound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isBound()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", managingTrust="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", trusted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/trust/TrustManagerService$1;->dumpBool(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz v2, :cond_190

    .line 1673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      message=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    :cond_190
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1bb

    .line 1676
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1677
    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->getScheduledRestartUptimeMillis()J

    move-result-wide v4

    .line 1678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1676
    invoke-static {v4, v5}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    .line 1679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      restartScheduledAt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    :cond_1bb
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    move v9, v3

    goto/16 :goto_d3

    :cond_1ca
    const-string p3, "   Events:"

    .line 1685
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    const/16 v6, 0x32

    iget v7, p2, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "    "

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/trust/TrustArchive;->dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V

    .line 1687
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final enforceListenerPermission()V
    .registers 3

    .line 1616
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.TRUST_LISTENER"

    const-string/jumbo v1, "register trust listener"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceReportPermission()V
    .registers 3

    .line 1611
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v1, "reporting trust events"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isAppOrDisplayOnAnyVirtualDevice(II)Z
    .registers 6

    .line 1532
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1536
    :cond_8
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmVirtualDeviceManager(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-nez v0, :cond_26

    .line 1537
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmVirtualDeviceManager(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;)V

    .line 1539
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmVirtualDeviceManager(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-nez v0, :cond_26

    return v1

    :cond_26
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-eq p2, v0, :cond_39

    if-eqz p2, :cond_46

    .line 1557
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmVirtualDeviceManager(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isDisplayOwnedByAnyVirtualDevice(I)Z

    move-result p0

    if-eqz p0, :cond_46

    return v2

    .line 1548
    :cond_39
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmVirtualDeviceManager(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result p0

    if-eqz p0, :cond_46

    return v2

    :cond_46
    return v1
.end method

.method public isDeviceLocked(II)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1567
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    move-result v1

    .line 1568
    invoke-virtual {p0, v1, p2}, Lcom/android/server/trust/TrustManagerService$1;->isAppOrDisplayOnAnyVirtualDevice(II)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1573
    :cond_c
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "isDeviceLocked"

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1578
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p2

    if-nez p2, :cond_30

    .line 1579
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mresolveProfileParent(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 1581
    :cond_30
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_3a

    .line 1583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1584
    throw p0
.end method

.method public isDeviceSecure(II)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1589
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    move-result v1

    .line 1590
    invoke-virtual {p0, v1, p2}, Lcom/android/server/trust/TrustManagerService$1;->isAppOrDisplayOnAnyVirtualDevice(II)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1596
    :cond_c
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "isDeviceSecure"

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1601
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p2

    if-nez p2, :cond_30

    .line 1602
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mresolveProfileParent(Lcom/android/server/trust/TrustManagerService;I)I

    move-result p1

    .line 1604
    :cond_30
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_3e

    .line 1606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1607
    throw p0
.end method

.method public isTrustUsuallyManaged(I)Z
    .registers 5

    .line 1758
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TRUST_LISTENER"

    const-string/jumbo v2, "query trust state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$misTrustUsuallyManagedInternal(Lcom/android/server/trust/TrustManagerService;I)Z

    move-result p0

    return p0
.end method

.method public registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 1514
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportEnabledTrustAgentsChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1495
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1496
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public reportKeyguardShowingChanged()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1503
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1504
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1508
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/trust/TrustManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/trust/TrustManagerService$1$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reportUnlockAttempt(ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1466
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1467
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportUnlockLockout(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1487
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1488
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportUserMayRequestUnlock(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1481
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportUserRequestedUnlock(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1474
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1475
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDeviceLockedForUser(IZ)V
    .registers 10

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1708
    :try_start_7
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1709
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_c2

    .line 1710
    :try_start_14
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1711
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_24

    .line 1712
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mhandleDualDARDeviceLockedChangedForUser(Lcom/android/server/trust/TrustManagerService;IZ)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_c2

    goto :goto_27

    :catchall_24
    move-exception p0

    .line 1711
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw p0

    .line 1715
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_be

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 1716
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1717
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_c2

    .line 1718
    :try_start_46
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1719
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_bb

    .line 1721
    :try_start_50
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1722
    invoke-static {v2, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mgetBiometricSids(Lcom/android/server/trust/TrustManagerService;I)[J

    move-result-object v2

    const/4 v3, 0x0

    .line 1721
    invoke-static {p2, p1, v3, v2}, Landroid/security/Authorization;->onLockScreenEvent(ZI[B[J)I
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_c2

    if-eqz p2, :cond_63

    .line 1726
    :try_start_5c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->notifyLockedProfile(I)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_c2

    .line 1730
    :catch_63
    :cond_63
    :try_start_63
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 1731
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    .line 1732
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1733
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v6, "android.permission.TRUST_LISTENER"

    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1737
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mgetPersonaManagerInternal(Lcom/android/server/trust/TrustManagerService;)Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_b2

    .line 1738
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mgetPersonaManagerInternal(Lcom/android/server/trust/TrustManagerService;)Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->onDeviceLockedChanged(I)V

    if-eqz p2, :cond_a3

    .line 1741
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mgetSdpManager(Lcom/android/server/trust/TrustManagerService;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/android/server/trust/TrustManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/trust/TrustManagerService$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_be

    .line 1743
    :cond_a3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mgetSdpManager(Lcom/android/server/trust/TrustManagerService;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/android/server/trust/TrustManagerService$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/trust/TrustManagerService$1$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_be

    :cond_b2
    const-string p0, "TrustManagerService"

    const-string/jumbo p1, "onDeviceLockedChanged() - Service is not yet ready..."

    .line 1747
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_63 .. :try_end_ba} :catchall_c2

    goto :goto_be

    :catchall_bb
    move-exception p0

    .line 1719
    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_c2

    .line 1752
    :cond_be
    :goto_be
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_c2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1753
    throw p0
.end method

.method public unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5

    .line 1765
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceReportPermission()V

    .line 1766
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    monitor-enter p2

    .line 1767
    :try_start_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1768
    monitor-exit p2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_42

    .line 1771
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsNonrenewableTrust()Z

    move-result p2

    .line 1772
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 1773
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1774
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_42
    move-exception p0

    .line 1768
    :try_start_43
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1519
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$1;->enforceListenerPermission()V

    .line 1520
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
