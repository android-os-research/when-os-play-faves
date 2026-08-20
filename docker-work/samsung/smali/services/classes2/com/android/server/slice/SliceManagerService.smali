.class public Lcom/android/server/slice/SliceManagerService;
.super Landroid/app/slice/ISliceManager$Stub;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceManagerService$SliceGrant;,
        Lcom/android/server/slice/SliceManagerService$Lifecycle;,
        Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;,
        Lcom/android/server/slice/SliceManagerService$RoleObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SliceManagerService"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mAssistantLookup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field public mCachedDefaultHome:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mHomeLookup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissions:Lcom/android/server/slice/SlicePermissionManager;

.field public final mPinnedSlicesByUri:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/android/server/slice/PinnedSliceState;",
            ">;"
        }
    .end annotation
.end field

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRoleObserver:Lcom/android/server/slice/SliceManagerService$RoleObserver;


# direct methods
.method public static synthetic $r8$lambda$70hZecvOQgg2dMaz_Didfxa8FUE(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/slice/SliceManagerService;->lambda$pinSlice$1(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NO9wQZwmcxnNiNsBjPKFwchU8f8(ILcom/android/server/slice/PinnedSliceState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/slice/SliceManagerService;->lambda$onStopUser$0(ILcom/android/server/slice/PinnedSliceState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$casLo5TQQc1jzXW6CN8fQ9dLNxE(Lcom/android/server/slice/SliceManagerService;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->lambda$getHomeMatcher$3(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gHWQwg_pEUS0qDxfgC2H-mipbag(Lcom/android/server/slice/SliceManagerService;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->lambda$getAssistantMatcher$2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/slice/SliceManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissions(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/slice/SliceManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onStopUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/slice/SliceManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onUnlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msystemReady(Lcom/android/server/slice/SliceManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->systemReady()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 107
    invoke-static {}, Lcom/android/server/slice/SliceManagerService;->createHandler()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0}, Landroid/app/slice/ISliceManager$Stub;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 485
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    .line 598
    new-instance v2, Lcom/android/server/slice/SliceManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/slice/SliceManagerService$1;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    iput-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 113
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 114
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 113
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 115
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 116
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 117
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 119
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 121
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 123
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 124
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 125
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p2, "package"

    .line 126
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 127
    new-instance p2, Lcom/android/server/slice/SliceManagerService$RoleObserver;

    invoke-direct {p2, p0}, Lcom/android/server/slice/SliceManagerService$RoleObserver;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    iput-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mRoleObserver:Lcom/android/server/slice/SliceManagerService$RoleObserver;

    .line 128
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static createHandler()Lcom/android/server/ServiceThread;
    .registers 4

    .line 592
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "SliceManagerService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 594
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method

.method private synthetic lambda$getAssistantMatcher$2(I)Ljava/lang/String;
    .registers 2

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getAssistant(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getHomeMatcher$3(I)Ljava/lang/String;
    .registers 2

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onStopUser$0(ILcom/android/server/slice/PinnedSliceState;)Z
    .registers 2

    .line 140
    invoke-virtual {p1}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$pinSlice$1(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    if-eqz p1, :cond_1f

    .line 175
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 176
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 177
    invoke-virtual {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_1a

    :cond_17
    const/16 p0, 0xe

    goto :goto_1c

    :cond_1a
    :goto_1a
    const/16 p0, 0xd

    .line 176
    :goto_1c
    invoke-virtual {v0, p1, p3, p0}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .registers 5

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5b

    const-string v0, "SliceManagerService"

    if-nez p1, :cond_21

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyRestore: no payload to restore for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    if-eqz p2, :cond_38

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyRestore: cannot restore policy for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_38
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 331
    :try_start_3d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 332
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_53} :catch_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    move-exception p0

    const-string p1, "applyRestore: error reading payload"

    .line 335
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    return-void

    .line 318
    :cond_5b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I
    .registers 12

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move v4, p4

    move v5, p3

    .line 398
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    .line 231
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-nez v1, :cond_3d

    .line 233
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    move v6, v13

    :goto_20
    if-ge v6, v15, :cond_3c

    aget-object v3, v14, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v16, v6

    move-object/from16 v6, p6

    .line 234
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_39

    return v13

    :cond_39
    add-int/lit8 v6, v16, 0x1

    goto :goto_20

    :cond_3c
    return v12

    .line 241
    :cond_3d
    invoke-virtual {v7, v1, v2}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_44

    return v13

    .line 244
    :cond_44
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/slice/SlicePermissionManager;->hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v13

    :cond_4d
    if-eqz v11, :cond_7c

    if-eqz v9, :cond_7c

    .line 249
    invoke-virtual {v7, v9, v8, v2}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 251
    invoke-virtual {v7, v9}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 252
    array-length v0, v11

    move v3, v13

    :goto_59
    if-ge v3, v0, :cond_7c

    aget-object v4, v11, v3

    .line 253
    iget-object v5, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    move/from16 v6, p4

    invoke-virtual {v5, v4, v6, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_79

    .line 254
    invoke-static {v8, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 255
    invoke-virtual {v7, v8, v4}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 256
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object/from16 v1, p3

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    return v13

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_7c
    return v12
.end method

.method public createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 382
    new-instance v0, Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/slice/PinnedSliceState;-><init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public final enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/slice/SliceManagerService;->checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    if-eqz v0, :cond_41

    .line 425
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 424
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 426
    invoke-virtual {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_41

    .line 427
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Access to slice "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 430
    :cond_41
    :goto_41
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public final enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 414
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 415
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p2

    if-eq p2, p1, :cond_19

    .line 416
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string p2, "Slice interaction across users requires INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public final enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 4

    .line 347
    invoke-virtual {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    return-void

    .line 348
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caller must own "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 628
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 629
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 630
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 631
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    .line 632
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAssistant(I)Ljava/lang/String;
    .registers 2

    .line 475
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 479
    :cond_a
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    if-nez v0, :cond_19

    .line 459
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 460
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    return-object v0
.end method

.method public getBackupPayload(I)[B
    .registers 7

    .line 292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5b

    const/4 v0, 0x0

    const-string v1, "SliceManagerService"

    if-eqz p1, :cond_22

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPayload: cannot backup policy for user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 300
    :cond_22
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 302
    :try_start_27
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 303
    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v4}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 307
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 308
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload: error writing payload for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 293
    :cond_5b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 390
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDefaultHome(I)Ljava/lang/String;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 502
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 504
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 507
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 508
    invoke-virtual {v3, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1c

    .line 515
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_1c
    move-object v4, v3

    :goto_1d
    iput-object v4, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    if-nez p1, :cond_4b

    .line 524
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    :goto_28
    if-ge v5, p0, :cond_4b

    .line 528
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 529
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_3b

    goto :goto_48

    .line 532
    :cond_3b
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v7, v4, :cond_40

    goto :goto_48

    .line 535
    :cond_40
    iget-object p1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 536
    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_4b
    if-eqz p1, :cond_51

    .line 539
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_55

    .line 548
    :cond_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_55
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 394
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    if-nez v0, :cond_19

    .line 468
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 469
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public final getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    if-nez v1, :cond_16

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v1

    .line 374
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_16
    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception p0

    .line 377
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;
    .registers 6

    .line 359
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_3
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/slice/PinnedSliceState;

    if-eqz p0, :cond_f

    .line 365
    monitor-exit v0

    return-object p0

    .line 362
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Slice %s not pinned"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 363
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 362
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_25
    move-exception p0

    .line 366
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;
    .registers 7

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_13
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/slice/PinnedSliceState;

    .line 152
    invoke-virtual {v3}, Lcom/android/server/slice/PinnedSliceState;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 153
    invoke-virtual {v3}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 154
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    if-ne v4, v0, :cond_1d

    .line 156
    invoke-static {v3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 160
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_53

    .line 161
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Uri;

    return-object p0

    :catchall_53
    move-exception p0

    .line 160
    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p2, p1}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getSpecs()[Landroid/app/slice/SliceSpec;

    move-result-object p0

    return-object p0
.end method

.method public final getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 7

    .line 402
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 404
    :try_start_4
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 405
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 406
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    .line 405
    invoke-virtual {p0, v2, v3, p1}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    .line 407
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    throw p0
.end method

.method public grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 266
    invoke-virtual {p0, p3}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "android.permission.MANAGE_SLICE_PERMISSIONS"

    const-string v1, "Slice granting requires MANAGE_SLICE_PERMISSIONS"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eqz p4, :cond_1e

    .line 271
    iget-object p3, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p3, p2, v2}, Lcom/android/server/slice/SlicePermissionManager;->grantFullAccess(Ljava/lang/String;I)V

    goto :goto_3a

    .line 274
    :cond_1e
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string p4, ""

    .line 275
    invoke-virtual {p3, p4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 276
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 277
    invoke-static {v5, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 278
    invoke-virtual {p0, v5, v4}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 279
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 281
    :goto_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 283
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_4c

    .line 285
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    throw p0
.end method

.method public grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 216
    invoke-virtual {p0, p1, p3, v5}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 217
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v5

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method public final hasFullSliceAccess(Ljava/lang/String;I)Z
    .registers 6

    .line 438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 440
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isGrantedFullAccess(Ljava/lang/String;I)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1e

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    .line 444
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    throw p0
.end method

.method public hasSliceAccess(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public invalidateCachedDefaultHome()V
    .registers 2

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    return-void
.end method

.method public final isAssistant(Ljava/lang/String;I)Z
    .registers 3

    .line 449
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultHomeApp(Ljava/lang/String;I)Z
    .registers 3

    .line 453
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isGrantedFullAccess(Ljava/lang/String;I)Z
    .registers 3

    .line 588
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager;->hasFullAccess(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 342
    new-instance v0, Lcom/android/server/slice/SliceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceShellCommand;-><init>(Lcom/android/server/slice/SliceManagerService;)V

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

.method public final onStopUser(I)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 141
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 170
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 171
    invoke-virtual {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p0, p2, v1}, Lcom/android/server/slice/SliceManagerService;->getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/slice/PinnedSliceState;->pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V

    .line 174
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, v1, p1, v0}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removePinnedSlice(Landroid/net/Uri;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/slice/PinnedSliceState;

    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->destroy()V

    .line 355
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 224
    invoke-virtual {p0, p1, p3, v5}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 225
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v5

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method public final systemReady()V
    .registers 1

    return-void
.end method

.method public unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 189
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 190
    invoke-virtual {v0, p1, p3}, Lcom/android/server/slice/PinnedSliceState;->unpin(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 191
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_2c

    :catch_22
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SliceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final verifyCaller(Ljava/lang/String;)V
    .registers 3

    .line 434
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method
