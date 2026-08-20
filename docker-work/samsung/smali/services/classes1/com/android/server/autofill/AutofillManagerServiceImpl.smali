.class public final Lcom/android/server/autofill/AutofillManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;,
        Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
        "Lcom/android/server/autofill/AutofillManagerService;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_ABANDONED_SESSION_MILLIS:I = 0x7530

.field public static final MAX_SESSION_ID_CREATE_TRIES:I = 0x800

.field public static final TAG:Ljava/lang/String; = "AutofillManagerServiceImpl"

.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field public mClients:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/autofill/IAutoFillManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field public final mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

.field public mEventHistory:Landroid/service/autofill/FillEventHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

.field public final mHandler:Landroid/os/Handler;

.field public mInfo:Landroid/service/autofill/AutofillServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public mLastPrune:J

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/autofill/Session;",
            ">;"
        }
    .end annotation
.end field

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;

.field public mUserData:Landroid/service/autofill/UserData;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRemoteAugmentedAutofillService(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteAugmentedAutofillService(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteInlineSuggestionRenderService(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;ZLcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;)V
    .registers 12

    .line 185
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 112
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 136
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    const-wide/16 p1, 0x0

    .line 162
    iput-wide p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 187
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 188
    iput-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 189
    iput-object p6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 190
    new-instance p1, Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 191
    iput-object p7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 192
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 193
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 195
    iput-object p9, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 196
    invoke-virtual {p0, p8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)Z

    return-void
.end method


# virtual methods
.method public addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 260
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 262
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    if-eqz p2, :cond_29

    .line 267
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 268
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/16 p0, 0x8

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public final assertCallerLocked(Landroid/content/ComponentName;Z)V
    .registers 8

    .line 541
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 546
    :try_start_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_18} :catch_ba

    if-eq v2, v3, :cond_b9

    .line 550
    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    .line 551
    invoke-virtual {v4, v2, v0}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 552
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    .line 553
    aget-object v0, v0, v1

    goto :goto_44

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    :goto_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App (package="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UID="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") passed component ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") owned by UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x3b4

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 559
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x38c

    .line 560
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x3b5

    .line 562
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    if-eqz p2, :cond_9d

    const/16 p2, 0x586

    const/4 v1, 0x1

    .line 564
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 566
    :cond_9d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 568
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid component: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b9
    return-void

    .line 548
    :catch_ba
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not verify UID for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelSessionLocked(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 462
    :cond_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/Session;

    if-eqz p0, :cond_1a

    .line 463
    iget v0, p0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v0, :cond_16

    goto :goto_1a

    .line 467
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    return-void

    .line 464
    :cond_1a
    :goto_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelSessionLocked(): no session for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final createSessionByTokenLocked(Landroid/os/IBinder;IILandroid/os/IBinder;ZLandroid/content/ComponentName;ZZZI)Lcom/android/server/autofill/Session;
    .registers 34
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x800

    const/4 v2, 0x0

    if-le v0, v1, :cond_12

    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "Cannot create session in 2048 tries"

    .line 514
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 518
    :cond_12
    sget-object v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-eqz v7, :cond_81

    const v1, 0x7fffffff

    if-eq v7, v1, :cond_81

    .line 519
    iget-object v1, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 520
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_81

    move-object/from16 v12, p6

    move/from16 v11, p7

    .line 522
    invoke-virtual {v15, v12, v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->assertCallerLocked(Landroid/content/ComponentName;Z)V

    .line 525
    iget-object v0, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_39

    move-object/from16 v16, v2

    goto :goto_43

    .line 526
    :cond_39
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v16, v0

    .line 527
    :goto_43
    new-instance v10, Lcom/android/server/autofill/Session;

    move-object v0, v10

    iget-object v2, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    iget v5, v15, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v6, v15, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    iget-object v13, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v14, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    iget-object v1, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v22, v10

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v15, v16

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    invoke-direct/range {v0 .. v21}, Lcom/android/server/autofill/Session;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;)V

    .line 532
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    move-object/from16 v1, v22

    iget v2, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1

    :cond_81
    move-object v1, v15

    move-object v15, v1

    goto/16 :goto_3
.end method

.method public destroyLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 694
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 698
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 699
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v0, :cond_31

    .line 701
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/Session;

    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 703
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 706
    :cond_31
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 707
    :goto_36
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v2, v0, :cond_48

    .line 708
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_48
    const/4 v0, 0x1

    .line 711
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 712
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_56

    .line 713
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    :cond_56
    return-void
.end method

.method public disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V
    .registers 11

    .line 1520
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1521
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    const-wide v1, 0x7fffffffffffffffL

    .line 1526
    :cond_13
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledActivityLocked(ILandroid/content/ComponentName;J)V

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-lez v1, :cond_25

    const p2, 0x7fffffff

    goto :goto_26

    :cond_25
    long-to-int p2, p2

    :goto_26
    const/16 p3, 0x4d0

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 1531
    invoke-static {p3, p1, v1, p4, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 p3, 0x479

    .line 1533
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1534
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1535
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public disableAutofillForApp(Ljava/lang/String;JIZ)V
    .registers 11

    .line 1500
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1501
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    const-wide v1, 0x7fffffffffffffffL

    .line 1506
    :cond_13
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledAppLocked(ILjava/lang/String;J)V

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-lez v1, :cond_25

    const p2, 0x7fffffff

    goto :goto_26

    :cond_25
    long-to-int p2, p2

    .line 1509
    :goto_26
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x4cf

    .line 1510
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object p0

    .line 1509
    invoke-static {v1, p1, p0, p4, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 p1, 0x479

    .line 1511
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 1509
    invoke-virtual {p3, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1512
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public disableOwnedAutofillServicesLocked(I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableOwnedServices("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_25

    return-void

    .line 475
    :cond_25
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 476
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, p1, :cond_5a

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableOwnedServices(): ignored when called by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for service "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_5a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 486
    :try_start_5e
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 488
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 489
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x46f

    .line 490
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "autofill_service"

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {p1, v0, v1, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 493
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    goto :goto_b0

    .line 495
    :cond_8f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableOwnedServices(): ignored because current service ("

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") does not match Settings ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_5e .. :try_end_b0} :catchall_b4

    .line 499
    :goto_b0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b4
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1033
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "UID: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1038
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Autofill Service Info: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    const-string v3, "N/A"

    if-nez v2, :cond_35

    .line 1040
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d

    .line 1042
    :cond_35
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1043
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v2, v0, p2}, Landroid/service/autofill/AutofillServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1045
    :goto_3d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Default component: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1040317

    .line 1046
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAugmentedAutofillNamer: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v2, v2, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, p2, v4}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1051
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-eqz v2, :cond_7e

    .line 1052
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "RemoteAugmentedAutofillService: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v2, v0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1055
    :cond_7e
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_8f

    .line 1056
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "RemoteAugmentedAutofillServiceInfo: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1060
    :cond_8f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Field classification enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1062
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Compat pkgs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_b0

    .line 1065
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b3

    .line 1067
    :cond_b0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1069
    :goto_b3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Inline Suggestions Enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isInlineSuggestionsEnabledLocked()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1071
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Last prune: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 1073
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, v4, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->dump(ILjava/lang/String;Ljava/io/PrintWriter;)V

    .line 1075
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_e8

    .line 1077
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No sessions"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_110

    .line 1079
    :cond_e8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " sessions:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v4

    :goto_f4
    if-ge v5, v2, :cond_110

    .line 1081
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "#"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1082
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    invoke-virtual {v5, v0, p2}, Lcom/android/server/autofill/Session;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    move v5, v6

    goto :goto_f4

    .line 1086
    :cond_110
    :goto_110
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Clients: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_120

    .line 1088
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_128

    .line 1090
    :cond_120
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1091
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p2, v0}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1094
    :goto_128
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v2, :cond_18f

    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_18f

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1095
    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_13f

    goto :goto_18f

    .line 1098
    :cond_13f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Events of last fill response:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_154
    if-ge v4, v2, :cond_197

    .line 1103
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/FillEventHistory$Event;

    .line 1104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": eventType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " datasetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory$Event;->getDatasetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1104
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_154

    .line 1096
    :cond_18f
    :goto_18f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "No event on last fill response"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    :cond_197
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User data: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_1a7

    .line 1111
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1af

    .line 1113
    :cond_1a7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1114
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1, v0, p2}, Landroid/service/autofill/UserData;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1117
    :goto_1af
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Field Classification strategy: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public finishSessionLocked(III)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 432
    :cond_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/Session;

    const-string v0, "AutofillManagerServiceImpl"

    if-eqz p0, :cond_4e

    .line 433
    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_18

    goto :goto_4e

    .line 440
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->showSaveLocked()Lcom/android/server/autofill/Session$SaveResult;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Lcom/android/server/autofill/Session$SaveResult;->getNoSaveUiReason()I

    move-result p2

    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/Session;->logContextCommitted(II)V

    .line 444
    invoke-virtual {p1}, Lcom/android/server/autofill/Session$SaveResult;->isLogSaveShown()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 445
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->logSaveUiShown()V

    .line 448
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/autofill/Session$SaveResult;->isRemoveSession()Z

    move-result p1

    .line 449
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_48

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finishSessionLocked(): session finished on save? "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    if-eqz p1, :cond_4d

    .line 452
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    :cond_4d
    return-void

    .line 434
    :cond_4e
    :goto_4e
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_73

    .line 435
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finishSessionLocked(): no session for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return-void
.end method

.method public forceRemoveAllSessionsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 1125
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void

    :cond_10
    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_22

    .line 1130
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/Session;

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method public forceRemoveFinishedSessionsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3e

    .line 1152
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/Session;

    .line 1153
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->isSaveUiShowingLocked()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1154
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyFinishedSessionsLocked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillManagerServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_34
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked()V

    goto :goto_3b

    .line 1157
    :cond_38
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    :goto_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3e
    return-void
.end method

.method public forceRemoveForAugmentedOnlySessionsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1138
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/Session;

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceIfForAugmentedOnlyLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final getAugmentedAutofillServiceUidLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_15

    .line 1398
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_13

    const-string p0, "AutofillManagerServiceImpl"

    const-string v0, "getAugmentedAutofillServiceUid(): no mRemoteAugmentedAutofillServiceInfo"

    .line 1399
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 p0, -0x1

    return p0

    .line 1404
    :cond_15
    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;
    .registers 4

    .line 1569
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getFCAlgorithms()"

    .line 1570
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 1571
    monitor-exit v0

    return-object p0

    .line 1573
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1574
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_16
    move-exception p0

    .line 1573
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getCompatibilityPackagesLocked()Landroid/util/ArrayMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1182
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz p0, :cond_9

    .line 1183
    invoke-virtual {p0}, Landroid/service/autofill/AutofillServiceInfo;->getCompatibilityPackages()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;
    .registers 4

    .line 1578
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "getDefaultFCAlgorithm()"

    .line 1579
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 1580
    monitor-exit v0

    return-object p0

    .line 1582
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1583
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_16
    move-exception p0

    .line 1582
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;
    .registers 1

    .line 1565
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    return-object p0
.end method

.method public getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;
    .registers 4

    .line 967
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v1, :cond_13

    const-string v1, "getFillEventHistory"

    .line 969
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 970
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v0

    return-object p0

    .line 972
    :cond_13
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v1, :cond_23

    const-string v1, "getFillEventHistory"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 974
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v0

    return-object p0

    .line 976
    :cond_23
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/Session;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/autofill/Session;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_33

    .line 634
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 635
    iget v4, v3, Lcom/android/server/autofill/Session;->taskId:I

    iget v5, p1, Lcom/android/server/autofill/Session;->taskId:I

    if-ne v4, v5, :cond_30

    iget v4, v3, Lcom/android/server/autofill/Session;->id:I

    iget v5, p1, Lcom/android/server/autofill/Session;->id:I

    if-eq v4, v5, :cond_30

    .line 636
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getSaveInfoFlagsLocked()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_30

    if-nez v1, :cond_2d

    .line 638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    :cond_2d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_33
    return-object v1
.end method

.method public getRemoteAugmentedAutofillServiceIfCreatedLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1284
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object p0
.end method

.method public getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-nez v0, :cond_8c

    .line 1208
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerServiceImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 1210
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_23

    const-string/jumbo p0, "getRemoteAugmentedAutofillServiceLocked(): not set"

    .line 1211
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-object v2

    .line 1215
    :cond_24
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 1217
    invoke-virtual {v4, v3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isTemporary(I)Z

    move-result v4

    .line 1216
    invoke-static {v0, v3, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_37

    return-object v2

    .line 1220
    :cond_37
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 1221
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/content/ComponentName;

    .line 1222
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5b

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRemoteAugmentedAutofillServiceLocked(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_5b
    new-instance v7, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    invoke-direct {v7, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1272
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 1274
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerService;->isInstantServiceAllowed()Z

    move-result v8

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    move-object v2, v1

    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v9, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    move-object v2, v1

    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    iget v10, v2, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget v11, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;ILcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;ZZII)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1279
    :cond_8c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object p0
.end method

.method public getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .registers 11

    .line 1599
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-nez v0, :cond_3c

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getServiceComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_19

    const-string p0, "AutofillManagerServiceImpl"

    const-string v1, "No valid component found for InlineSuggestionRenderService"

    .line 1603
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1607
    :cond_19
    new-instance v1, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    new-instance v7, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;

    invoke-direct {v7, p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl-IA;)V

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 1610
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v9, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v5, "android.service.autofill.InlineSuggestionRenderService"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/autofill/RemoteInlineSuggestionRenderService$InlineSuggestionRenderCallbacks;ZZ)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1613
    :cond_3c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    return-object p0
.end method

.method public getSupportedSmartSuggestionModesLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1027
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getSupportedSmartSuggestionModesLocked()I

    move-result p0

    return p0
.end method

.method public getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserData()Landroid/service/autofill/UserData;
    .registers 2

    .line 982
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 984
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getUserData(I)Landroid/service/autofill/UserData;
    .registers 4

    .line 989
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "getUserData"

    .line 990
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 991
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object p0

    .line 993
    :cond_10
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 681
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 682
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    :cond_13
    return-void
.end method

.method public handleSessionSave(Lcom/android/server/autofill/Session;)V
    .registers 5

    .line 648
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_3
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_28

    const-string p0, "AutofillManagerServiceImpl"

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSessionSave(): already gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    monitor-exit v0

    return-void

    .line 654
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->callSaveLocked()V

    .line 655
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final isAugmentedAutofillServiceAvailableLocked()Z
    .registers 4

    .line 1315
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_43

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAugmentedAutofillService(): setupCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isSetupCompletedLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDisabledByUserRestrictionsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", augmentedService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 1320
    invoke-virtual {v1, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerServiceImpl"

    .line 1316
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isSetupCompletedLocked()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDisabledByUserRestrictionsLocked()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 1323
    invoke-virtual {v0, p0}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 p0, 0x1

    return p0

    :cond_60
    :goto_60
    const/4 p0, 0x0

    return p0
.end method

.method public isAugmentedAutofillServiceForUserLocked(I)Z
    .registers 2

    .line 1330
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_c

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->isAutofillDisabledLocked(ILandroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public final isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "() called by UID "

    const-string v3, "AutofillManagerServiceImpl"

    if-nez v0, :cond_2d

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but there is no augmented autofill service defined for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1380
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1386
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result v0

    if-eq v0, p2, :cond_61

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but service UID is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1387
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_61
    const/4 p0, 0x1

    return p0
.end method

.method public final isCalledByServiceLocked(Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    move-result p0

    if-eq p0, p2, :cond_29

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() called by UID "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but service UID is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public final isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1485
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 1487
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1488
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1489
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->isDestroyed()Z

    move-result p0

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method public isFieldClassificationEnabled(I)Z
    .registers 4

    .line 1548
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "isFieldClassificationEnabled"

    .line 1549
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p0, 0x0

    .line 1550
    monitor-exit v0

    return p0

    .line 1552
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1553
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isFieldClassificationEnabledLocked()Z
    .registers 4

    .line 1559
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-string v1, "autofill_field_classification"

    const/4 v2, 0x1

    .line 1558
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method public isInlineSuggestionsEnabledLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1190
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz p0, :cond_9

    .line 1191
    invoke-virtual {p0}, Landroid/service/autofill/AutofillServiceInfo;->isInlineSuggestionsEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidEventLocked(Ljava/lang/String;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    const/4 v1, 0x0

    const-string v2, "AutofillManagerServiceImpl"

    if-nez v0, :cond_1c

    .line 753
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": not logging event because history is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 756
    :cond_1c
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v0

    if-eq p2, v0, :cond_4c

    .line 757
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_4b

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": not logging event for session "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because tracked session is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 759
    invoke-virtual {p0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 758
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return v1

    :cond_4c
    const/4 p0, 0x1

    return p0
.end method

.method public isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public listSessionsLocked(Ljava/util/ArrayList;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_52

    .line 1169
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1170
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v4, :cond_1b

    const-string/jumbo v4, "no_svc"

    goto :goto_27

    .line 1172
    :cond_1b
    invoke-virtual {v4}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 1173
    :goto_27
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_2f

    const-string/jumbo v5, "no_aug"

    goto :goto_37

    .line 1175
    :cond_2f
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    :goto_37
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    const-string v3, "%d:%s:%s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_52
    return-void
.end method

.method public logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    move-object v0, p0

    .line 836
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 837
    :try_start_4
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v2, :cond_2b

    .line 838
    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v2

    move/from16 v3, p1

    if-eq v2, v3, :cond_11

    goto :goto_2b

    .line 841
    :cond_11
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v14, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v14}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 844
    monitor-exit v1

    return-void

    .line 839
    :cond_2b
    :goto_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    .line 844
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    move-object v0, p0

    .line 849
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 850
    :try_start_4
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v2, :cond_2b

    .line 851
    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v2

    move/from16 v3, p1

    if-eq v2, v3, :cond_11

    goto :goto_2b

    .line 854
    :cond_11
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v14, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v14}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 857
    monitor-exit v1

    return-void

    .line 852
    :cond_2b
    :goto_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    .line 857
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public logAugmentedAutofillShown(ILandroid/os/Bundle;)V
    .registers 21

    move-object/from16 v0, p0

    .line 861
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 862
    :try_start_5
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v2, :cond_34

    .line 863
    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v2

    move/from16 v3, p1

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 868
    :cond_12
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x2

    move-object v2, v15

    move-object/from16 v5, p2

    move-object/from16 v17, v15

    move/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 873
    monitor-exit v1

    return-void

    .line 864
    :cond_34
    :goto_34
    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    .line 873
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 888
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;ZI)V

    return-void
.end method

.method public logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;ZI)V
    .registers 34
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;",
            "Landroid/content/ComponentName;",
            "ZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move/from16 v4, p12

    const-string/jumbo v5, "logDatasetNotSelected()"

    .line 907
    invoke-virtual {v0, v5, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_128

    .line 908
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_8f

    .line 909
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logContextCommitted() with FieldClassification: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", selectedDatasets="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", ignoredDatasetIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changedAutofillIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changedDatasetIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", manuallyFilledFieldIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", detectedFieldIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", detectedFieldClassifications="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", appComponentName="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual/range {p11 .. p11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", compatMode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", saveDialogNotShowReason="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p13

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "AutofillManagerServiceImpl"

    .line 909
    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :cond_8f
    move-object/from16 v6, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move/from16 v11, p13

    :goto_9b
    const/4 v5, 0x0

    if-eqz v2, :cond_107

    .line 924
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [Landroid/view/autofill/AutofillId;

    .line 925
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 927
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/service/autofill/FieldClassification;

    .line 928
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_b3
    if-ge v9, v5, :cond_db

    .line 934
    aget-object v16, v2, v9

    .line 935
    invoke-virtual/range {v16 .. v16}, Landroid/service/autofill/FieldClassification;->getMatches()Ljava/util/List;

    move-result-object v8

    move-object/from16 v16, v2

    .line 936
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v10, v2

    const/4 v6, 0x0

    :goto_c3
    if-ge v6, v2, :cond_d4

    .line 939
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual/range {v17 .. v17}, Landroid/service/autofill/FieldClassification$Match;->getScore()F

    move-result v17

    add-float v3, v3, v17

    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    :cond_d4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p3

    move-object/from16 v2, v16

    goto :goto_b3

    :cond_db
    move-object/from16 v16, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v3, v2

    int-to-float v2, v10

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 944
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v6, 0x4f9

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p11

    .line 945
    invoke-static {v6, v9, v8, v1, v4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 947
    invoke-virtual {v1, v5}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v4, 0x4fa

    .line 949
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 948
    invoke-virtual {v1, v4, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 944
    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object/from16 v17, v7

    move-object/from16 v18, v16

    goto :goto_10b

    :cond_107
    move-object/from16 v17, v5

    move-object/from16 v18, v17

    .line 951
    :goto_10b
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v1, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v7, v1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v19, p13

    invoke-direct/range {v7 .. v19}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;I)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    :cond_128
    return-void
.end method

.method public logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 19

    move-object v0, p0

    .line 784
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    const-string/jumbo v2, "logDatasetAuthenticationSelected()"

    move/from16 v3, p2

    .line 785
    invoke-virtual {p0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 786
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v14, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v14}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 790
    :cond_27
    monitor-exit v1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 22

    move-object/from16 v0, p0

    .line 810
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    const-string/jumbo v2, "logDatasetSelected()"

    move/from16 v3, p2

    .line 811
    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 812
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v16, v15

    move/from16 v15, p4

    invoke-direct/range {v2 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 817
    :cond_2f
    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public logDatasetShown(ILandroid/os/Bundle;I)V
    .registers 21

    move-object/from16 v0, p0

    .line 824
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    const-string/jumbo v2, "logDatasetShown"

    move/from16 v3, p1

    .line 825
    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 826
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v15

    move-object/from16 v5, p2

    move-object/from16 v16, v15

    move/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 831
    :cond_2e
    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public logSaveShown(ILandroid/os/Bundle;)V
    .registers 16

    .line 797
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "logSaveShown()"

    .line 798
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 799
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance p1, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v12}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 802
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 242
    new-instance v0, Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 243
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public onBackKeyPressed()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 214
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    :cond_9
    return-void
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 7

    .line 659
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_23

    const-string v0, "AutofillManagerServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPendingSaveUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_23
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_26
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2e
    if-ltz v1, :cond_46

    .line 663
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 664
    invoke-virtual {v2, p2}, Lcom/android/server/autofill/Session;->isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 665
    invoke-virtual {v2, p1, p2}, Lcom/android/server/autofill/Session;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 666
    monitor-exit v0

    return-void

    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 669
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_73

    .line 670
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_72

    const-string p0, "AutofillManagerServiceImpl"

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No pending Save UI for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and operation "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Landroid/view/autofill/AutofillManager;

    const-string v1, "PENDING_UI_OPERATION_"

    int-to-long v2, p1

    .line 672
    invoke-static {p2, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    return-void

    :catchall_73
    move-exception p0

    .line 669
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public onSwitchInputMethod()V
    .registers 5

    .line 1628
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1629
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 1631
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 1632
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->onSwitchInputMethodLocked()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1634
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final pruneAbandonedSessionsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 404
    iget-wide v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    const-wide/16 v4, 0x7530

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_24

    .line 405
    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 407
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 408
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_24
    return-void
.end method

.method public removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 278
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_7

    .line 279
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_7
    return-void
.end method

.method public removeSessionLocked(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 620
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public requestSavedPasswordCount(Lcom/android/internal/os/IResultReceiver;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1198
    new-instance v6, Lcom/android/server/autofill/RemoteFillService;

    .line 1200
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->isInstantServiceAllowed()Z

    move-result v5

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    .line 1202
    invoke-virtual {v6, p1}, Lcom/android/server/autofill/RemoteFillService;->onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public resetAugmentedAutofillWhitelistLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1431
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_10

    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "resetting augmented autofill whitelist"

    .line 1432
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_10
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/GlobalWhitelistState;->resetWhitelist(I)V

    return-void
.end method

.method public resetExtServiceLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 688
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_c

    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "reset autofill service."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->reset()V

    return-void
.end method

.method public resetLastAugmentedAutofillResponse()V
    .registers 3

    .line 745
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 746
    :try_start_4
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 747
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public resetLastResponse()V
    .registers 3

    .line 739
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 740
    :try_start_4
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 741
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 5

    .line 582
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/Session;

    if-eqz p0, :cond_14

    .line 584
    iget p1, p0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, p1, :cond_f

    goto :goto_14

    .line 587
    :cond_f
    invoke-virtual {p0, p3, p4}, Lcom/android/server/autofill/Session;->switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public sendActivityAssistDataToContentCapture(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_d

    .line 202
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->sendActivityAssistData(ILandroid/os/IBinder;Landroid/os/Bundle;)Z

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final sendStateToClients(Z)V
    .registers 10

    .line 1440
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_9

    .line 1442
    monitor-exit v0

    return-void

    .line 1445
    :cond_9
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1446
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_54

    const/4 v0, 0x0

    move v3, v0

    :goto_10
    if-ge v3, v2, :cond_50

    .line 1449
    :try_start_12
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_4b

    .line 1453
    :try_start_18
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_48
    .catchall {:try_start_18 .. :try_end_1b} :catchall_4b

    if-nez p1, :cond_28

    .line 1454
    :try_start_1d
    invoke-virtual {p0, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z

    move-result v6

    if-eqz v6, :cond_24

    goto :goto_28

    :cond_24
    move v6, v0

    goto :goto_29

    :catchall_26
    move-exception v4

    goto :goto_46

    :cond_28
    :goto_28
    const/4 v6, 0x1

    .line 1455
    :goto_29
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v7

    .line 1456
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_26

    if-eqz v6, :cond_32

    or-int/lit8 v7, v7, 0x2

    :cond_32
    if-eqz p1, :cond_36

    or-int/lit8 v7, v7, 0x4

    .line 1467
    :cond_36
    :try_start_36
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_3c

    or-int/lit8 v7, v7, 0x8

    .line 1470
    :cond_3c
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_42

    or-int/lit8 v7, v7, 0x10

    .line 1473
    :cond_42
    invoke-interface {v4, v7}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_45} :catch_48
    .catchall {:try_start_36 .. :try_end_45} :catchall_4b

    goto :goto_48

    .line 1456
    :goto_46
    :try_start_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_26

    :try_start_47
    throw v4
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_48} :catch_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4b

    :catch_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catchall_4b
    move-exception p0

    .line 1479
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1480
    throw p0

    .line 1479
    :cond_50
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catchall_54
    move-exception p0

    .line 1446
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public setAugmentedAutofillWhitelistLocked(Ljava/util/List;Ljava/util/List;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;I)Z"
        }
    .end annotation

    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked"

    .line 1343
    invoke-virtual {p0, v0, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_b

    const/4 p0, 0x0

    return p0

    .line 1347
    :cond_b
    iget-object p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p3, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v0, "AutofillManagerServiceImpl"

    if-eqz p3, :cond_37

    .line 1348
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAugmentedAutofillWhitelistLocked(packages="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activities="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_37
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->whitelistForAugmentedAutofillPackages(Ljava/util/List;Ljava/util/List;)V

    .line 1353
    iget-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p3, :cond_47

    .line 1354
    invoke-virtual {p3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    .line 1355
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4f

    :cond_47
    const-string/jumbo p3, "setAugmentedAutofillWhitelistLocked(): no service"

    .line 1357
    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "N/A"

    .line 1361
    :goto_4f
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6b9

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0x38c

    .line 1362
    invoke-virtual {v0, v1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p3

    if-eqz p1, :cond_6b

    const/16 v0, 0x6ba

    .line 1364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_6b
    if-eqz p2, :cond_7a

    const/16 p1, 0x6bb

    .line 1367
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1369
    :cond_7a
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setAuthenticationResultLocked(Landroid/os/Bundle;III)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 288
    :cond_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/Session;

    if-eqz p0, :cond_20

    .line 289
    iget p2, p0, Lcom/android/server/autofill/Session;->uid:I

    if-ne p4, p2, :cond_20

    .line 290
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 291
    :try_start_18
    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/Session;->setAuthenticationResultLocked(Landroid/os/Bundle;I)V

    .line 292
    monitor-exit p2

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    return-void
.end method

.method public setAuthenticationSelected(ILandroid/os/Bundle;)V
    .registers 16

    .line 770
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "setAuthenticationSelected()"

    .line 771
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 772
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance p1, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v12}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 776
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public setAutofillFailureLocked(IILjava/util/List;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 418
    :cond_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/Session;

    if-eqz p0, :cond_1a

    .line 419
    iget v0, p0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v0, :cond_16

    goto :goto_1a

    .line 423
    :cond_16
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->setAutofillFailureLocked(Ljava/util/List;)V

    return-void

    .line 420
    :cond_1a
    :goto_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAutofillFailure(): no session for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHasCallback(IIZ)V
    .registers 5

    .line 297
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/Session;

    if-eqz p1, :cond_20

    .line 301
    iget v0, p1, Lcom/android/server/autofill/Session;->uid:I

    if-ne p2, v0, :cond_20

    .line 302
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 303
    :try_start_18
    invoke-virtual {p1, p3}, Lcom/android/server/autofill/Session;->setHasCallbackLocked(Z)V

    .line 304
    monitor-exit p0

    goto :goto_20

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p1

    :cond_20
    :goto_20
    return-void
.end method

.method public setLastAugmentedAutofillResponse(I)V
    .registers 5

    .line 729
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    new-instance v1, Landroid/service/autofill/FillEventHistory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 732
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public setLastResponse(ILandroid/service/autofill/FillResponse;)V
    .registers 5

    .line 723
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_3
    new-instance v1, Landroid/service/autofill/FillEventHistory;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 725
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setUserData(ILandroid/service/autofill/UserData;)V
    .registers 6

    .line 999
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "setUserData"

    .line 1000
    invoke-virtual {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1001
    monitor-exit v0

    return-void

    .line 1003
    :cond_e
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    if-nez p2, :cond_14

    const/4 p1, 0x0

    goto :goto_19

    .line 1005
    :cond_14
    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    .line 1008
    :goto_19
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x4f8

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v1, 0x392

    .line 1010
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 1008
    invoke-virtual {p2, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1011
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J
    .registers 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p9

    move/from16 v13, p12

    and-int/lit8 v1, v13, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 325
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v3

    if-nez v3, :cond_19

    if-nez v1, :cond_19

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_19
    const/4 v14, 0x0

    const-wide/32 v15, 0x7fffffff

    if-nez v1, :cond_97

    .line 329
    invoke-virtual {v0, v12}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 332
    invoke-virtual {v0, v12}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 333
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_4b

    const-string v1, "AutofillManagerServiceImpl"

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startSession("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): disabled by service but whitelisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move v11, v2

    goto :goto_98

    .line 340
    :cond_4d
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_6d

    const-string v0, "AutofillManagerServiceImpl"

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): ignored because disabled by service and not whitelisted for augmented autofill"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_6d
    invoke-static/range {p4 .. p4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    const/4 v1, 0x4

    .line 347
    :try_start_72
    invoke-interface {v0, v1, v14}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_96

    :catch_76
    move-exception v0

    move-object v1, v0

    const-string v0, "AutofillManagerServiceImpl"

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that it\'s disabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    return-wide v15

    :cond_97
    move v11, v1

    .line 358
    :goto_98
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_c6

    const-string v1, "AutofillManagerServiceImpl"

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession(): token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", forAugmentedAutofillOnly="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    :cond_c6
    move-object/from16 v3, p1

    .line 364
    :goto_c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->pruneAbandonedSessionsLocked()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move v10, v11

    move v14, v11

    move/from16 v11, p12

    .line 366
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->createSessionByTokenLocked(Landroid/os/IBinder;IILandroid/os/IBinder;ZLandroid/content/ComponentName;ZZZI)Lcom/android/server/autofill/Session;

    move-result-object v6

    if-nez v6, :cond_e8

    return-wide v15

    .line 374
    :cond_e8
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v1, :cond_ee

    const/4 v1, 0x0

    goto :goto_f4

    :cond_ee
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 375
    :goto_f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " i="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " f="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " aa="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 382
    iget-object v7, v6, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v4, 0x1

    move-object v0, v6

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v5, p12

    .line 383
    :try_start_172
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 384
    monitor-exit v7
    :try_end_176
    .catchall {:try_start_172 .. :try_end_176} :catchall_186

    if-eqz v14, :cond_182

    const-wide v0, 0x100000000L

    .line 391
    iget v2, v6, Lcom/android/server/autofill/Session;->id:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0

    .line 394
    :cond_182
    iget v0, v6, Lcom/android/server/autofill/Session;->id:I

    int-to-long v0, v0

    return-wide v0

    :catchall_186
    move-exception v0

    .line 384
    :try_start_187
    monitor-exit v7
    :try_end_188
    .catchall {:try_start_187 .. :try_end_188} :catchall_186

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutofillManagerServiceImpl: [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz p0, :cond_21

    .line 1641
    invoke-virtual {p0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateLocked(Z)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveAllSessionsLocked()V

    .line 222
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 224
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_27

    .line 225
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_27

    .line 227
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/Session;

    .line 228
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_27
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 233
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 234
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteInlineSuggestionRenderServiceLocked()V

    return p1
.end method

.method public updateRemoteAugmentedAutofillService()V
    .registers 6

    .line 1292
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-eqz v1, :cond_23

    .line 1294
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_13

    const-string v1, "AutofillManagerServiceImpl"

    const-string/jumbo v2, "updateRemoteAugmentedAutofillService(): destroying old remote service"

    .line 1295
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveForAugmentedOnlySessionsLocked()V

    .line 1299
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v1, 0x0

    .line 1300
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1301
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetAugmentedAutofillWhitelistLocked()V

    .line 1305
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    move-result v1

    .line 1306
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_42

    const-string v2, "AutofillManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRemoteAugmentedAutofillService(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    if-eqz v1, :cond_4a

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1311
    :cond_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final updateRemoteInlineSuggestionRenderServiceLocked()V
    .registers 3

    .line 1587
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-eqz v0, :cond_13

    .line 1588
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_10

    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "updateRemoteInlineSuggestionRenderService(): destroying old remote service"

    .line 1589
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v0, 0x0

    .line 1592
    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1595
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    return-void
.end method

.method public updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 598
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/Session;

    const/4 p0, 0x0

    if-eqz v0, :cond_1a

    .line 599
    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq v1, p2, :cond_11

    goto :goto_1a

    :cond_11
    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 614
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    return p0

    :cond_1a
    :goto_1a
    const/4 p4, 0x1

    and-int/lit8 p5, p7, 0x1

    const-string p6, "AutofillManagerServiceImpl"

    if-eqz p5, :cond_43

    .line 601
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_42

    .line 602
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "restarting session "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to manual request on "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return p4

    .line 607
    :cond_43
    sget-boolean p3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p3, :cond_69

    .line 608
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateSessionLocked(): session gone for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return p0
.end method

.method public final whitelistForAugmentedAutofillPackages(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_2a

    const-string v1, "AutofillManagerServiceImpl"

    .line 1420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "whitelisting packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "and activities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_2a
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 1423
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method
