.class public Lcom/samsung/android/server/wifi/SemApeController;
.super Ljava/lang/Object;
.source "SemApeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeController$AppInfo;
    }
.end annotation


# static fields
.field private static final APE_APP_TYPE_NONE:I = 0x0

.field private static final APE_APP_TYPE_OTHER:I = 0x10

.field private static final APE_APP_TYPE_VOIP:I = 0x1

.field private static final APE_ENABLE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.ENABLE_APE"

.field private static final APE_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final APE_EXTRA_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field private static final APE_EXTRA_MSG_TYPE_REAL_TIME_APP_INFO:Ljava/lang/String; = "REALTIME_APP_INFO"

.field private static final APE_EXTRA_PACKAGE:Ljava/lang/String; = "package"

.field private static final APE_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final APE_EXTRA_UID:Ljava/lang/String; = "uid"

.field private static final APE_INFO_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.APE_INFO"

.field private static final APE_SET_POLICY_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.SET_APE_POLICY"

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xc8

.field private static final DUMP_TITLE:Ljava/lang/String; = "SemApeController (v1.2.0) history:"

.field private static final EVENT_AUDIO_MODE_CHECKING_INTERVAL:I = 0xbb8

.field private static final EVENT_CHECK_FOREGROUND_PACKAGE:I = 0x5

.field private static final EVENT_DEFERRED_FOREGROUND_CHECK_INTERVAL:I = 0x3e8

.field private static final EVENT_DEFERRED_STOP_INTERVAL:I = 0x3e8

.field private static final EVENT_OPTIMIZER_STATE_UPDATED:I = 0x3

.field private static final EVENT_PERIODIC_CHECK_AUDIO_MODE:I = 0x2

.field private static final EVENT_SET_POLICY:I = 0x4

.field private static final EVENT_VOIP_STARTED:I = 0x0

.field private static final EVENT_VOIP_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemApeController"

.field private static final VER:Ljava/lang/String; = "1.2.0"

.field private static mVerboseLoggingEnabled:Z = false


# instance fields
.field private mApeEnabled:Z

.field private final mAppInfos:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/SemApeController$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mForegroundAppUid:I

.field private mForegroundPackageName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestApeInfo:I

.field private mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyEnabled:Z

.field private mVoipAppUid:I

.field private mVoipPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8f3DIjf0c0yVA_S1wv8i5TFSkTY(Lcom/samsung/android/server/wifi/SemApeController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->lambda$registerWifiSafeModeListener$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApeEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppInfos(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/TreeMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mevaluateApeState(Lcom/samsung/android/server/wifi/SemApeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->evaluateApeState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastEnableApe(Lcom/samsung/android/server/wifi/SemApeController;IILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController;->updateAppState(ZIILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    const-string v1, ""

    .line 95
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 96
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    .line 97
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipPackageName:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioManager:Landroid/media/AudioManager;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemApeController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->makeBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.wifi.SET_APE_POLICY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->initBlockedPackages()V

    const-string p0, "SemApeController Initialized: ver=1.2.0"

    .line 128
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private evaluateApeState()V
    .registers 7

    .line 363
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_42

    .line 364
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    if-eq v0, v4, :cond_76

    .line 365
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    aput-object v0, v5, v2

    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    aput-object v1, v5, v0

    const-string v0, "Turn off APE since target uid=%d %s is background and foreground has been changed as uid=%d %s"

    .line 365
    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 367
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    goto :goto_76

    .line 370
    :cond_42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget v5, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    if-ne v4, v5, :cond_76

    .line 372
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 373
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Turn on APE since target uid=%d %s is foreground now"

    .line 372
    invoke-static {v4, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    :cond_76
    :goto_76
    return-void
.end method

.method private getAppTypeSum()I
    .registers 3

    .line 358
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    return v0
.end method

.method private initBlockedPackages()V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    const-string v0, "com.samsung.android.smartmirroring"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isBlockedPackage(Ljava/lang/String;)Z
    .registers 2

    .line 536
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$registerWifiSafeModeListener$0(Z)V
    .registers 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiSafeMode is changed as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemApeController"

    .line 171
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemApeController"

    .line 163
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SemApeController"

    .line 167
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .registers 2

    .line 175
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemApeController;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "SemApeController"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private makeBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 179
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeController$2;-><init>(Lcom/samsung/android/server/wifi/SemApeController;)V

    return-object v0
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    .line 190
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemApeController$3;-><init>(Lcom/samsung/android/server/wifi/SemApeController;Landroid/os/Looper;)V

    return-object v0
.end method

.method private recordHistory(Ljava/lang/String;)V
    .registers 6

    .line 498
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 500
    :try_start_19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_2d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_3d

    .line 502
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2d

    .line 504
    :cond_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private sendBroadcastEnableApe(IILjava/lang/String;I)V
    .registers 10

    .line 457
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemApeController;->isBlockedPackage(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " "

    const-string v2, " uid="

    if-eqz v0, :cond_2e

    .line 458
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore blocked package: enable="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    return-void

    :cond_2e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5f

    const/16 v3, 0x10

    if-ne p4, v3, :cond_5f

    .line 463
    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 464
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore non gaming app: enable="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    return-void

    .line 470
    :cond_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(v1.2.0) Send broadcast ENABLE_APE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 471
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->getAppTypeSum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p3, v2, v0

    const-string v0, "Enable(%d) typeSum=0x%02X uid=%d %s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.wifi.ENABLE_APE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enable"

    .line 474
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "uid"

    .line 475
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "package"

    .line 476
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "type"

    .line 477
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendBroadcastRealtimeAppInfo(IILjava/lang/String;I)V
    .registers 10

    .line 482
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestApeInfo:I

    .line 483
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "REALTIME_APP_INFO"

    aput-object v3, v1, v2

    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object p3, v1, v2

    const-string v2, "APE_INFO: msg_type=%s Enable(%d) type=0x%02X uid=%d %s"

    .line 483
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(v1.2.0) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeController;->recordHistory(Ljava/lang/String;)V

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.wifi.APE_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "msg_type"

    .line 489
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "enable"

    .line 490
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "uid"

    .line 491
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "package"

    .line 492
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "type"

    .line 493
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 421
    iget v2, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget v3, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    if-eq v2, v3, :cond_3d

    .line 422
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 423
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    if-eqz v4, :cond_16

    const-string v4, "Disable APE"

    goto :goto_18

    :cond_16
    const-string v4, "Ignore APE enabled"

    :goto_18
    aput-object v4, v3, v1

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v2, 0x2

    iget-object v4, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    iget v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "%s since target uid=%d %s is background and foreground has been changed as uid=%d %s"

    .line 422
    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    move p1, v1

    .line 427
    :cond_3d
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    const-string v3, ""

    const/4 v4, -0x1

    if-eqz v2, :cond_58

    if-eqz p1, :cond_58

    .line 428
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    if-eqz v2, :cond_53

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget v5, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    if-ne v2, v5, :cond_53

    .line 429
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    return-void

    .line 433
    :cond_53
    invoke-direct {p0, v1, v4, v3, v1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    .line 434
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    .line 436
    :cond_58
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    if-ne v2, p1, :cond_5d

    return-void

    .line 438
    :cond_5d
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mApeEnabled:Z

    if-eqz p1, :cond_77

    .line 440
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    if-eqz p1, :cond_6f

    .line 441
    iget p1, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget-object v1, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    iget v2, p2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    goto :goto_74

    :cond_6f
    const-string p1, "APE is disabled as a policy, so block to broadcast enable intent."

    .line 443
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 445
    :goto_74
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    goto :goto_87

    .line 447
    :cond_77
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPolicyEnabled:Z

    if-eqz p1, :cond_7f

    .line 448
    invoke-direct {p0, v1, v4, v3, v1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastEnableApe(IILjava/lang/String;I)V

    goto :goto_84

    :cond_7f
    const-string p1, "APE is disabled as a policy, so block to broadcast disable intent."

    .line 450
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    :goto_84
    const/4 p1, 0x0

    .line 452
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    :goto_87
    return-void
.end method

.method private updateAppState(ZIILjava/lang/String;)V
    .registers 11

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->getAppTypeSum()I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3a

    if-nez v1, :cond_25

    .line 387
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 388
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 390
    :cond_25
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->equals(II)Z

    move-result v1

    if-nez v1, :cond_47

    .line 391
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    invoke-direct {v1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_3a
    if-eqz v1, :cond_47

    .line 397
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    move v1, v2

    goto :goto_48

    :cond_47
    move v1, v3

    :goto_48
    if-nez v1, :cond_4b

    return-void

    .line 404
    :cond_4b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    .line 405
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    aput-object p4, v4, p1

    const/4 p1, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x5

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeController;->getAppTypeSum()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x6

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x7

    iget p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/16 p1, 0x8

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    aput-object p2, v4, p1

    const-string p1, "updateAppState: type=0x%02X (%b) uid=%d %s (before=0x%02X after=0x%02X) size=%d, foreground uid=%d %s"

    .line 404
    invoke-static {v1, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAppInfos:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 410
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 411
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    .line 412
    iget p2, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget-object p3, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    invoke-direct {p0, v2, p2, p3, p1}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastRealtimeAppInfo(IILjava/lang/String;I)V

    goto :goto_c7

    .line 415
    :cond_b9
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    const/4 p2, -0x1

    const-string p3, ""

    invoke-direct {p1, v3, p2, p3}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/server/wifi/SemApeController;->setApeEnabled(ZLcom/samsung/android/server/wifi/SemApeController$AppInfo;)V

    .line 416
    invoke-direct {p0, v3, p2, p3, v3}, Lcom/samsung/android/server/wifi/SemApeController;->sendBroadcastRealtimeAppInfo(IILjava/lang/String;I)V

    :goto_c7
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 514
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 515
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemApeController (v1.2.0) history:"

    .line 516
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 520
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 521
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 515
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 508
    :goto_5
    sput-boolean p0, Lcom/samsung/android/server/wifi/SemApeController;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public isRealtimeAppRunning()Z
    .registers 1

    .line 540
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestApeInfo:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi_ape_enabled"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APE in Settings is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/server/wifi/SemApeController$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p1}, Lcom/samsung/android/server/wifi/SemApeController$1;-><init>(Lcom/samsung/android/server/wifi/SemApeController;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    .line 150
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method registerWifiSafeModeListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)V
    .registers 5

    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "wifiSafeMode is enabled"

    .line 134
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    :cond_16
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemApeController;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->registerListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    return-void
.end method

.method public updateAudioState(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter updateAudioState: audioMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_bb

    if-nez p1, :cond_20

    return-void

    .line 306
    :cond_20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mLatestEnabledWith:Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    const-string v2, ""

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2d

    .line 308
    new-instance v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    invoke-direct {v1, v4, v3, v2}, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;-><init>(IILjava/lang/String;)V

    .line 313
    :cond_2d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v3

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    .line 314
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_32

    .line 315
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v7

    const/16 v9, 0x2710

    if-ge v7, v9, :cond_52

    goto :goto_32

    .line 318
    :cond_52
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v7

    .line 319
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemApeController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_32

    .line 320
    array-length v10, v9

    if-eqz v10, :cond_32

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[audioMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " package="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v9, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    move-result v6

    if-eq v6, v8, :cond_9f

    goto :goto_32

    :cond_9f
    if-eq v5, v3, :cond_ab

    .line 326
    iget v6, v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    if-eq v7, v6, :cond_ab

    if-eq v5, v6, :cond_32

    iget v6, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    if-ne v7, v6, :cond_32

    .line 328
    :cond_ab
    aget-object v2, v9, v4

    move v5, v7

    goto :goto_32

    :cond_af
    if-eq v5, v3, :cond_c7

    .line 334
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c7

    .line 339
    :cond_bb
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c7
    :goto_c7
    return-void
.end method

.method public updateForegroundApp(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_4f

    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4f

    .line 286
    :cond_b
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    if-lez p2, :cond_4f

    .line 288
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    .line 289
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "foreground: uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 292
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mVoipAppUid:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4f

    if-eq p1, v0, :cond_3e

    iget p2, p0, Lcom/samsung/android/server/wifi/SemApeController;->mForegroundAppUid:I

    if-ne p1, p2, :cond_4f

    .line 293
    :cond_3e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method public updateOptimizerState(ZZILjava/lang/String;)V
    .registers 7

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOptimizerState: trafficDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " serviceDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-eqz p1, :cond_3a

    .line 350
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_49

    :cond_3a
    if-nez p1, :cond_49

    .line 352
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController;->mHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    const/4 p3, 0x0

    const-string p4, ""

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_49
    :goto_49
    return-void
.end method
