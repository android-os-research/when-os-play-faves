.class public Lcom/android/server/am/ActivityManagerServiceExt;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;,
        Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;,
        Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;,
        Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;,
        Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;
    }
.end annotation


# static fields
.field public static final CSC_VERSION:Ljava/lang/String;

.field public static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KEEP_PACKAGES:Ljava/lang/String; = "keep_packages"

.field public static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KILL_PACKAGES:Ljava/lang/String; = "kill_packages"

.field public static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_SKIP_SDK_VERSION_CHECK:Ljava/lang/String; = "skip_sdk_version_check"

.field public static final KEY_NEVER_KILL_PACKAGE:Ljava/lang/String; = "KEY_NEVER_KILL_PACKAGE"

.field public static final KEY_NEVER_KILL_PID:Ljava/lang/String; = "KEY_NEVER_KILL_PID"

.field public static MAX_LONG_LIVE_APP:I = 0x0

.field public static final PERSISTENT_MASK:I = 0x9

.field public static final PREF_LONG_LIVE_KEY:Ljava/lang/String; = "LONG_LIVE_BY_PACKAGE"

.field public static final PREF_LONG_LIVE_NAME:Ljava/lang/String; = "multiwindow.property"

.field public static final PREF_LONG_LIVE_VER:Ljava/lang/String; = "LONG_LIVE_VERSION"

.field public static final PRE_BOOT_CSC_FILE:Ljava/io/File;

.field public static final PRE_BOOT_CSC_FILENAME:Ljava/lang/String; = "pre_boot_csc.dat"

.field public static final TAG:Ljava/lang/String; = "ActivityManagerServiceExt"

.field public static final TYPE_PROCESS:I = 0x0

.field public static final TYPE_TASK:I = 0x1

.field public static final sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final MAX_ALLOWED_BR_CNT:I

.field public final MAX_ALLOWED_BR_CNT_FOR_NULL:I

.field public final MAX_DISCARD_BR_HISTORY:I

.field public final TMO_PKG_NAME:Ljava/lang/String;

.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBgHandler:Landroid/os/Handler;

.field public mBrAllowListCallback:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

.field public mBrMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public mBroadcastReceiverNotInAllowlist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCanTmoPkgAvoidForceStop:Z

.field public mCb4Process:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDeXHandler:Landroid/os/Handler;

.field public mDeXKillProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mDexPrimaryProcessList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDiscardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mForceKeepAliveProcesses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mForceKillForDeXRunnable:Ljava/lang/Runnable;

.field public final mForceKillPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mForceStopReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

.field public mLongLiveAppByPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLongLiveCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

.field public mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

.field public mPref:Landroid/content/SharedPreferences;

.field public mRelaxedBroadcastActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final persistentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-SDCNGaMNbLFyhqs_9a0MegB058(Lcom/android/server/am/ActivityManagerServiceExt;ILjava/lang/String;ZLcom/android/server/am/ProcessRecord;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$markAsDedicatedProcessNameIfAliveLocked$6(ILjava/lang/String;ZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-n0DK-pZgz_K8KzqYQLibDBJbdM(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$markAsLongLivePackageIfAliveLocked$2(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oq9KjhIs8x7mdpjVmO-QfjbcjR8(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$setLongLiveProcess$7(Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RDYse6-U_05Cro82H4j1TevQRDk(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$dumpBrAllowList$10(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRSVe425AYQCmYMHnyWvByXXcyE(Lcom/android/server/am/ActivityManagerServiceExt;ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$markAsDedicatedProcessNameIfAliveLocked$5(ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YC0HE0qpKMgD2tdAUzCkOoc4Y3U(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$dumpBroadcastRecordCount$12(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJtqgAKZQL5aATsGsDx1y8vUChc(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$restoreAllAdjs$0(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2pkOsOJKU4l5mzjyRdcOe-PU60(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$intentFilterForReceiverAllowlist$9(Landroid/content/IntentFilter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Ow1B4bqlSx7mGUFZ5bIVpY76eE(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$dumpBroadcastRecordCount$11(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jkoahOiTlWebA5b_Ppa1EqgouUA(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$markAsLongLivePackageIfAliveLocked$1(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ku3-IpAxEwlMiyTIX2UTssOE8Fg(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$removeLongLivePackageLocked$4(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mzT8ukDvU18_nRPrLbU2O9drjwg(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$promoteAsLongLivePackageIfNeededLocked$3(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsDBX5NzLfM68wCZLlCBInzqtU8(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$promoteAsDedicatedLocked$8(Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeXKillProcesses(Lcom/android/server/am/ActivityManagerServiceExt;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXKillProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmParser(Lcom/android/server/am/ActivityManagerServiceExt;)Lcom/samsung/android/core/pm/BroadcastReceiverListParser;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmParser(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/samsung/android/core/pm/BroadcastReceiverListParser;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceKillProcessesForDeXExitLocked(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->forceKillProcessesForDeXExitLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ril.official_cscver"

    const-string v1, "DUMMY"

    .line 597
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    .line 604
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 605
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "pre_boot_csc.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    .line 639
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    .line 656
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_2f

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_30

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    sput v0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 9

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 665
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    .line 1012
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    const/4 v0, 0x0

    .line 1147
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    .line 1170
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    .line 1171
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    .line 1370
    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/ActivityManagerServiceExt$1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillForDeXRunnable:Ljava/lang/Runnable;

    .line 1384
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXKillProcesses:Ljava/util/ArrayList;

    .line 1460
    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/ActivityManagerServiceExt$2;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrAllowListCallback:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    .line 1489
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    .line 1490
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "android"

    const-string/jumbo v5, "system_server"

    invoke-static {v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mExceptionList:Ljava/util/ArrayList;

    .line 1491
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    const/16 v3, 0xa

    .line 1492
    iput v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_DISCARD_BR_HISTORY:I

    const/16 v3, 0x5dc

    .line 1493
    iput v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_ALLOWED_BR_CNT:I

    const/16 v3, 0xbb8

    .line 1494
    iput v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_ALLOWED_BR_CNT_FOR_NULL:I

    .line 1608
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    const-string v3, "com.android.systemui"

    .line 1649
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->persistentApps:Ljava/util/ArrayList;

    const-string v3, "com.tmobile.echolocate"

    .line 1664
    iput-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->TMO_PKG_NAME:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 122
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->parseAllowList()V

    .line 124
    sget-object p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrAllowListCallback:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->initRelaxedBroadcastActions()V

    .line 134
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    invoke-direct {p1, v0}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory-IA;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    .line 138
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Landroid/os/Handler;

    .line 140
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector-IA;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 141
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 145
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo p2, "installPackageLI"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo p2, "pkg removed"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo p1, "pkg changed"

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "com.tencent.mm"

    .line 151
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "com.tencent.mm:exdevice"

    .line 152
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "ActivityManagerServiceExt"

    const-string p1, "ActivityManagerServiceExt :: created"

    .line 158
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$dumpBrAllowList$10(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Packages :"

    .line 1446
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    :cond_43
    return-void
.end method

.method public static synthetic lambda$dumpBroadcastRecordCount$11(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;)V
    .registers 5

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cnt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " max="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpBroadcastRecordCount$12(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 5

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Package ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic lambda$intentFilterForReceiverAllowlist$9(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .registers 2

    .line 1435
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->removeAction(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$markAsDedicatedProcessNameIfAliveLocked$5(ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 938
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p3

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$markAsDedicatedProcessNameIfAliveLocked$6(ILjava/lang/String;ZLcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 935
    iget v0, p4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne p1, v0, :cond_18

    iget-object p1, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 936
    iput-boolean p3, p4, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 937
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_18
    return-void
.end method

.method private synthetic lambda$markAsLongLivePackageIfAliveLocked$1(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 798
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$markAsLongLivePackageIfAliveLocked$2(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 795
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 796
    iput-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 797
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;-><init>(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_21
    return-void
.end method

.method private synthetic lambda$promoteAsDedicatedLocked$8(Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 978
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$promoteAsLongLivePackageIfNeededLocked$3(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 838
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$removeLongLivePackageLocked$4(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 866
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetpackageName(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$restoreAllAdjs$0(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 785
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetpackageName(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setLongLiveProcess$7(Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 967
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 5

    .line 1065
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 1066
    iget p0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    sget p2, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result p0

    iput p0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    return-void
.end method

.method public addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 9

    .line 1049
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1050
    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_17

    return-void

    .line 1054
    :cond_17
    iget-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0xbb8

    cmp-long v0, v4, v0

    if-lez v0, :cond_41

    .line 1055
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 1056
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_BROADCAST_LOGS_TO_DROPBOX:Z

    if-eqz p0, :cond_37

    .line 1057
    iget-object p0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastQueue;->addDelayedBrToDropBox(Ljava/lang/String;)V

    .line 1059
    :cond_37
    iget p0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    sget p2, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, p0, v3, p2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result p0

    iput p0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    :cond_41
    return-void
.end method

.method public addDiscardBroadcastToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1542
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from="

    .line 1543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " key="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_3d

    .line 1546
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1548
    :cond_3d
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLongLivePackageLocked(Ljava/lang/String;)Z
    .registers 4

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "longLivePackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    .line 880
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    if-lt v0, v1, :cond_34

    goto :goto_41

    .line 884
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result p0

    return p0

    :cond_41
    :goto_41
    const/4 p0, 0x0

    return p0
.end method

.method public addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V
    .registers 4

    .line 310
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->-$$Nest$maddLocked(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V

    return-void
.end method

.method public broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .registers 5

    .line 1071
    new-instance p0, Ljava/io/CharArrayWriter;

    invoke-direct {p0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 1072
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1073
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    .line 1074
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 1075
    invoke-virtual {p0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public cancelKillProcessWhenDexExit()V
    .registers 4

    .line 1347
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1348
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillForDeXRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1349
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXKillProcesses:Ljava/util/ArrayList;

    .line 1350
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpBrAllowList(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1441
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1442
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "BroadcastReceiverNotInAllowlist"

    .line 1443
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1452
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    instance-of v0, p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;

    if-eqz v0, :cond_25

    .line 1454
    check-cast p0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->dump(Ljava/io/PrintWriter;)V

    :cond_25
    return-void
.end method

.method public dumpBroadcastRecordCount(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1583
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1584
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  **BroadcastRecord Count dump**"

    .line 1585
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda8;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1595
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 1596
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  **Discarded Broadcast dump**"

    .line 1597
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDiscardList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    :cond_51
    return-void
.end method

.method public dumpDexPrimaryProcess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 4

    .line 1624
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_45

    const-string p1, "    mDexPrimaryProcessList: size="

    .line 1625
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 1627
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1628
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1629
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    const-string v0, "     {packageName="

    .line 1630
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", app uid="

    .line 1631
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo p1, "}"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    :cond_45
    return-void
.end method

.method public dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
    .registers 16

    .line 1099
    iget p0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, p0

    move v4, v0

    move v3, v1

    .line 1101
    :cond_7
    sget v5, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v2, v1, v5}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v2

    .line 1103
    iget-object v5, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "]:"

    const-string v7, ":"

    const-string v8, " #"

    const/4 v9, 0x1

    if-nez v5, :cond_1b

    goto :goto_61

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_3f

    if-eqz p3, :cond_24

    .line 1110
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1113
    :cond_24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Aborted Historical broadcasts ["

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v9

    move v4, p3

    .line 1116
    :cond_3f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Aborted Historical Broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_61
    if-ne v2, p0, :cond_7

    .line 1123
    iget v5, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    move v2, v1

    move p0, v5

    .line 1125
    :cond_67
    sget v3, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, p0, v1, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result p0

    .line 1127
    iget-object v3, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    aget-object v3, v3, p0

    if-nez v3, :cond_74

    goto :goto_ba

    :cond_74
    add-int/lit8 v2, v2, 0x1

    if-nez v0, :cond_98

    if-eqz p3, :cond_7d

    .line 1134
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1137
    :cond_7d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Delayed Historical broadcasts ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v9

    move v0, p3

    .line 1140
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Delayed Historical Broadcast "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ba
    if-ne p0, v5, :cond_67

    return-void
.end method

.method public dumpLocaleChangedHistoryLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 4

    .line 306
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->-$$Nest$mdumpLocked(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dumpLongLivePackageLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 4

    .line 990
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 991
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_12

    const-string p1, "-------------------------------------------------------------------------------"

    .line 993
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    const-string p1, "ACTIVITY MANAGER - LONG LIVE APP"

    .line 995
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    longLiveAppByPackages: "

    .line 996
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "    Max="

    .line 998
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_2b
    return-void
.end method

.method public dumpMetaDataLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 3

    .line 589
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mdumpLocked(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final forceKillProcessesForDeXExitLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10

    .line 1355
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const-string v1, "ActivityManagerServiceExt"

    const/16 v2, 0xd

    if-le v0, v2, :cond_37

    const/4 v0, 0x1

    .line 1357
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 1358
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xd

    const-string/jumbo v7, "kill dex related process when exit"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 1361
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "kill dex related process succeeded - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 1363
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "kill dex related process failed for procstate - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1364
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1363
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void
.end method

.method public forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    .registers 20

    move-object v0, p0

    move-object v1, p1

    .line 1033
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    const-string v3, "com.samsung.android.persistent.downloadable"

    invoke-static {v2, p1, v3}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    .line 1036
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    move-object/from16 v9, p9

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceStopPackageLocked with revised flags for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManagerServiceExt"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v3

    goto :goto_34

    :cond_2f
    move-object/from16 v9, p9

    :cond_31
    move v3, p3

    move/from16 v6, p6

    .line 1041
    :goto_34
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAutoRemoveRecents(I)Z
    .registers 2

    .line 1007
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAutoRemoveRecents(I)Z

    move-result p0

    return p0
.end method

.method public getDedicatedProcessesLocked(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 982
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getDedicatedProcesses(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getDedicatedTaskIdsLocked(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 986
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getDedicatedTaskIds(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLongLivePackageLocked(I)Ljava/lang/String;
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 916
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLongLivePackagesLocked()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 923
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMaxLongLiveApps()I
    .registers 1

    .line 1003
    sget p0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    return p0
.end method

.method public getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 585
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mgetStringMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 7

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1613
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_b

    .line 1614
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1617
    :cond_33
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1618
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->skipToFinishActivities()Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x0

    .line 1619
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->setSkipToFinishActivities(Z)V

    :cond_42
    return-void
.end method

.method public hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 581
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public initLongLivePackageLocked()V
    .registers 4

    .line 758
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    .line 761
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow.property"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_10} :catch_10

    .line 765
    :catch_10
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerServiceExt;->migrateTo(Landroid/content/SharedPreferences;)V

    .line 767
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "LONG_LIVE_BY_PACKAGE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 769
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 770
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 771
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    goto :goto_2b

    :cond_3b
    return-void
.end method

.method public final initRelaxedBroadcastActions()V
    .registers 3

    .line 1149
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1151
    array-length v1, v0

    if-lez v1, :cond_1b

    .line 1153
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    :cond_1b
    return-void
.end method

.method public initTmoForceStopPolicy()V
    .registers 3

    .line 1672
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-string v1, "com.tmobile.echolocate"

    .line 1673
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCanTmoPkgAvoidForceStop:Z

    return-void
.end method

.method public intentFilterForReceiverAllowlist(Landroid/content/IIntentReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/IntentFilter;
    .registers 8

    if-eqz p3, :cond_9a

    if-eqz p4, :cond_9a

    if-eqz p1, :cond_9a

    if-eqz p2, :cond_d

    const/4 p1, -0x1

    if-eq p2, p1, :cond_d

    goto/16 :goto_9a

    .line 1402
    :cond_d
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    invoke-virtual {p1, p4}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->isInRestrictedPackageList(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    return-object p3

    .line 1406
    :cond_16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    invoke-virtual {p3}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p2

    if-nez p2, :cond_22

    return-object p3

    .line 1411
    :cond_22
    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1412
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1413
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->getRestricedIntent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    .line 1414
    invoke-virtual {v1, v0, p4, p3}, Lcom/samsung/android/core/pm/BroadcastReceiverListParser;->isInAllowList(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1416
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1420
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6e

    .line 1422
    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 1423
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 1426
    :cond_61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBroadcastReceiverNotInAllowlist:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_6e
    :goto_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " callerPackage:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not registered!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1435
    :cond_92
    new-instance p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;

    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda7;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_9a
    :goto_9a
    return-object p3
.end method

.method public isCscVerChanged()Z
    .registers 6

    .line 610
    sget-object p0, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    const-string v0, "DUMMY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "ActivityManagerServiceExt"

    if-eqz p0, :cond_16

    .line 611
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v2, "csc version of property is wrong"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    :cond_16
    :try_start_16
    new-instance p0, Ljava/io/FileInputStream;

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_48

    .line 616
    :try_start_1d
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x400

    invoke-direct {v3, p0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_3e

    .line 617
    :try_start_29
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_34

    .line 618
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3e

    :try_start_30
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_33} :catch_4e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_48

    goto :goto_4e

    :catchall_34
    move-exception v3

    .line 615
    :try_start_35
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw v3
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v2

    :try_start_3f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    :try_start_44
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw v2
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_48} :catch_4e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception p0

    const-string v2, "Failure reading pre boot csc"

    .line 620
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    :catch_4e
    :goto_4e
    sget-object p0, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8

    .line 1175
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1179
    :cond_8
    array-length v1, p1

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    .line 1180
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    const-string v5, "com.samsung.android.keepalive.density"

    invoke-static {v4, v3, v5}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    return v0
.end method

.method public isNeedRestrictToSendBr(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 10

    if-eqz p1, :cond_3

    goto :goto_6

    :cond_3
    const-string/jumbo p1, "system_server"

    .line 1506
    :goto_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1510
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_20

    .line 1512
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1513
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5dc

    .line 1518
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/16 v3, 0xbb8

    const-string v2, "EMPTY_ACTION"

    .line 1523
    :cond_30
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    if-nez v4, :cond_42

    .line 1525
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo-IA;)V

    .line 1526
    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 1527
    :cond_42
    iget v5, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    const/4 v6, 0x1

    if-lt v5, v3, :cond_6f

    if-nez v0, :cond_6f

    .line 1528
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerServiceExt;->addDiscardBroadcastToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many Broadcast Requested :: This BR will not be sent from="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " intent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManagerServiceExt"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6f
    add-int/2addr v5, v6

    .line 1533
    iput v5, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 1534
    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_75
    const/4 p0, 0x0

    return p0
.end method

.method public isRelaxedBroadcastAction(Ljava/lang/String;)Z
    .registers 2

    .line 1159
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isTrimApplicaionsScheduled()Z
    .registers 1

    .line 646
    sget-object p0, Lcom/android/server/am/ActivityManagerServiceExt;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1189
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1ca

    .line 1198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_3c

    :try_start_1a
    const-string/jumbo v6, "name"

    .line 1208
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "kill_packages"

    .line 1209
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string/jumbo v10, "keep_packages"

    .line 1211
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const-string/jumbo v11, "skip_sdk_version_check"

    .line 1213
    invoke-virtual {v3, v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v11, 0x1

    goto :goto_44

    :cond_3c
    const-string/jumbo v3, "multi-resolution"

    move-object v9, v6

    move-object v10, v9

    move v11, v8

    move-object v6, v3

    move v3, v11

    .line 1219
    :goto_44
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_1c3

    :try_start_47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1220
    iget-object v13, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v13
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_1b7

    :try_start_4f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1221
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    :goto_67
    if-ge v8, v15, :cond_167

    .line 1224
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1225
    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    move/from16 p3, v15

    .line 1226
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v15
    :try_end_81
    .catchall {:try_start_4f .. :try_end_81} :catchall_1ad

    move-wide/from16 v16, v4

    const/4 v4, 0x0

    :goto_84
    if-ge v4, v15, :cond_15a

    .line 1228
    :try_start_86
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v7

    .line 1230
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v7

    move/from16 v19, v15

    const/16 v15, 0x14

    if-ne v7, v15, :cond_a1

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :cond_9e
    :goto_9e
    const/4 v7, 0x1

    goto/16 :goto_14e

    .line 1239
    :cond_a1
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v7

    const/4 v15, 0x2

    if-ne v7, v15, :cond_ac

    const/4 v7, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v7, 0x0

    .line 1243
    :goto_ad
    iget-object v15, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, Ljava/lang/String;

    move-object/from16 v20, v15

    .line 1244
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d1

    const/4 v7, 0x1

    goto :goto_d8

    :cond_d1
    move-object/from16 v15, v20

    move/from16 v7, v21

    goto :goto_b3

    :cond_d6
    move/from16 v21, v7

    :goto_d8
    if-eqz v11, :cond_f8

    .line 1251
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_ec

    .line 1252
    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ec

    move-object/from16 v21, v9

    const/4 v15, 0x0

    const/16 v20, 0x1

    goto :goto_fd

    :cond_ec
    if-eqz v10, :cond_f8

    .line 1256
    invoke-interface {v10, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f8

    move-object/from16 v21, v9

    const/4 v15, 0x1

    goto :goto_fb

    :cond_f8
    move-object/from16 v21, v9

    const/4 v15, 0x0

    :goto_fb
    const/16 v20, 0x0

    .line 1261
    :goto_fd
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    move-object/from16 v22, v10

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_112

    .line 1262
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerServiceExt;->isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_110

    goto :goto_112

    :cond_110
    const/4 v9, 0x0

    goto :goto_113

    :cond_112
    :goto_112
    const/4 v9, 0x1

    .line 1264
    :goto_113
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_11d

    .line 1265
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_11d
    if-nez v9, :cond_9e

    if-nez v15, :cond_9e

    if-nez v3, :cond_12b

    if-ltz v1, :cond_12b

    .line 1266
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v9, v1, :cond_9e

    :cond_12b
    if-ltz v2, :cond_147

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1270
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v9

    if-gt v9, v2, :cond_147

    if-nez v7, :cond_147

    if-nez v20, :cond_147

    const-string v7, "force-keep-alive"

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1272
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    :cond_147
    const/4 v7, 0x1

    .line 1273
    invoke-virtual {v5, v7}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 1274
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, v18

    move/from16 v15, v19

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_84

    :cond_15a
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    const/4 v7, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v15, p3

    move-wide/from16 v4, v16

    goto/16 :goto_67

    :cond_167
    move-wide/from16 v16, v4

    .line 1281
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_16e
    if-ge v8, v1, :cond_1a1

    .line 1283
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "kill all background except(policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_16e

    .line 1287
    :cond_1a1
    monitor-exit v13
    :try_end_1a2
    .catchall {:try_start_86 .. :try_end_1a2} :catchall_1b5

    :try_start_1a2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1288
    monitor-exit v12
    :try_end_1a6
    .catchall {:try_start_1a2 .. :try_end_1a6} :catchall_1c1

    :try_start_1a6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a9
    .catchall {:try_start_1a6 .. :try_end_1a9} :catchall_1bf

    .line 1290
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1ad
    move-exception v0

    move-wide/from16 v16, v4

    .line 1287
    :goto_1b0
    :try_start_1b0
    monitor-exit v13
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1b5

    :try_start_1b1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_1b5
    move-exception v0

    goto :goto_1b0

    :catchall_1b7
    move-exception v0

    move-wide/from16 v16, v4

    .line 1288
    :goto_1ba
    monitor-exit v12
    :try_end_1bb
    .catchall {:try_start_1b1 .. :try_end_1bb} :catchall_1c1

    :try_start_1bb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_1bf
    .catchall {:try_start_1bb .. :try_end_1bf} :catchall_1bf

    :catchall_1bf
    move-exception v0

    goto :goto_1c6

    :catchall_1c1
    move-exception v0

    goto :goto_1ba

    :catchall_1c3
    move-exception v0

    move-wide/from16 v16, v4

    .line 1290
    :goto_1c6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    throw v0

    .line 1191
    :cond_1ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    .line 1194
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public killProcessWhenDexExit()V
    .registers 19

    move-object/from16 v0, p0

    .line 1298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1300
    :try_start_6
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e4

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1301
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_de

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1302
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_30
    if-ge v9, v7, :cond_b0

    .line 1307
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1308
    invoke-virtual {v11}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 1309
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_49
    if-ge v13, v12, :cond_ab

    .line 1311
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 1313
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v15

    const/16 v8, 0x14

    if-ne v15, v8, :cond_60

    :cond_5b
    :goto_5b
    move/from16 v16, v7

    move-object/from16 v17, v11

    goto :goto_a4

    .line 1318
    :cond_60
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getKillProcessTimeout()I

    move-result v8

    if-nez v8, :cond_6a

    .line 1321
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_6a
    if-lez v8, :cond_5b

    const-string v15, "ActivityManagerServiceExt"

    move/from16 v16, v7

    .line 1325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    const-string/jumbo v11, "kill dex related process - scheduleKillProcessesForDeXExit :"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getKillProcessTimeout()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1325
    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v8, v10, :cond_a4

    move v10, v8

    :cond_a4
    :goto_a4
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    move-object/from16 v11, v17

    goto :goto_49

    :cond_ab
    move/from16 v16, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 1332
    :cond_b0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_b5
    if-ge v8, v7, :cond_c3

    .line 1334
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerServiceExt;->forceKillProcessesForDeXExitLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b5

    .line 1337
    :cond_c3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_cc

    .line 1338
    invoke-virtual {v0, v6, v10}, Lcom/android/server/am/ActivityManagerServiceExt;->scheduleKillProcessesForDeXExit(Ljava/util/ArrayList;I)V

    .line 1339
    :cond_cc
    monitor-exit v4
    :try_end_cd
    .catchall {:try_start_11 .. :try_end_cd} :catchall_d8

    :try_start_cd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1340
    monitor-exit v3
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_de

    :try_start_d1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_e4

    .line 1342
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d8
    move-exception v0

    .line 1339
    :try_start_d9
    monitor-exit v4
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    :try_start_da
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_de
    move-exception v0

    .line 1340
    monitor-exit v3
    :try_end_e0
    .catchall {:try_start_da .. :try_end_e0} :catchall_de

    :try_start_e0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_e4
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_e4

    :catchall_e4
    move-exception v0

    .line 1342
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    throw v0
.end method

.method public final markAsDedicatedProcessNameIfAliveLocked(Ljava/lang/String;IZ)V
    .registers 8

    .line 933
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 934
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;ILjava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 941
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V
    .registers 6

    .line 793
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 794
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 803
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final migrateTo(Landroid/content/SharedPreferences;)V
    .registers 4

    const-string v0, "LONG_LIVE_BY_PACKAGE"

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 743
    :try_start_6
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_3d

    .line 745
    :catch_a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "migrateTo Set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->removeLongLivePackage()Z

    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 749
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    .line 751
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 1016
    sget-boolean p0, Landroid/os/Build;->IS_USER:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_29

    .line 1022
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez p0, :cond_29

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v0, 0x9

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_29

    const/4 p0, 0x1

    .line 1025
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 1026
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 p1, -0x320

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    :cond_29
    return-void
.end method

.method public printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
    .registers 8

    const-string p0, ", [disp="

    .line 1079
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v0, p0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string p0, ", fin="

    .line 1081
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, p0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string p0, ", dur="

    .line 1083
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide p4, p0, p3

    const-wide/16 v0, 0x0

    cmp-long p0, p4, v0

    if-eqz p0, :cond_30

    .line 1085
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide p0, p0, p3

    sub-long/2addr p4, p0

    invoke-static {p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_35

    :cond_30
    const-string p0, "--"

    .line 1087
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_35
    const-string p0, "]"

    .line 1089
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public promoteAsDedicatedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "promoteAsDedicated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 977
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 978
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public promoteAsLongLivePackageIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8

    .line 829
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 830
    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_56

    .line 834
    :cond_a
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    const/4 v3, 0x1

    if-ge v2, v1, :cond_33

    aget-object v4, v0, v2

    .line 835
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 836
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 837
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    invoke-direct {v1, v4, p1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;-><init>(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 844
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_3a
    if-ltz p1, :cond_56

    .line 845
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 846
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetref(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_53

    .line 847
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_53
    add-int/lit8 p1, p1, -0x1

    goto :goto_3a

    :cond_56
    :goto_56
    return-void
.end method

.method public queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 24

    move-object/from16 v0, p0

    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 172
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_49

    const/16 v4, 0x3e9

    if-eq v1, v4, :cond_49

    const/16 v4, 0x7d0

    if-eq v1, v4, :cond_49

    const/16 v4, 0x3ea

    if-eq v1, v4, :cond_49

    const/16 v4, 0x403

    if-eq v1, v4, :cond_49

    if-nez v3, :cond_25

    goto :goto_49

    .line 179
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: not allowed to query registered receiver packages from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    .line 181
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_49
    :goto_49
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_4c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/String;

    .line 187
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v14

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_b9

    .line 190
    :try_start_5e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "queryRegisteredReceiverPackages"

    const/4 v8, 0x0

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 193
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v13

    .line 194
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/16 v16, 0x0

    move-object/from16 v15, p2

    .line 195
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 197
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 199
    :goto_8b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_9f

    .line 200
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 201
    iget-object v2, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_8b

    .line 203
    :cond_9f
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Ljava/lang/String;
    :try_end_ac
    .catchall {:try_start_5e .. :try_end_ac} :catchall_b4

    .line 206
    :cond_ac
    :try_start_ac
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    monitor-exit v9
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    :catchall_b4
    move-exception v0

    .line 206
    :try_start_b5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v0

    :catchall_b9
    move-exception v0

    .line 209
    monitor-exit v9
    :try_end_bb
    .catchall {:try_start_b5 .. :try_end_bb} :catchall_b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public registerDedicatedCallbackLocked(Landroid/os/RemoteCallback;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 685
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->registerCallback4Task(Landroid/os/RemoteCallback;)V

    goto :goto_11

    :cond_9
    if-nez p2, :cond_11

    .line 687
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    :cond_11
    :goto_11
    return-void
.end method

.method public final removeLongLivePackage()Z
    .registers 4

    .line 719
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    .line 720
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 723
    :cond_10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "LONG_LIVE_BY_PACKAGE"

    .line 724
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public removeLongLivePackageLocked(Ljava/lang/String;)Z
    .registers 9

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "longLivePackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    return v2

    .line 858
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 859
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_38
    if-ltz v0, :cond_6c

    .line 860
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 861
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetpackageName(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 862
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetref(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_64

    .line 864
    iput-boolean v2, v4, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 865
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v6, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 868
    :cond_64
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_69
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 872
    :cond_6c
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_87

    .line 873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "longLivePackage callback "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result p0

    return p0
.end method

.method public removeLongLivePackageWhenUninstalledLocked(Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_73

    .line 893
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_73

    .line 897
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uninstalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 899
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3e

    .line 900
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_6e

    .line 902
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_46
    if-ltz v0, :cond_6e

    .line 903
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 904
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetref(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_66

    .line 905
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetpackageName(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 906
    :cond_66
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    .line 911
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result p0

    return p0

    :cond_73
    :goto_73
    const/4 p0, 0x0

    return p0
.end method

.method public removeLongLiveTaskLocked(Ljava/lang/String;I)V
    .registers 3

    .line 928
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->removeDedicatedProcessFromPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public resetUpdateConfigurationCallerLocked()V
    .registers 2

    .line 302
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->-$$Nest$msetCallerLocked(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V

    return-void
.end method

.method public final restoreAllAdjs()V
    .registers 6

    .line 777
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 781
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 782
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->-$$Nest$fgetref(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_f

    const/4 v3, 0x0

    .line 784
    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 785
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_f

    .line 789
    :cond_35
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final saveLongLivePackage()Z
    .registers 4

    .line 709
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    .line 710
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 713
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 714
    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-string p0, "LONG_LIVE_BY_PACKAGE"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 715
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public final scheduleKillProcessesForDeXExit(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)V"
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillForDeXRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1389
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXKillProcesses:Ljava/util/ArrayList;

    .line 1390
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillForDeXRunnable:Ljava/lang/Runnable;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scheduleTrimApplicaions(Z)V
    .registers 2

    .line 642
    sget-object p0, Lcom/android/server/am/ActivityManagerServiceExt;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setAtmService(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public setLongLivePackageLocked(Ljava/lang/String;)Z
    .registers 4

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongLivePackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 811
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    .line 812
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 813
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->removeLongLivePackage()Z

    move-result v1

    goto :goto_61

    .line 815
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    goto :goto_47

    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    :goto_47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 817
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    .line 818
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 819
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result v1

    :cond_61
    :goto_61
    return v1
.end method

.method public setLongLiveProcess(I)Z
    .registers 5

    const-string v0, "ActivityManagerServiceExt"

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLongLiveProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_45

    .line 960
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_4b

    .line 961
    :try_start_25
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 962
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_42

    if-eqz p1, :cond_45

    .line 964
    :try_start_30
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-nez v1, :cond_45

    const/4 v1, 0x1

    .line 965
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 966
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_45

    :catchall_42
    move-exception p0

    .line 962
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw p0

    .line 970
    :cond_45
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setLongLiveTask(IZ)V
    .registers 6

    const-string v0, "ActivityManagerServiceExt"

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLongLiveTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 947
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setLongLiveTask(IZ)Landroid/util/Pair;

    move-result-object p1

    .line 948
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 949
    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsDedicatedProcessNameIfAliveLocked(Ljava/lang/String;IZ)V

    .line 951
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setPersistent(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 1639
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v0, 0x2

    .line 1641
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1642
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    const/4 v0, 0x1

    .line 1643
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    const/16 p1, -0x320

    .line 1644
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    return-void
.end method

.method public setPersistentIfNeeded(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 1652
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_38

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v0, :cond_38

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v1, 0x9

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->persistentApps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1655
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->setPersistent(Lcom/android/server/am/ProcessRecord;)V

    :cond_38
    return-void
.end method

.method public setUpdateConfigurationCallerLocked(I)V
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 295
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 296
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_2e

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1f

    const/4 p1, 0x0

    goto :goto_21

    :cond_1f
    iget-object p1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->-$$Nest$msetCallerLocked(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V

    return-void

    :catchall_2e
    move-exception p0

    .line 296
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public shouldAvoidForceStopForTmoPkg(Ljava/lang/String;)Z
    .registers 2

    .line 1667
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCanTmoPkgAvoidForceStop:Z

    if-eqz p0, :cond_e

    const-string p0, "com.tmobile.echolocate"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public updateBrMap(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    if-eqz p1, :cond_3

    goto :goto_6

    :cond_3
    const-string/jumbo p1, "system_server"

    .line 1559
    :goto_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_11

    return-void

    .line 1564
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1565
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string p1, "EMPTY_ACTION"

    .line 1569
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    if-nez p2, :cond_26

    return-void

    .line 1574
    :cond_26
    iget v0, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    iget v1, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    if-ge v0, v1, :cond_2e

    .line 1575
    iput v1, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    .line 1577
    iput v1, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 1579
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateLongLiveVersion(Landroid/content/SharedPreferences;I)V
    .registers 4

    const-string p0, "LONG_LIVE_VERSION"

    const/4 v0, 0x0

    .line 729
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, p2, :cond_13

    .line 731
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 732
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 733
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_13
    return-void
.end method

.method public final updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V
    .registers 10

    const-string p0, ","

    if-gtz p4, :cond_5

    return-void

    .line 695
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    const-string v2, "ActivityManagerServiceExt"

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNeverKill:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "KEY_NEVER_KILL_PACKAGE"

    .line 699
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "KEY_NEVER_KILL_PID"

    .line 700
    invoke-virtual {p0, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 701
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_44
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3f

    goto :goto_44

    :catchall_3f
    move-exception p0

    .line 704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    throw p0

    .line 704
    :catch_44
    :goto_44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public updatePreBootCscFile()V
    .registers 4

    .line 627
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_36

    .line 628
    :try_start_7
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, p0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_2c

    .line 629
    :try_start_13
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_22

    .line 631
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2c

    :try_start_1e
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_36

    goto :goto_43

    :catchall_22
    move-exception v1

    .line 627
    :try_start_23
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v0

    :try_start_28
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p0

    :try_start_32
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36

    :catch_36
    move-exception p0

    const-string v0, "ActivityManagerServiceExt"

    const-string v1, "Failure writing last done pre-boot receivers"

    .line 632
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    sget-object p0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_43
    return-void
.end method
