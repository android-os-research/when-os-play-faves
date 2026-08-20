.class public final Lcom/android/server/translation/TranslationManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "TranslationManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;,
        Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/translation/TranslationManagerServiceImpl;",
        "Lcom/android/server/translation/TranslationManagerService;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "IsLoggableTagLength"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "TranslationManagerServiceImpl"


# instance fields
.field public final mActiveTranslations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mLastActivityTokens:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

.field public mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRemoteTranslationServiceInfo:Landroid/content/pm/ServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6Hp1_UAlLphlmeh1GmirMwm3M14(Landroid/os/Bundle;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->lambda$notifyClientsTranslationCapability$1(Landroid/os/Bundle;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0p_kBd7KVoWA1ZoqlErTHb0uJE(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/translation/TranslationManagerServiceImpl;->lambda$invokeCallbacks$0(ILandroid/os/Bundle;Ljava/util/List;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyClientsTranslationCapability(Lcom/android/server/translation/TranslationManagerServiceImpl;Landroid/view/translation/TranslationCapability;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->notifyClientsTranslationCapability(Landroid/view/translation/TranslationCapability;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "TranslationManagerServiceImpl"

    const/4 v1, 0x3

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/Object;IZ)V
    .registers 5

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 97
    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback-IA;)V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    .line 99
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 101
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 106
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 561
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked()V

    .line 114
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method

.method private synthetic lambda$invokeCallbacks$0(ILandroid/os/Bundle;Ljava/util/List;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .registers 12

    .line 466
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$notifyClientsTranslationCapability$1(Landroid/os/Bundle;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .registers 3

    .line 580
    :try_start_0
    invoke-interface {p1, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p0

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to invoke UiTranslationStateCallback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranslationManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 9

    .line 623
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 625
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    if-eqz p1, :cond_1f

    const/4 v2, 0x3

    .line 628
    iget-object v3, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v4, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    iget-object v5, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 632
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    .line 477
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "state"

    .line 478
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_21

    .line 481
    invoke-virtual {p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p1

    const-string/jumbo p2, "source_locale"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 482
    invoke-virtual {p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p1

    const-string/jumbo p2, "target_locale"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_21
    const-string/jumbo p1, "package_name"

    .line 484
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_68

    .line 423
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    if-nez v0, :cond_d

    return-void

    .line 427
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_3a

    .line 428
    :try_start_12
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 429
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v4, "--dump-dumpable"

    const-string v5, "UiTranslationController"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-interface {v2, v3, v0, p1, v4}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_30

    .line 435
    :try_start_2c
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_3a

    goto :goto_70

    :catchall_30
    move-exception p2

    .line 427
    :try_start_31
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v0

    :try_start_36
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_39
    throw p2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 438
    :catch_3a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Got a RemoteException while dumping the activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_70

    :catch_4f
    move-exception p2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Failure while dumping the activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_70

    .line 441
    :cond_68
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "No requested UiTranslation Activity."

    .line 442
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    :goto_70
    iget-object p2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_a1

    .line 446
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "number waiting finish callback activities: "

    .line 447
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 449
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_89
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    .line 450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activityToken: "

    .line 451
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_89

    :cond_a1
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-nez v0, :cond_30

    .line 151
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 153
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_19

    const-string p0, "TranslationManagerServiceImpl"

    const-string v0, "ensureRemoteServiceLocked(): no service component name."

    .line 154
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 159
    new-instance v6, Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/translation/RemoteTranslationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IZLandroid/os/IBinder;)V

    iput-object v6, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 162
    :cond_30
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    return-object p0
.end method

.method public final getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .registers 6

    const/4 p0, -0x1

    if-eqz p2, :cond_29

    .line 198
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1, v0, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_29

    .line 202
    :catch_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find packageManager for"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranslationManagerServiceImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return p0
.end method

.method public final getEnabledInputMethods()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 471
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 472
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServiceSettingsActivityLocked()Landroid/content/ComponentName;
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 567
    :cond_6
    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    .line 571
    :cond_d
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 572
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/IRemoteCallback;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "Failed to invoke UiTranslationStateCallback: "

    const-string v0, "TranslationManagerServiceImpl"

    if-ne p1, p2, :cond_1e

    .line 494
    :try_start_6
    invoke-interface {p3, p4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_1d

    :catch_a
    move-exception p1

    .line 496
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void

    :cond_1e
    const/4 p2, 0x0

    .line 504
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_23
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 505
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v1, :cond_23

    const/4 p2, 0x1

    :cond_3a
    if-nez p2, :cond_3d

    return-void

    .line 515
    :cond_3d
    :try_start_3d
    invoke-interface {p3, p4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_54

    :catch_41
    move-exception p1

    .line 517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void
.end method

.method public final invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V
    .registers 6

    .line 460
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 461
    iget-object p2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_d

    return-void

    .line 464
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getEnabledInputMethods()Ljava/util/List;

    move-result-object p2

    .line 465
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p4, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p5, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {p3, p4}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final invokeCallbacksIfNecessaryLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move v0, p1

    move-object/from16 v4, p4

    move-object v1, p0

    move/from16 v5, p6

    .line 340
    iget-object v2, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    const-string v3, " packageName="

    const-string v6, " for app with uid="

    const-string v7, "TranslationManagerServiceImpl"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_43

    if-eqz v0, :cond_84

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating to translation state="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " but no active translation was found for it"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_43
    if-eqz v0, :cond_5a

    if-eq v0, v9, :cond_55

    if-eq v0, v8, :cond_50

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4d

    goto :goto_84

    :cond_4d
    :goto_4d
    move v8, v0

    move v9, v10

    goto :goto_85

    .line 385
    :cond_50
    iget-boolean v2, v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-nez v2, :cond_84

    goto :goto_4d

    .line 377
    :cond_55
    iget-boolean v2, v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v2, :cond_84

    goto :goto_4d

    .line 352
    :cond_5a
    iget-object v11, v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v11}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v11

    .line 353
    invoke-virtual {p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v12

    .line 352
    invoke-virtual {v11, v12}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    iget-object v11, v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 354
    invoke-virtual {v11}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v11

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v12

    .line 354
    invoke-virtual {v11, v12}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    move v11, v9

    goto :goto_7d

    :cond_7c
    move v11, v10

    :goto_7d
    if-eqz v11, :cond_84

    .line 357
    iget-boolean v2, v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v2, :cond_4d

    goto :goto_85

    :cond_84
    :goto_84
    move v8, v0

    .line 406
    :goto_85
    sget-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_b3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_93

    const-string v2, ""

    goto :goto_95

    :cond_93
    const-string v2, "NOT "

    .line 408
    :goto_95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Invoking callbacks for translation state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    if-eqz v9, :cond_c1

    move-object v0, p0

    move v1, v8

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    .line 415
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    :cond_c1
    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
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

    .line 121
    new-instance v0, Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isTemporaryServiceSetLocked()Z

    move-result v2

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/service/translation/TranslationServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    .line 123
    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 124
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final notifyClientsTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .registers 4

    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "translation_capabilities"

    .line 577
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 578
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onSessionCreatedLocked(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    :cond_9
    return-void
.end method

.method public onTranslationCapabilitiesRequestLocked(IILandroid/os/ResultReceiver;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    :cond_9
    return-void
.end method

.method public onTranslationFinishedLocked(ZLandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v7

    .line 212
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_1f

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 217
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 220
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_33

    .line 222
    :cond_1f
    iget-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 223
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 226
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_33
    :goto_33
    return-void
.end method

.method public registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    return-void
.end method

.method public registerUiTranslationStateCallbackLocked(Landroid/os/IRemoteCallback;I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 530
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getEnabledInputMethods()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    move v8, v7

    .line 531
    :goto_18
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_8a

    .line 532
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 533
    iget v10, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    .line 534
    iget-object v11, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    .line 535
    sget-boolean v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_62

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triggering callback for sourceUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for translated app with uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_62
    iget-object v1, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v2, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p0, v7, v1, v2, v11}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    move v3, v10

    move-object v4, p1

    move-object v6, v0

    .line 544
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 546
    iget-boolean v1, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v1, :cond_87

    .line 548
    iget-object v1, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v2, v9, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1, v2, v11}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    move v3, v10

    move-object v4, p1

    move-object v6, v0

    .line 551
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    :cond_87
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_8a
    return-void
.end method

.method public unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 182
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 558
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateActiveTranslationsLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    const/4 v1, 0x0

    const-string v2, "TranslationManagerServiceImpl"

    if-eqz p1, :cond_29

    const/4 p2, 0x1

    if-eq p1, p2, :cond_24

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1f

    const/4 p2, 0x3

    if-eq p1, p2, :cond_17

    goto :goto_63

    :cond_17
    if-eqz v0, :cond_63

    .line 320
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_1f
    if-eqz v0, :cond_63

    .line 313
    iput-boolean v1, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_63

    :cond_24
    if-eqz v0, :cond_63

    .line 306
    iput-boolean p2, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_63

    :cond_29
    if-nez v0, :cond_63

    .line 286
    :try_start_2b
    invoke-interface {p5, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_3f

    .line 297
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move v6, p6

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;-><init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILjava/lang/String;Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation-IA;)V

    invoke-virtual {p0, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :catch_3f
    move-exception p1

    .line 288
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call linkToDeath for translated app with uid="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; activity is already dead"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, p5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x3

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p6

    .line 293
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    return-void

    .line 326
    :cond_63
    :goto_63
    sget-boolean p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz p0, :cond_8b

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updating to translation state="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for app with uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return-void
.end method

.method public updateLocked(Z)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 130
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    .line 131
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked()V

    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-eqz v0, :cond_1c

    .line 141
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_14

    const-string v0, "TranslationManagerServiceImpl"

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_14
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    :cond_1c
    return-void
.end method

.method public updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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
            ")V"
        }
    .end annotation

    move-object v8, p0

    move v9, p1

    move-object/from16 v0, p5

    move/from16 v1, p6

    .line 240
    iget-object v2, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 241
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v2

    const-string v10, "TranslationManagerServiceImpl"

    if-nez v2, :cond_35

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown activity or it was finished to query for update translation state for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " taskId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for state= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_35
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x3

    if-ne v9, v1, :cond_44

    .line 250
    iget-object v1, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_44
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v11

    .line 254
    :try_start_48
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    move-object v2, v11

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/app/IApplicationThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_57} :catch_58

    goto :goto_6d

    :catch_58
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update UiTranslationState fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_6d
    iget-object v0, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v10

    .line 264
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v11

    move v7, v10

    .line 266
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacksIfNecessaryLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 268
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateActiveTranslationsLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V

    return-void
.end method
