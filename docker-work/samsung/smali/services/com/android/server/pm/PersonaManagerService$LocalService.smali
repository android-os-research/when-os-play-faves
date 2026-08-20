.class public final Lcom/android/server/pm/PersonaManagerService$LocalService;
.super Lcom/samsung/android/knox/PersonaManagerInternal;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .line 544
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Lcom/samsung/android/knox/PersonaManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method


# virtual methods
.method public doKeyguardTimeout()V
    .registers 4

    const-string v0, "PersonaManagerService"

    const-string v1, "doKeyguardTimeout"

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 583
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;
    .registers 3

    .line 622
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getAdminComponentNameFromEdm(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getECName(I)Ljava/lang/String;
    .registers 2

    .line 627
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getECName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isKnoxId(I)Z
    .registers 2

    .line 547
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public onDeviceLockedChanged(I)V
    .registers 7

    .line 588
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v1, "onDeviceLockedChanged"

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$sfgetDEVICE_SUPPORT_KNOX()Z

    move-result v0

    if-nez v0, :cond_16

    const-string p0, "PersonaManagerService"

    const-string p1, "Knox not supported - onDeviceLockedChanged"

    .line 590
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 594
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 597
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 598
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_99

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eq v0, v1, :cond_98

    const-string v2, "PersonaManagerService"

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container lock state changed prevLock["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] lockState["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_65

    .line 607
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    goto :goto_83

    .line 609
    :cond_65
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 610
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, p1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    goto :goto_83

    :cond_7c
    const-string v1, "PersonaManagerService"

    const-string v2, "container is unlocked when user is not running. ignore"

    .line 612
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_83
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    monitor-enter v1

    .line 615
    :try_start_8a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 616
    monitor-exit v1

    goto :goto_98

    :catchall_95
    move-exception p0

    monitor-exit v1
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_95

    throw p0

    :cond_98
    :goto_98
    return-void

    :catchall_99
    move-exception p0

    .line 598
    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 9

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    .line 556
    :cond_12
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v1

    .line 557
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPwdChangeRequested(I)Z

    move-result v3

    .line 558
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$misBiometricsEnabledAfterFota(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    const-string v5, "PersonaManagerService"

    const/4 v6, 0x1

    if-nez v1, :cond_87

    if-nez v3, :cond_87

    if-eqz v4, :cond_2a

    goto :goto_87

    .line 565
    :cond_2a
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 566
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object p1

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    .line 567
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object p0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DeviceSecure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_71

    if-eqz p0, :cond_71

    move v2, v6

    :cond_71
    return v2

    .line 572
    :cond_72
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetActivityManagerInternal(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result p1

    if-eqz p1, :cond_80

    return v6

    .line 575
    :cond_80
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$misOneLockOngoing(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result p0

    return p0

    .line 560
    :cond_87
    :goto_87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "needSetupCredential : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isPwdChangeRequested : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isBiometricsEnabledAfterFota : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method
