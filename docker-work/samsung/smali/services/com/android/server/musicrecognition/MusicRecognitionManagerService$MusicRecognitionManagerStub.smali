.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;
.super Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;
.source "MusicRecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/musicrecognition/MusicRecognitionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MusicRecognitionManagerStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public beginRecognition(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    const-string v1, "beginRecognition"

    invoke-static {v0, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->-$$Nest$menforceCaller(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->access$000(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->access$100(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    if-eqz v2, :cond_2e

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->isDefaultServiceLocked(I)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "beginRecognition"

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->isCalledByServiceAppLocked(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 125
    :cond_2a
    invoke-virtual {v2, p1, p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->beginRecognitionLocked(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_38

    goto :goto_36

    .line 128
    :cond_2e
    :try_start_2e
    invoke-static {p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    move-result-object p0

    const/4 p1, 0x3

    .line 129
    invoke-interface {p0, p1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_36} :catch_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_38

    .line 134
    :catch_36
    :goto_36
    :try_start_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final isCalledByServiceAppLocked(Ljava/lang/String;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->access$400(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ": called by UID "

    const/4 v4, 0x0

    if-nez v2, :cond_39

    .line 168
    invoke-static {}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but there\'s no service set for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 173
    :cond_39
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 175
    invoke-static {}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": invalid service name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 179
    :cond_5b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 185
    :try_start_69
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 184
    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_71} :catch_97

    if-eq v1, p0, :cond_95

    .line 191
    invoke-static {}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but service UID is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_95
    const/4 p0, 0x1

    return p0

    .line 187
    :catch_97
    invoke-static {}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not verify UID for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final isDefaultServiceLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->access$200(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_e
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->access$300(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerServiceShellCommand;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 145
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
