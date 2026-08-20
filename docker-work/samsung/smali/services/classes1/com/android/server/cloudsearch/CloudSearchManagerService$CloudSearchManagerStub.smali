.class public Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;
.super Landroid/app/cloudsearch/ICloudSearchManager$Stub;
.source "CloudSearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cloudsearch/CloudSearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudSearchManagerStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;


# direct methods
.method public static synthetic $r8$lambda$XjeBYy4M4UquMStA6G0Ukhe-_WQ(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->lambda$search$0(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIBxxgkaQeKPgaIsgX6dWjCKoKU(Landroid/app/cloudsearch/SearchRequest;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->lambda$destroy$2(Landroid/app/cloudsearch/SearchRequest;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCeQABnQAVCSQDM8EZefIhzQzqU(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->lambda$returnResults$1(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-direct {p0}, Landroid/app/cloudsearch/ICloudSearchManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;)V

    return-void
.end method

.method public static synthetic lambda$destroy$2(Landroid/app/cloudsearch/SearchRequest;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 3

    .line 152
    iget-object v0, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    invoke-virtual {p0}, Landroid/app/cloudsearch/SearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    .line 154
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static synthetic lambda$returnResults$1(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 5

    .line 144
    iget-object v0, p3, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onReturnResultsLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V

    .line 146
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static synthetic lambda$search$0(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 4

    .line 135
    iget-object v0, p2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    invoke-virtual {p2, p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V

    .line 137
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method


# virtual methods
.method public destroy(Landroid/app/cloudsearch/SearchRequest;)V
    .registers 3

    .line 151
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/cloudsearch/SearchRequest;)V

    const-string p1, "destroyCloudSearchSession"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 162
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 163
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public returnResults(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .registers 5

    .line 143
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V

    const-string/jumbo p1, "returnResults"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
            ">;)V"
        }
    .end annotation

    .line 168
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 169
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_CLOUDSEARCH"

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 179
    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v1}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->access$000(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-static {v1}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_82

    .line 182
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: Cannot call "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
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

    .line 184
    invoke-static {}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_82
    :goto_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 190
    :try_start_86
    iget-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->access$100(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_ae

    .line 191
    :try_start_8d
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 192
    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;
    invoke-static {p0, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->access$200(Lcom/android/server/cloudsearch/CloudSearchManagerService;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 193
    :goto_94
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a6

    .line 194
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 196
    :cond_a6
    monitor-exit p1
    :try_end_a7
    .catchall {:try_start_8d .. :try_end_a7} :catchall_ab

    .line 198
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ab
    move-exception p0

    .line 196
    :try_start_ac
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception p0

    .line 198
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw p0
.end method

.method public search(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-static {v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/app/cloudsearch/SearchRequest;->setCallerPackageName(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V

    const-string/jumbo p1, "search"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
