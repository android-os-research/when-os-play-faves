.class public final Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SpeechRecognitionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;",
        "Lcom/android/server/speech/SpeechRecognitionManagerService;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_CONCURRENT_CONNECTIONS_BY_CLIENT:I = 0xa

.field public static final TAG:Ljava/lang/String; = "SpeechRecognitionManagerServiceImpl"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRemoteServicesByUid:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/speech/RemoteSpeechRecognitionService;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DY5UaZmRJM_NnlSHa6qfXyIhXSU(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createSessionLocked$1(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R2ZvchizfzVJTIMHYIvnLeo95ys(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createService$2(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TJpo48M5TbxxVXHKxHluiiiTMXs(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createService$3(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uPXleECJRAyvpAuEwWF04sMqwXQ(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createSessionLocked$0(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleClientDeath(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 58
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object p0
.end method

.method public static synthetic lambda$createService$2(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z
    .registers 2

    .line 238
    invoke-virtual {p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$createService$3(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 1

    .line 259
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$createSessionLocked$0(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .registers 4

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method private synthetic lambda$createSessionLocked$1(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
    .registers 14

    const/4 v0, 0x5

    if-eqz p6, :cond_1e

    .line 136
    :try_start_3
    new-instance p6, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;

    move-object v1, p6

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-interface {p1, p6}, Landroid/speech/IRecognitionServiceManagerCallback;->onSuccess(Landroid/speech/IRecognitionService;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_21

    :catch_12
    move-exception p0

    .line 187
    sget-object p2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p3, "Error creating a speech recognition session"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-static {p1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    goto :goto_21

    .line 191
    :cond_1e
    invoke-static {p1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    :goto_21
    return-void
.end method

.method public static tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V
    .registers 2

    .line 310
    :try_start_0
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionServiceManagerCallback;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    .line 312
    :catch_4
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Failed to respond with error"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method


# virtual methods
.method public final componentMapsToRecognitionService(Landroid/content/ComponentName;)Z
    .registers 7

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 276
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result p0

    const/4 v4, 0x0

    .line 276
    invoke-virtual {v2, v3, v4, p0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_5a

    .line 279
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p0, :cond_22

    return v4

    .line 286
    :cond_22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 287
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_26

    .line 288
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x1

    return p0

    .line 293
    :cond_42
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serviceComponent is not RecognitionService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catchall_5a
    move-exception p0

    .line 279
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    throw p0
.end method

.method public final createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;
    .registers 8

    .line 224
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 229
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1c

    .line 230
    monitor-exit v0

    return-object v2

    :cond_1c
    if-eqz v1, :cond_5b

    .line 236
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Landroid/content/ComponentName;)V

    .line 237
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 242
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_53

    .line 243
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reused existing connection to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_53
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    monitor-exit v0

    return-object p0

    :cond_5b
    if-eqz p2, :cond_65

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->componentMapsToRecognitionService(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 251
    monitor-exit v0

    return-object v2

    .line 254
    :cond_65
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    .line 256
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v3

    invoke-direct {v1, v2, p2, v3, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;II)V

    .line 258
    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 260
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_a4

    .line 263
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a new connection to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_a4
    monitor-exit v0

    return-object v1

    :catchall_a6
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_3 .. :try_end_a8} :catchall_a6

    throw p0
.end method

.method public createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .registers 12

    .line 96
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 97
    sget-object v0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 98
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "#createSessionLocked, component=%s, onDevice=%s"

    .line 97
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-eqz p3, :cond_26

    .line 103
    invoke-virtual {p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->getOnDeviceComponentNameLocked()Landroid/content/ComponentName;

    move-result-object p1

    :cond_26
    if-nez p1, :cond_3c

    .line 107
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_37

    .line 108
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "Service component is undefined, responding with error."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const/4 p0, 0x5

    .line 110
    invoke-static {p4, p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    return-void

    .line 114
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 115
    invoke-virtual {p0, v4, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createService(ILandroid/content/ComponentName;)Lcom/android/server/speech/RemoteSpeechRecognitionService;

    move-result-object v3

    if-nez v3, :cond_4c

    const/16 p0, 0xa

    .line 118
    invoke-static {p4, p0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->tryRespondWithError(Landroid/speech/IRecognitionServiceManagerCallback;I)V

    return-void

    .line 122
    :cond_4c
    new-instance v6, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4, v3}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    .line 126
    :try_start_51
    invoke-interface {p2, v6, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_54} :catch_65

    .line 133
    invoke-virtual {v3}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p3, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 129
    :catch_65
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    return-void
.end method

.method public final getOnDeviceComponentNameLocked()Landroid/content/ComponentName;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v1, :cond_22

    .line 210
    sget-object v1, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved component name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-nez v0, :cond_35

    .line 214
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_33

    .line 215
    sget-object p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "ensureRemoteServiceLocked(): no service component name."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_35
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final handleClientDeath(ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V
    .registers 4

    if-eqz p3, :cond_5

    .line 200
    invoke-virtual {p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->shutdown()V

    .line 202
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V

    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 79
    :catch_d
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

.method public final removeService(ILcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->mRemoteServicesByUid:Ljava/util/Map;

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_14

    .line 302
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public updateLocked(Z)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p0

    return p0
.end method
