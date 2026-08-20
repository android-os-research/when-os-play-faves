.class public Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;
.super Landroid/app/search/ISearchUiManager$Stub;
.source "SearchUiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/searchui/SearchUiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchUiManagerStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/searchui/SearchUiManagerService;


# direct methods
.method public static synthetic $r8$lambda$b6iHEkQdOraEcWDVTWrsMBIoJ5Y(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->lambda$query$2(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Lcom/android/server/searchui/SearchUiPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iRxNRN41JOWZIyibqMG4Hnux5Lw(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->lambda$createSearchSession$0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;Lcom/android/server/searchui/SearchUiPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jwKJX3-KpnNujrPDHJ0S4x9rLr0(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->lambda$notifyEvent$1(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Lcom/android/server/searchui/SearchUiPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yc_8InrqGrzCGWbI7O5RIk5d0iU(Landroid/app/search/SearchSessionId;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->lambda$destroySearchSession$3(Landroid/app/search/SearchSessionId;Lcom/android/server/searchui/SearchUiPerUserService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    invoke-direct {p0}, Landroid/app/search/ISearchUiManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;-><init>(Lcom/android/server/searchui/SearchUiManagerService;)V

    return-void
.end method

.method public static synthetic lambda$createSearchSession$0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 4

    .line 110
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$destroySearchSession$3(Landroid/app/search/SearchSessionId;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 2

    .line 131
    invoke-virtual {p1, p0}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic lambda$notifyEvent$1(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 4

    .line 117
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->notifyLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method public static synthetic lambda$query$2(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .registers 4

    .line 125
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->queryLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    return-void
.end method


# virtual methods
.method public createSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .registers 5

    .line 109
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    const-string p1, "createSearchSession"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroySearchSession(Landroid/app/search/SearchSessionId;)V
    .registers 4

    .line 130
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/search/SearchSessionId;)V

    const-string v1, "destroySearchSession"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 5

    .line 116
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    const-string/jumbo p2, "notifyEvent"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 138
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/searchui/SearchUiManagerServiceShellCommand;-><init>(Lcom/android/server/searchui/SearchUiManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 139
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public query(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 5

    .line 124
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    const-string/jumbo p2, "query"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/search/SearchSessionId;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/searchui/SearchUiPerUserService;",
            ">;)V"
        }
    .end annotation

    .line 145
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 147
    invoke-virtual {p2}, Landroid/app/search/SearchSessionId;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 146
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 153
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v0}, Lcom/android/server/searchui/SearchUiManagerService;->access$000(Lcom/android/server/searchui/SearchUiManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    invoke-static {v0}, Lcom/android/server/searchui/SearchUiManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/searchui/SearchUiManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_70

    .line 156
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {}, Lcom/android/server/searchui/SearchUiManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_70
    :goto_70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 164
    :try_start_74
    iget-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/searchui/SearchUiManagerService;->access$100(Lcom/android/server/searchui/SearchUiManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_8e

    .line 165
    :try_start_7b
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/searchui/SearchUiManagerService;->access$200(Lcom/android/server/searchui/SearchUiManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 166
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 167
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_8b

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_8b
    move-exception p0

    .line 167
    :try_start_8c
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p0

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    throw p0
.end method
