.class public final Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AmbientContextManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;",
        "Lcom/android/server/ambientcontext/AmbientContextManagerService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AmbientContextManagerPerUserService"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6hCzKRZnwRSdVfTEruDTRocTTx8(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->lambda$createDetectionResultRemoteCallback$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h0bll1Fcm7t7huL0i0u0xM8atCE(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->lambda$getServerStatusCallback$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic lambda$createDetectionResultRemoteCallback$1(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 407
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    .line 413
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 415
    :try_start_1d
    invoke-virtual {p0, v1, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendDetectionResultIntent(Landroid/app/PendingIntent;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V

    .line 416
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got detection result of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_46

    .line 419
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_46
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    throw p0
.end method

.method public static synthetic lambda$getServerStatusCallback$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 196
    :try_start_c
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    .line 200
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    move-result v5

    .line 198
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-virtual {p0, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p1}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->getStatusCode()I

    move-result p0

    .line 203
    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got detection status of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_47

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_47
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw p0
.end method


# virtual methods
.method public createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;
    .registers 3

    .line 403
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public destroyLocked()V
    .registers 3

    .line 77
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    if-eqz v0, :cond_1b

    .line 79
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 82
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 157
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 158
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    if-eqz p0, :cond_17

    const-string p1, ""

    .line 159
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 157
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final ensureRemoteServiceInitiated()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    if-nez v0, :cond_15

    .line 89
    new-instance v0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    :cond_15
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getConsentComponent()Landroid/content/ComponentName;
    .registers 4

    .line 343
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040311

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_17
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consent component name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getServerStatusCallback(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback;
    .registers 3

    .line 190
    new-instance p0, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    invoke-direct {p0, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string v0, "android.permission.BIND_AMBIENT_CONTEXT_DETECTION_SERVICE"

    .line 133
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 136
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_37

    .line 139
    :cond_19
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service %s requires %s permission. Found %s permission"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object p0, v3, v0

    .line 139
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-object p0

    .line 147
    :catch_38
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 253
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query event status of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-nez v2, :cond_36

    const-string p1, "Detection service is not available at this moment."

    .line 257
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 258
    invoke-virtual {p0, p3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusToCallback(Landroid/os/RemoteCallback;I)V

    .line 260
    monitor-exit v1

    return-void

    .line 262
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 263
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 266
    invoke-virtual {p0, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServerStatusCallback(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback;

    move-result-object p0

    .line 263
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 267
    monitor-exit v1

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 7

    .line 169
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_16

    .line 171
    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p2, "Detection service is not available at this moment."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 172
    invoke-virtual {p0, p3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 175
    monitor-exit v0

    return-void

    .line 179
    :cond_16
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->createDetectionResultRemoteCallback()Landroid/os/RemoteCallback;

    move-result-object v2

    .line 179
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 182
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public onStartConsentActivity([ILjava/lang/String;)V
    .registers 12

    .line 271
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening consent activity of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v1

    .line 279
    :try_start_26
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_fc

    if-eqz v1, :cond_f6

    .line 286
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto/16 :goto_f6

    .line 291
    :cond_3e
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 292
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Recent task package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match with client package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 299
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getConsentComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_7f

    const-string p0, "Consent component not found!"

    .line 301
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting consent activity for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 309
    :try_start_9c
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10402ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10402ee

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 316
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v6, :cond_bf

    .line 318
    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c4

    :cond_bf
    const-string p2, "Missing packageNameExtraKey for consent activity"

    .line 320
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c4
    if-eqz v7, :cond_ca

    .line 323
    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_cf

    :cond_ca
    const-string p1, "Missing eventArrayExtraKey for consent activity"

    .line 325
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_cf
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 330
    iget p2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 331
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_e3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9c .. :try_end_e3} :catch_e6
    .catchall {:try_start_9c .. :try_end_e3} :catchall_e4

    goto :goto_ee

    :catchall_e4
    move-exception p0

    goto :goto_f2

    .line 333
    :catch_e6
    :try_start_e6
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unable to start consent activity"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_e4

    .line 335
    :goto_ee
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_f2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw p0

    :cond_f6
    :goto_f6
    const-string p0, "Recent task list is empty!"

    .line 287
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 282
    :catch_fc
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to query recent tasks!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnregisterObserver(Ljava/lang/String;)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->clientRemoved(ILjava/lang/String;)V

    .line 248
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final sendDetectionResultIntent(Landroid/app/PendingIntent;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V
    .registers 11

    .line 384
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    .line 386
    invoke-virtual {p2}, Landroid/service/ambientcontext/AmbientContextDetectionResult;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

    .line 385
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 389
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 390
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 392
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 393
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    .line 392
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending PendingIntent to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1b .. :try_end_4d} :catch_4e

    goto :goto_64

    .line 397
    :catch_4e
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t deliver pendingIntent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void
.end method

.method public sendStatusCallback(Landroid/os/RemoteCallback;I)V
    .registers 4

    .line 232
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    .line 233
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStatusToCallback(Landroid/os/RemoteCallback;I)V
    .registers 4
    .param p2    # I
        .annotation build Landroid/app/ambientcontext/AmbientContextManager$StatusCode;
        .end annotation
    .end param

    .line 358
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    .line 359
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public setUpServiceIfNeeded()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    .line 111
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 119
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const-wide/16 v3, 0x0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v2, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_22

    if-eqz p0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 122
    :catch_22
    sget-object p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException while setting up service"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 214
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested detection of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 217
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 218
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    .line 219
    invoke-virtual {p0, p4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServerStatusCallback(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback;

    move-result-object p0

    .line 218
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    goto :goto_39

    :cond_30
    const-string p1, "No valid component found for AmbientContextDetectionService"

    .line 221
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 222
    invoke-virtual {p0, p4, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusToCallback(Landroid/os/RemoteCallback;I)V

    .line 225
    :goto_39
    monitor-exit v1

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public stopDetection(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 367
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop detection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_19
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_25

    .line 370
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 371
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;

    invoke-virtual {p0, p1}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->stopDetection(Ljava/lang/String;)V

    .line 373
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_27

    throw p0
.end method
