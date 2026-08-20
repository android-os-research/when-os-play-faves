.class public Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;
.super Landroid/app/smartspace/ISmartspaceManager$Stub;
.source "SmartspaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartspace/SmartspaceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartspaceManagerStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartspace/SmartspaceManagerService;


# direct methods
.method public static synthetic $r8$lambda$2pHTrDxeWPdELMI28xUuHMKFW-g(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->lambda$registerSmartspaceUpdates$3(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMjb7wUJqZsTRIBNt9GUkAMRPFw(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->lambda$createSmartspaceSession$0(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JP8v0eAW_oMNJ5Mpziaxcg5waTg(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->lambda$destroySmartspaceSession$5(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZJiKWUH5LPM3FKO3W37zrHti8p4(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->lambda$unregisterSmartspaceUpdates$4(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGOm32eVGBtq9xmkprj3RfdfG5w(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->lambda$notifySmartspaceEvent$1(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yjbQdqp-0DkbTj0vr4n3QLfTuP4(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->lambda$requestSmartspaceUpdate$2(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-direct {p0}, Landroid/app/smartspace/ISmartspaceManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V

    return-void
.end method

.method public static synthetic lambda$createSmartspaceSession$0(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 4

    .line 110
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$destroySmartspaceSession$5(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 2

    .line 143
    invoke-virtual {p1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic lambda$notifySmartspaceEvent$1(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 3

    .line 117
    invoke-virtual {p2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->notifySmartspaceEventLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void
.end method

.method public static synthetic lambda$registerSmartspaceUpdates$3(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 3

    .line 130
    invoke-virtual {p2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->registerSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public static synthetic lambda$requestSmartspaceUpdate$2(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 2

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->requestSmartspaceUpdateLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic lambda$unregisterSmartspaceUpdates$4(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .registers 3

    .line 137
    invoke-virtual {p2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->unregisterSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method


# virtual methods
.method public createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .registers 5

    .line 109
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    const-string p1, "createSmartspaceSession"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    .line 142
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda5;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    const-string v1, "destroySmartspaceSession"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .registers 4

    .line 116
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    const-string p2, "notifySmartspaceEvent"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 150
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 151
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 4

    .line 129
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    const-string/jumbo p2, "registerSmartspaceUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    .line 122
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    const-string/jumbo v1, "requestSmartspaceUpdate"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/smartspace/SmartspacePerUserService;",
            ">;)V"
        }
    .end annotation

    .line 157
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 159
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceSessionId;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 158
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 165
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_SMARTSPACE"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 167
    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v0}, Lcom/android/server/smartspace/SmartspaceManagerService;->access$000(Lcom/android/server/smartspace/SmartspaceManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-static {v0}, Lcom/android/server/smartspace/SmartspaceManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/smartspace/SmartspaceManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_82

    .line 170
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: Cannot call "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {}, Lcom/android/server/smartspace/SmartspaceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_82
    :goto_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    :try_start_86
    iget-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/smartspace/SmartspaceManagerService;->access$100(Lcom/android/server/smartspace/SmartspaceManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_a0

    .line 179
    :try_start_8d
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/smartspace/SmartspaceManagerService;->access$200(Lcom/android/server/smartspace/SmartspaceManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 180
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 181
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_9d

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_9d
    move-exception p0

    .line 181
    :try_start_9e
    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception p0

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw p0
.end method

.method public unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 4

    .line 136
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    const-string/jumbo p2, "unregisterSmartspaceUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method
