.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "MusicRecognitionManagerPerUserService.java"

# interfaces
.implements Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;",
        "Lcom/android/server/musicrecognition/MusicRecognitionManagerService;",
        ">;",
        "Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$Callbacks;"
    }
.end annotation


# static fields
.field public static final BYTES_PER_SAMPLE:I = 0x2

.field public static final KEY_MUSIC_RECOGNITION_SERVICE_ATTRIBUTION_TAG:Ljava/lang/String; = "android.media.musicrecognition.attributiontag"

.field public static final MAX_STREAMING_SECONDS:I = 0x18

.field public static final MUSIC_RECOGNITION_MANAGER_ATTRIBUTION_TAG:Ljava/lang/String; = "MusicRecognitionManagerService"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttributionMessage:Ljava/lang/String;

.field public mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method public static synthetic $r8$lambda$8aLKnGDlivqSH0pbsIZU1lA6oI4(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->lambda$beginRecognitionLocked$0(Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyService(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsanitizeBundle(Landroid/os/Bundle;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->sanitizeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "MusicRecognitionManagerService"

    invoke-virtual {p1, p2}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/app/AppOpsManager;

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 94
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "MusicRecognitionManager.invokedByUid.%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    .line 96
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-void
.end method

.method public static createAudioRecord(Landroid/media/musicrecognition/RecognitionRequest;I)Landroid/media/AudioRecord;
    .registers 5

    .line 394
    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    .line 395
    invoke-static {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->getBufferSizeInBytes(II)I

    move-result p1

    .line 396
    new-instance v0, Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 397
    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v2

    .line 398
    invoke-virtual {p0}, Landroid/media/musicrecognition/RecognitionRequest;->getCaptureSession()I

    move-result p0

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    return-object v0
.end method

.method public static createPipe()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 412
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_3d

    .line 418
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    .line 419
    sget-object v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create audio stream pipe, unexpected number of file descriptors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_11
    const/4 v2, 0x0

    .line 424
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    aget-object v4, v1, v3

    .line 425
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_35

    .line 431
    :cond_2c
    aget-object v0, v1, v2

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 426
    :cond_35
    :goto_35
    sget-object v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create audio stream pipe, didn\'t receive a pair of valid file descriptors."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_3d
    move-exception v1

    .line 414
    sget-object v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create audio stream pipe"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getBufferSizeInBytes(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$beginRecognitionLocked$0(Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 5

    .line 193
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->streamAudio(Ljava/lang/String;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public static sanitizeBundle(Landroid/os/Bundle;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 440
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 441
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 443
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_25

    .line 444
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->sanitizeBundle(Landroid/os/Bundle;)V

    goto :goto_b

    .line 445
    :cond_25
    instance-of v3, v2, Landroid/os/IBinder;

    if-nez v3, :cond_2d

    instance-of v2, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_b

    .line 446
    :cond_2d
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_b

    :cond_31
    return-void
.end method


# virtual methods
.method public beginRecognitionLocked(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 166
    invoke-static {p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    move-result-object p2

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->ensureRemoteServiceLocked(Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-nez v0, :cond_11

    const/4 p0, 0x3

    .line 170
    :try_start_d
    invoke-interface {p2, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_10

    :catch_10
    return-void

    .line 178
    :cond_11
    invoke-static {}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->createPipe()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 p0, 0x7

    .line 181
    :try_start_18
    invoke-interface {p2, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void

    .line 188
    :cond_1c
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 189
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 191
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v3, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V

    iget-object p2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p2, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    iget-object p2, p2, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 197
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {p1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;)V

    return-void
.end method

.method public final destroyService()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-eqz v1, :cond_d

    .line 352
    invoke-virtual {v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v1, 0x0

    .line 353
    iput-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 355
    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final ensureRemoteServiceLocked(Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-nez v0, :cond_84

    .line 128
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 130
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1a

    .line 131
    sget-object p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "ensureRemoteServiceLocked(): not set"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-object v1

    .line 135
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 137
    new-instance v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    new-instance v7, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    invoke-direct {v7, p0, p1, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback-IA;)V

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p1, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p1, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    iget-boolean v9, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;ZZ)V

    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 145
    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 146
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x80

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 147
    iget-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {p1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getAttributionTag()Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    .line 148
    sget-object p1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote service bound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_7b} :catch_7c

    goto :goto_84

    :catch_7c
    move-exception p1

    .line 150
    sget-object v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Service was not found."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_84
    :goto_84
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    return-object p0
.end method

.method public final finishRecordAudioOp(Ljava/lang/String;)V
    .registers 5

    .line 383
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 384
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 383
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/app/AppOpsManager;->finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

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

    .line 106
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_3f

    .line 112
    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v0, "android.permission.BIND_MUSIC_RECOGNITION_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-object p0

    .line 113
    :cond_17
    sget-object p1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicRecognitionService from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not require permission "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Service does not require permission android.permission.BIND_MUSIC_RECOGNITION_SERVICE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :catch_3f
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

.method public onServiceDied(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;)V
    .registers 5

    .line 339
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->getServerCallback()Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->-$$Nest$mgetClientCallback(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_c

    .line 344
    :catch_c
    sget-object v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote service died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 59
    check-cast p1, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    invoke-virtual {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->onServiceDied(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;)V

    return-void
.end method

.method public final startRecordAudioOp(Ljava/lang/String;)V
    .registers 8

    .line 363
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 364
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mAttributionMessage:Ljava/lang/String;

    move v2, v3

    move-object v3, v4

    move-object v4, p1

    .line 363
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_42

    .line 375
    sget-object v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 377
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    const-string p0, "Starting audio streaming. Attributing to %s (%d) with tag \'%s\'"

    .line 375
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_42
    new-instance p1, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Failed to obtain RECORD_AUDIO permission (status: %d) for receiving service: %s"

    .line 371
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final streamAudio(Landroid/media/musicrecognition/RecognitionRequest;ILandroid/media/AudioRecord;Ljava/io/OutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p3}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v0

    div-int/2addr v0, p2

    .line 268
    new-array p2, v0, [B

    .line 272
    invoke-virtual {p1}, Landroid/media/musicrecognition/RecognitionRequest;->getIgnoreBeginningFrames()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 273
    invoke-virtual {p3}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_13
    :goto_13
    if-ltz v2, :cond_38

    .line 275
    invoke-virtual {p3}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_38

    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mRemoteService:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    if-eqz v2, :cond_38

    .line 277
    invoke-virtual {p3, p2, v1, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    if-lez v2, :cond_13

    add-int/2addr v3, v2

    if-lez p1, :cond_34

    sub-int/2addr p1, v2

    if-gez p1, :cond_13

    add-int v4, v2, p1

    neg-int v5, p1

    .line 286
    invoke-virtual {p4, p2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_13

    .line 289
    :cond_34
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_13

    .line 293
    :cond_38
    sget-object p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Streamed %s bytes from audio record"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final streamAudio(Ljava/lang/String;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V
    .registers 8

    .line 211
    invoke-virtual {p2}, Landroid/media/musicrecognition/RecognitionRequest;->getMaxAudioLengthSeconds()I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_23

    .line 217
    sget-object p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p1, "No audio requested. Closing stream."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_13
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 220
    invoke-interface {p3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_22

    goto :goto_22

    :catch_1a
    move-exception p0

    .line 222
    sget-object p1, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string p2, "Problem closing stream."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_22
    :goto_22
    return-void

    .line 230
    :cond_23
    :try_start_23
    invoke-virtual {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->startRecordAudioOp(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_26} :catch_5f

    .line 245
    invoke-static {p2, v0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->createAudioRecord(Landroid/media/musicrecognition/RecognitionRequest;I)Landroid/media/AudioRecord;

    move-result-object v1

    .line 246
    :try_start_2a
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_4b
    .catchall {:try_start_2a .. :try_end_2f} :catchall_49

    .line 248
    :try_start_2f
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->streamAudio(Landroid/media/musicrecognition/RecognitionRequest;ILandroid/media/AudioRecord;Ljava/io/OutputStream;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3f

    .line 249
    :try_start_32
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_4b
    .catchall {:try_start_32 .. :try_end_35} :catchall_49

    .line 252
    :goto_35
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    .line 255
    :try_start_3b
    invoke-interface {p3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_54

    goto :goto_54

    :catchall_3f
    move-exception p2

    .line 246
    :try_start_40
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception p4

    :try_start_45
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_48
    throw p2
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_4b
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p2

    goto :goto_55

    :catch_4b
    move-exception p2

    .line 250
    :try_start_4c
    sget-object p4, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Audio streaming stopped."

    invoke-static {p4, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    goto :goto_35

    :catch_54
    :goto_54
    return-void

    .line 252
    :goto_55
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    .line 255
    :try_start_5b
    invoke-interface {p3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_5e

    .line 259
    :catch_5e
    throw p2

    :catch_5f
    move-exception p1

    .line 234
    sget-object p2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RECORD_AUDIO op not permitted on behalf of "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 235
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    .line 237
    :try_start_7d
    invoke-interface {p3, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_80} :catch_80

    :catch_80
    return-void
.end method
