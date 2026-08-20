.class public final Lcom/android/server/policy/AppOpsPolicy;
.super Ljava/lang/Object;
.source "AppOpsPolicy.java"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# static fields
.field public static final ACTIVITY_RECOGNITION_TAGS:Ljava/lang/String; = "android:activity_recognition_allow_listed_tags"

.field public static final ACTIVITY_RECOGNITION_TAGS_SEPARATOR:Ljava/lang/String; = ";"

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock - writes only - see above"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mIsHotwordDetectionServiceRequired:Z

.field public final mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock - writes only - see above"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPerUidLocationTags:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mToken:Landroid/os/IBinder;

.field public final mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$PLVLc0ZBI1a8CjJ53-mT9aInSik(Lcom/android/server/policy/AppOpsPolicy;ILandroid/os/PackageTagsList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->lambda$new$0(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aO_NnaJwsQZMgs1gEAW5MdOJKO0(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->lambda$new$1(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleManager(Lcom/android/server/policy/AppOpsPolicy;)Landroid/app/role/RoleManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateActivityRecognizerTags(Lcom/android/server/policy/AppOpsPolicy;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mToken:Landroid/os/IBinder;

    .line 103
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 117
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    .line 124
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    .line 125
    const-class v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VoiceInteractionManagerInternal;

    iput-object v2, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lcom/android/server/policy/AppOpsPolicy;->isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    .line 130
    const-class v2, Landroid/location/LocationManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManagerInternal;

    .line 132
    new-instance v3, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    invoke-virtual {v2, v3}, Landroid/location/LocationManagerInternal;->setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V

    .line 155
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 156
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 157
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 158
    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    new-instance v5, Lcom/android/server/policy/AppOpsPolicy$1;

    invoke-direct {v5, p0}, Lcom/android/server/policy/AppOpsPolicy$1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.telephony"

    .line 191
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bc

    const-string v1, "android.hardware.microphone"

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bc

    const-string v1, "android.software.telecom"

    .line 193
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_bc

    .line 194
    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-object v4, v0

    .line 195
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    const/16 v2, 0x65

    .line 197
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    :cond_bc
    return-void
.end method

.method public static isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;)Z"
        }
    .end annotation

    .line 402
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PackageTagsList;

    if-eqz p0, :cond_18

    .line 403
    invoke-virtual {p0, p1, p2}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(ILandroid/os/PackageTagsList;)V
    .registers 7

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    invoke-virtual {p2}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 136
    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14

    .line 138
    :cond_f
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 141
    :goto_14
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 142
    new-instance p2, Landroid/os/PackageTagsList$Builder;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    .line 143
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_41

    .line 145
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_3e

    .line 146
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PackageTagsList;

    invoke-virtual {p2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 150
    :cond_41
    invoke-virtual {p2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2, p0}, Lcom/android/server/policy/AppOpsPolicy;->updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    const-string p2, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 182
    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    :cond_b
    return-void
.end method

.method public static resolveArOp(I)I
    .registers 2

    const/16 v0, 0x4f

    if-ne p0, v0, :cond_6

    const/16 p0, 0x71

    :cond_6
    return p0
.end method

.method public static resolveLocationOp(I)I
    .registers 2

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    return p0

    :cond_6
    const/16 p0, 0x6c

    return p0

    :cond_9
    const/16 p0, 0x6d

    return p0
.end method

.method public static updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/PackageTagsList;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;)V"
        }
    .end annotation

    .line 396
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/QuintFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p6

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final clearActivityRecognitionTags()V
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 356
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public dumpTags(Ljava/io/PrintWriter;)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "  AppOps policy location tags:"

    .line 294
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 296
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 298
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "  AppOps policy activity recognition tags:"

    .line 299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2a
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 276
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p6

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    .line 275
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 284
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 285
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 283
    invoke-interface {p5, p1, p0, p3, p2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final initializeActivityRecognizersTags()V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_20

    .line 345
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    invoke-virtual {p0, v3}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 349
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->clearActivityRecognitionTags()V

    :cond_20
    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/HeptFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 227
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v1, p8

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    .line 225
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/internal/util/function/HexFunction<",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 236
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 237
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 238
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 239
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p7

    move-object v2, p2

    move-object v4, p4

    .line 236
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public final resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveRecordAudioOp(II)I

    move-result p1

    if-nez p4, :cond_7

    return p1

    .line 321
    :cond_7
    invoke-static {p1}, Lcom/android/server/policy/AppOpsPolicy;->resolveLocationOp(I)I

    move-result v0

    if-eq v0, p1, :cond_16

    .line 323
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p0}, Lcom/android/server/policy/AppOpsPolicy;->isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_25

    return v0

    .line 328
    :cond_16
    invoke-static {p1}, Lcom/android/server/policy/AppOpsPolicy;->resolveArOp(I)I

    move-result v0

    if-eq v0, p1, :cond_25

    .line 330
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p0}, Lcom/android/server/policy/AppOpsPolicy;->isDatasourceAttributionTag(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_25

    return v0

    :cond_25
    return p1
.end method

.method public final resolveRecordAudioOp(II)I
    .registers 4

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1b

    .line 425
    iget-boolean v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    if-nez v0, :cond_9

    return p1

    .line 430
    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 431
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 433
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result p0

    if-ne p2, p0, :cond_18

    return p1

    :cond_18
    const/16 p0, 0x1b

    return p0

    :cond_1b
    return p1
.end method

.method public final resolveUid(II)I
    .registers 4

    .line 447
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_e

    const/16 v0, 0x66

    if-ne p1, v0, :cond_20

    .line 450
    :cond_e
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 451
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 453
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result p1

    if-ne p2, p1, :cond_20

    .line 454
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    move-result p2

    :cond_20
    return p2
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 250
    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 251
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 252
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 253
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p12

    move-object v1, p1

    move-object v2, v3

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, p8

    .line 250
    invoke-interface/range {v0 .. v11}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZIII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    move v4, p2

    .line 264
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 266
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 267
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 268
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v1, p12

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    .line 264
    invoke-interface/range {v1 .. v12}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0
.end method

.method public final updateActivityRecognizerTags(Ljava/lang/String;)V
    .registers 6

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTIVITY_RECOGNIZER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object p1, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const v1, 0xc8084

    const/4 v2, 0x0

    .line 369
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 370
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1f

    goto :goto_64

    .line 375
    :cond_1f
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_24

    return-void

    :cond_24
    const-string v1, "android:activity_recognition_allow_listed_tags"

    .line 379
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 381
    new-instance v1, Landroid/os/PackageTagsList$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, ";"

    .line 383
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 381
    invoke-virtual {v1, v2, v0}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_4f
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 386
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 385
    invoke-static {p1, v0, p0}, Lcom/android/server/policy/AppOpsPolicy;->updateAllowListedTagsForPackageLocked(ILandroid/os/PackageTagsList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 389
    monitor-exit v1

    goto :goto_63

    :catchall_60
    move-exception p0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_60

    throw p0

    :cond_63
    :goto_63
    return-void

    .line 371
    :cond_64
    :goto_64
    sget-object p0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Service recognizer doesn\'t handle android.intent.action.ACTIVITY_RECOGNIZER, ignoring!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/PackageTagsList;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 307
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "    #"

    .line 308
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PackageTagsList;

    invoke-virtual {p1, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    move p1, v1

    goto :goto_9

    :cond_41
    return-void
.end method
