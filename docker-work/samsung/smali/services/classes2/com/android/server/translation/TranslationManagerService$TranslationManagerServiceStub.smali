.class public final Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;
.super Landroid/view/translation/ITranslationManager$Stub;
.source "TranslationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/translation/TranslationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslationManagerServiceStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {p0}, Landroid/view/translation/ITranslationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 303
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "TranslationManagerService"

    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_f

    return-void

    .line 305
    :cond_f
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p3}, Lcom/android/server/translation/TranslationManagerService;->access$1800(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 306
    :try_start_16
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v1, ""

    invoke-virtual {v0, v1, p2}, Lcom/android/server/translation/TranslationManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 308
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v0}, Lcom/android/server/translation/TranslationManagerService;->access$1900(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_30

    const-string v0, "  "

    .line 310
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->dumpLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 312
    :cond_30
    monitor-exit p3

    return-void

    :catchall_32
    move-exception p0

    monitor-exit p3
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 13

    .line 261
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1600(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 262
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1700(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 263
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_99

    const/4 v0, 0x0

    if-eqz v1, :cond_7c

    .line 265
    invoke-virtual {v1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_35

    .line 268
    :try_start_1a
    invoke-interface {p1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_35

    :catch_1e
    move-exception v0

    const-string v3, "TranslationManagerService"

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_35
    :goto_35
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 274
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 277
    :try_start_41
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 278
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_77

    .line 282
    :try_start_54
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5b} :catch_5c
    .catchall {:try_start_54 .. :try_end_5b} :catchall_77

    goto :goto_73

    :catch_5c
    move-exception p0

    :try_start_5d
    const-string p1, "TranslationManagerService"

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_77

    .line 287
    :goto_73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_98

    :catchall_77
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw p0

    :cond_7c
    const/4 p0, 0x2

    .line 291
    :try_start_7d
    invoke-interface {p1, p0, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_98

    :catch_81
    move-exception p0

    const-string p1, "TranslationManagerService"

    .line 293
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to send getServiceSettingsActivity(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_98
    return-void

    :catchall_99
    move-exception p0

    .line 263
    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0
.end method

.method public onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$600(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p4}, Lcom/android/server/translation/TranslationManagerService;->access$700(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v1, :cond_28

    .line 201
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v2, "onSessionCreated"

    .line 202
    invoke-static {p0, p4, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 203
    :cond_24
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onSessionCreatedLocked(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    goto :goto_44

    :cond_28
    const-string p0, "TranslationManagerService"

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onSessionCreated(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 206
    invoke-interface {p3, p0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 208
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    new-instance v0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;-><init>(Lcom/android/server/translation/TranslationManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 323
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$000(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_7
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, p4}, Lcom/android/server/translation/TranslationManagerService;->access$100(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v1, :cond_27

    .line 163
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v2, "getTranslationCapabilities"

    .line 164
    invoke-static {p0, p4, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 165
    :cond_23
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onTranslationCapabilitiesRequestLocked(IILandroid/os/ResultReceiver;)V

    goto :goto_43

    :cond_27
    const-string p0, "TranslationManagerService"

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onGetTranslationCapabilitiesLocked(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 171
    :goto_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1400(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 253
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p4}, Lcom/android/server/translation/TranslationManagerService;->access$1500(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->onTranslationFinishedLocked(ZLandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 255
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$200(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$300(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 179
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    if-eqz p0, :cond_19

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 179
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1000(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 229
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1100(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_18

    .line 232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerUiTranslationStateCallbackLocked(Landroid/os/IRemoteCallback;I)V

    .line 234
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$400(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$500(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 190
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 190
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/translation/TranslationManagerService;->access$1200(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_7
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/translation/TranslationManagerService;->access$1300(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 242
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 242
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/UiTranslationSpec;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p8

    .line 215
    iget-object v2, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string v3, "android.permission.MANAGE_UI_TRANSLATION"

    invoke-static {v2, v3}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$menforceCallerHasPermission(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/String;)V

    .line 216
    iget-object v2, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/translation/TranslationManagerService;->access$800(Lcom/android/server/translation/TranslationManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 217
    :try_start_11
    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v3, v1}, Lcom/android/server/translation/TranslationManagerService;->access$900(Lcom/android/server/translation/TranslationManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v4, :cond_3d

    .line 218
    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v3, v1}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v0, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v3, "updateUiTranslationState"

    .line 219
    invoke-static {v0, v1, v3}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_2f
    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 220
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V

    .line 223
    :cond_3d
    monitor-exit v2

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_3f

    throw v0
.end method
