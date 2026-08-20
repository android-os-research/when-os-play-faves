.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;
.super Landroid/app/ambientcontext/IAmbientContextManager$Stub;
.source "AmbientContextManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ambientcontext/AmbientContextManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AmbientContextManagerInternal"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

.field public final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;-><init>()V

    .line 322
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 321
    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$000(Lcom/android/server/ambientcontext/AmbientContextManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 382
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 385
    :cond_11
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$500(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 386
    :try_start_18
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    const-string p3, ""

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    invoke-static {p0, p3, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$600(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 387
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 393
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$300(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_33

    .line 361
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Detection service not available."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    const/4 p1, 0x3

    invoke-virtual {p0, p3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusToCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 366
    :cond_33
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$100(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_37

    .line 335
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Service not available."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    const/4 p1, 0x3

    invoke-virtual {p0, p3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 340
    :cond_37
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public startConsentActivity([ILjava/lang/String;)V
    .registers 6

    .line 372
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$400(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onStartConsentActivity([ILjava/lang/String;)V

    return-void
.end method

.method public unregisterObserver(Ljava/lang/String;)V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$200(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onUnregisterObserver(Ljava/lang/String;)V

    return-void
.end method
