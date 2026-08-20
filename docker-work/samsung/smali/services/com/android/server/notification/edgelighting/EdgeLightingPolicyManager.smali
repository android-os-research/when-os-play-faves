.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;,
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;,
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;,
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    }
.end annotation


# static fields
.field public static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field public static final DEBUG:Z

.field public static final DESKTOP_SETTINGS_KEY_TOUCH_PAD:Ljava/lang/String; = "touchpad_enabled"

.field public static final DESKTOP_SETTINGS_METHOD_GET:Ljava/lang/String; = "getSettings"

.field public static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field public static final EMERGENCY_MODE_ENABLED:Z

.field public static final MAP_MAX_SIZE:I = 0xa

.field public static final TAG:Ljava/lang/String; = "EdgeLightingPolicyManager"

.field public static final TIME_LIMIT:I = 0x2710

.field public static final TYPE_NOTIFICATION:I = 0x1


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

.field public mContext:Landroid/content/Context;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public final mDesktopSettingsObserver:Landroid/database/ContentObserver;

.field public mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDisableNotificationAlerts:Z

.field public final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisabledPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public final mHeadsUpObserver:Landroid/database/ContentObserver;

.field public mIsTouchpadEnabled:Z

.field public mLockState:I

.field public mNm:Landroid/app/INotificationManager;

.field public final mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field public final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPolicyType:I

.field public mPolicyVersion:J

.field public mPriorityPolicy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResumedComponent:Landroid/content/ComponentName;

.field public mResumedComponentTime:J

.field public mRinging:Z

.field public mStatusBarDisabled1:I

.field public mSuppressed:I

.field public mUseHeadsUp:Z

.field public mUserId:I

.field public mVrMode:Z

.field public final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field public mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisableNotificationAlerts(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseHeadsUp(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsTouchpadEnabled(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLockState(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseHeadsUp(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVrMode(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDesktopSettingsValue(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 67
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 73
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    .line 74
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 75
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    :goto_2e
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    const-wide/16 v1, 0x0

    .line 90
    iput-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    .line 113
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    .line 115
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 119
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup-IA;)V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 123
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    .line 127
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 129
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 131
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 133
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    .line 135
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 139
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 149
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    .line 176
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 239
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "activity"

    .line 241
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    const-string v3, "desktopmode"

    .line 242
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 244
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    .line 246
    new-instance p1, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 247
    new-instance p1, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V

    const/4 p1, 0x1

    .line 249
    invoke-virtual {v0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 250
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "heads_up_notifications_enabled"

    .line 251
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 250
    invoke-virtual {v3, v4, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    invoke-virtual {v1, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo p1, "notification"

    .line 256
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 255
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    const-string/jumbo p0, "vrmanager"

    .line 257
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_e8

    .line 260
    :try_start_cd
    invoke-interface {p0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_e8

    :catch_d1
    move-exception p0

    .line 263
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register VR mode state listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    :goto_e8
    return-void
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "tickerText"

    const/4 v2, 0x0

    .line 777
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_14

    return v3

    :cond_14
    const-string/jumbo v1, "titleText"

    .line 780
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    return v3

    :cond_22
    const-string/jumbo v1, "text"

    .line 783
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    :cond_30
    const-string/jumbo v1, "subText"

    .line 786
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3e

    return v3

    :cond_3e
    return v0
.end method


# virtual methods
.method public final cleanUp()V
    .registers 8

    .line 793
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 794
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_f

    .line 795
    monitor-exit v0

    return-void

    .line 797
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 798
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 799
    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 800
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 801
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    iget-wide v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_1d

    .line 802
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    .line 805
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    .line 579
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 580
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 581
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public disableEdgeLighting(ILjava/lang/String;Z)V
    .registers 6

    .line 585
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_17

    .line 588
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 589
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    if-eqz p3, :cond_1d

    .line 592
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 594
    :cond_1d
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 596
    :goto_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-EdgeLightingPolicy start : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_28

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_6e

    .line 906
    :cond_28
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 907
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 908
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 909
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35

    :cond_68
    const-string v1, ""

    .line 912
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_2b .. :try_end_6e} :catchall_127

    .line 915
    :cond_6e
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 916
    :try_start_71
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  [DisableRecord] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_77

    :cond_a4
    const-string v0, ""

    .line 919
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_71 .. :try_end_aa} :catchall_124

    .line 921
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 922
    :try_start_ad
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b4
    if-ge v2, v1, :cond_e7

    .line 924
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 925
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 926
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  [DisabledPackages] : type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    :cond_e7
    const-string v1, ""

    .line 928
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ad .. :try_end_ed} :catchall_121

    .line 930
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_f5

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_104

    .line 931
    :cond_f5
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v1, "white"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string v1, "black"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mSuppressed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, ""

    .line 935
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_121
    move-exception p0

    .line 929
    :try_start_122
    monitor-exit v0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw p0

    :catchall_124
    move-exception p0

    .line 920
    :try_start_125
    monitor-exit v1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw p0

    :catchall_127
    move-exception p0

    .line 913
    :try_start_128
    monitor-exit v0
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    throw p0
.end method

.method public getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 6

    .line 469
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    return-object v1

    .line 472
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p0

    if-nez p0, :cond_14

    return-object v1

    .line 476
    :cond_14
    iget p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_1a

    return-object p0

    :cond_1a
    return-object v1
.end method

.method public final getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 352
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    .line 354
    :catch_8
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationInfo : packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "key"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 163
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :try_start_10
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 169
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 172
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get settings"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    return-object p2
.end method

.method public final getEdgeLightingRestrictState(I)I
    .registers 7

    .line 844
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    .line 847
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v0, :cond_1c

    .line 848
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 850
    :cond_1c
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v2, 0x2

    if-eqz v0, :cond_30

    .line 851
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 853
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    .line 854
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    goto :goto_32

    :cond_30
    move v3, v1

    move v0, v2

    :goto_32
    if-nez v3, :cond_5b

    .line 857
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isSupportedCover(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    if-eq p1, v1, :cond_5b

    .line 858
    :cond_3c
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEdgeLightingRestrictState coverOpen="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 863
    :cond_5b
    iget p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    if-eqz p1, :cond_61

    const/4 p0, 0x3

    return p0

    .line 868
    :cond_61
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_70

    const/16 p0, 0xa

    return p0

    .line 872
    :cond_70
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne p0, v1, :cond_88

    .line 873
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "Desktop mode enable"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    :cond_88
    const/4 p0, 0x0

    return p0
.end method

.method public getGroupNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .registers 2

    .line 1048
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object p0

    return-object p0
.end method

.method public getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 499
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    goto :goto_e

    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_d

    .line 501
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    goto :goto_e

    :cond_d
    move-object p0, v1

    :goto_e
    if-eqz p0, :cond_1c

    .line 503
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result p1

    if-ge p1, v0, :cond_17

    goto :goto_1c

    .line 506
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_1c
    return-object v1
.end method

.method public final getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 6

    .line 483
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    return-object v1

    .line 486
    :cond_b
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p0

    if-nez p0, :cond_14

    return-object v1

    .line 490
    :cond_14
    iget p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_1a

    return-object p0

    :cond_1a
    return-object v1
.end method

.method public getResumedComponent()Landroid/content/ComponentName;
    .registers 1

    .line 834
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getValidNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .registers 10

    .line 809
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 810
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 811
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    const/4 v3, 0x0

    if-nez p0, :cond_14

    .line 813
    monitor-exit v0

    return-object v3

    .line 815
    :cond_14
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_1c

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_51

    .line 816
    :cond_1c
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getValidNotificationData packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",now="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",time="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",ret="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_51
    iget-wide v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0xfa0

    cmp-long p1, v1, v4

    if-gez p1, :cond_5c

    .line 820
    monitor-exit v0

    return-object p0

    .line 822
    :cond_5c
    monitor-exit v0

    return-object v3

    :catchall_5e
    move-exception p0

    .line 823
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public isAcceptableApplication(Ljava/lang/String;II)Z
    .registers 5

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result p0

    return p0
.end method

.method public isAcceptableApplication(Ljava/lang/String;IZI)Z
    .registers 11

    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v1

    .line 384
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const/4 v3, 0x0

    if-nez v2, :cond_e

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_5b

    .line 385
    :cond_e
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "isAcceptableApplication: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " pkg="

    .line 386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " , range="

    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " , includeAllApp="

    .line 388
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, " , userId="

    .line 389
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " , infoRange="

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_40

    iget v5, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    goto :goto_41

    :cond_40
    move v5, v3

    :goto_41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " , infoCategory="

    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_4e

    iget v5, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    goto :goto_4f

    :cond_4e
    move v5, v3

    :goto_4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 392
    sget-object v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    const v4, 0xff00

    and-int/2addr v4, p2

    if-eqz v4, :cond_6b

    if-eqz v1, :cond_69

    .line 397
    iget p0, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v3

    :goto_6a
    return v0

    :cond_6b
    if-nez p3, :cond_97

    .line 400
    iget p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/2addr p3, v0

    if-eqz p3, :cond_73

    goto :goto_97

    .line 406
    :cond_73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p3

    if-eqz p3, :cond_7b

    move p3, v0

    goto :goto_7c

    :cond_7b
    move p3, v3

    :goto_7c
    if-nez v2, :cond_82

    .line 407
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_a5

    .line 408
    :cond_82
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "isAcceptableApplication: getAcceptablePolicy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 410
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 401
    :cond_97
    :goto_97
    invoke-virtual {p0, p1, p4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isValidApplication(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_a5

    if-eqz v1, :cond_a5

    .line 402
    iget v1, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p2

    if-nez v1, :cond_a5

    move p3, v3

    :cond_a5
    :goto_a5
    if-eqz p3, :cond_bc

    .line 413
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_bc

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_bb

    .line 415
    invoke-virtual {p0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p3

    if-nez p3, :cond_bb

    move p3, v0

    goto :goto_bc

    :cond_bb
    move p3, v3

    :cond_bc
    :goto_bc
    if-gez p4, :cond_c7

    .line 420
    :try_start_be
    iget-object p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    invoke-virtual {p4, p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p4

    goto :goto_e7

    .line 422
    :cond_c7
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v3, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p4
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_cd} :catch_ce

    goto :goto_e7

    :catch_ce
    move-exception p4

    .line 425
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageUidAsUser failed - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v3

    :goto_e7
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_144

    .line 429
    :try_start_eb
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-nez v1, :cond_fc

    const-string/jumbo v1, "notification"

    .line 431
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 430
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 433
    :cond_fc
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz v1, :cond_104

    .line 434
    invoke-interface {v1, p1, p4}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result p3

    .line 436
    :cond_104
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_10c

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_144

    .line 437
    :cond_10c
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAcceptableApplication - accept rechecked by isEdgeLightingAllowed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_12b} :catch_12c

    goto :goto_144

    :catch_12c
    move-exception v1

    .line 441
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEdgeLightingAllowed failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    :goto_144
    if-eqz p3, :cond_1a4

    .line 444
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1a4

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p2

    if-nez p2, :cond_153

    goto :goto_154

    :cond_153
    move v0, v3

    :goto_154
    if-eqz p3, :cond_187

    if-nez v0, :cond_187

    .line 449
    :try_start_158
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz p0, :cond_15f

    .line 450
    invoke-interface {p0, p1, p4, v3}, Landroid/app/INotificationManager;->setAllowEdgeLighting(Ljava/lang/String;IZ)V

    .line 452
    :cond_15f
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_167

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz p0, :cond_187

    .line 453
    :cond_167
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string p1, "Block list app so setAllowEdgeLighting to false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_16e} :catch_16f

    goto :goto_187

    :catch_16f
    move-exception p0

    .line 456
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAllowEdgeLighting failed - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_187
    :goto_187
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_18f

    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz p0, :cond_1a3

    .line 460
    :cond_18f
    new-instance p0, Ljava/lang/StringBuffer;

    const-string/jumbo p1, "isAcceptableApplication: getRejectablePolicy "

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 462
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a3
    move p3, v0

    :cond_1a4
    return p3
.end method

.method public isAllowEdgelighting(Z)Z
    .registers 2

    .line 573
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    const/4 p1, 0x1

    if-nez p0, :cond_6

    return p1

    :cond_6
    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public final isDeviceInVrMode()Z
    .registers 1

    .line 343
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return p0
.end method

.method public isDexTouchpadEnabled()Z
    .registers 1

    .line 339
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    return p0
.end method

.method public isEdgeLightingDisabled()Z
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_15

    .line 525
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "EdgeLighting is disabled"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 526
    monitor-exit v0

    return p0

    .line 528
    :cond_15
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 536
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v1

    .line 537
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_11

    .line 538
    monitor-exit v1

    return v0

    .line 540
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_2d

    .line 541
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2d

    .line 544
    :cond_22
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    .line 545
    monitor-exit v1

    return p0

    .line 547
    :cond_2b
    monitor-exit v1

    return v0

    .line 542
    :cond_2d
    :goto_2d
    monitor-exit v1

    return v0

    :catchall_2f
    move-exception p0

    .line 547
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public isEdgeLightingRestricted(I)Z
    .registers 5

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getEdgeLightingRestrictState(I)I

    move-result p0

    if-eqz p0, :cond_26

    .line 516
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdgeLighting is Restricted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), range = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabledHeadsUp()Z
    .registers 4

    .line 331
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    if-nez v0, :cond_1f

    .line 332
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isHUNPeeked : UseHeadsUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public isHUNPeeked()Z
    .registers 3

    .line 316
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isDeviceInVrMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 317
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isHUNPeeked : Vr mode"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 322
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isMirrorLinkOn()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 323
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isHUNPeeked : mirror link on"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final isMirrorLinkOn()Z
    .registers 2

    const-string/jumbo p0, "net.mirrorlink.on"

    .line 347
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5

    .line 633
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 638
    :cond_8
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_2a

    .line 639
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNotificationForEdgeLighting : small icon is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public isRecommendPackage(Ljava/lang/String;)Z
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSupportedCover(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 363
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    const/4 p0, 0x1

    :cond_11
    return p0
.end method

.method public final isValidApplication(Ljava/lang/String;I)Z
    .registers 5

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 371
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1f

    const/4 p1, 0x1

    :cond_1f
    return p1
.end method

.method public final manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 10

    .line 600
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1f

    .line 604
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 605
    iget-object v5, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    move-object v4, v3

    :goto_20
    if-eqz p1, :cond_5d

    .line 610
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_5d

    :cond_29
    if-nez v4, :cond_56

    .line 617
    new-instance v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    invoke-direct {v4, p0, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord-IA;)V

    .line 619
    :try_start_30
    invoke-interface {p3, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_39

    .line 624
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :catch_39
    move-exception p0

    .line 621
    sget-object p1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "manageDisableRecoredLocked : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 626
    :cond_56
    :goto_56
    iput p1, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    .line 627
    iput-object p3, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 628
    iput-object p2, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    goto :goto_69

    :cond_5d
    :goto_5d
    if-eqz v4, :cond_69

    .line 612
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 613
    iget-object p0, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p0, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_69
    :goto_69
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    .line 268
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBootCompleted"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    .line 285
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    return-void
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZI)Landroid/os/Bundle;
    .registers 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 650
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;
    .registers 23

    move-object/from16 v1, p0

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    return-object v2

    .line 656
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_20

    :cond_1f
    move-object v3, v2

    .line 658
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_44

    const-string v6, "android.title"

    .line 665
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "android.text"

    .line 666
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "android.subText"

    .line 667
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_47

    :cond_44
    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    .line 669
    :goto_47
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_86

    .line 670
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "putNotification tickerText:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",titleText:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",text:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",sub:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "cn= + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 672
    :cond_86
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "putNotification tickerText:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_97

    const/4 v12, 0x1

    goto :goto_98

    :cond_97
    move v12, v10

    :goto_98
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",titleText:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_a4

    const/4 v12, 0x1

    goto :goto_a5

    :cond_a4
    move v12, v10

    :goto_a5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",text:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_b1

    const/4 v12, 0x1

    goto :goto_b2

    :cond_b1
    move v12, v10

    :goto_b2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",sub:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_be

    const/4 v12, 0x1

    goto :goto_bf

    :cond_be
    move v12, v10

    :goto_bf
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "cn= + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->cleanUp()V

    .line 675
    iget-object v11, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 676
    :try_start_d9
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    if-nez v0, :cond_f7

    .line 678
    iget-object v12, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    if-eqz v12, :cond_f7

    .line 680
    iget-object v0, v12, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string v12, "color"

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_f7
    .catchall {:try_start_d9 .. :try_end_f7} :catchall_39b

    :cond_f7
    move v12, v0

    const/16 v13, -0x3e8

    .line 685
    :try_start_fa
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-nez v0, :cond_113

    .line 686
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v14, "INotificationManager is null in putNotification, try reload"

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "notification"

    .line 688
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 687
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    goto :goto_137

    .line 690
    :cond_113
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v15

    invoke-interface {v0, v14, v15}, Landroid/app/INotificationManager;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v13
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_11f} :catch_120
    .catchall {:try_start_fa .. :try_end_11f} :catchall_39b

    goto :goto_137

    :catch_120
    move-exception v0

    .line 693
    :try_start_121
    sget-object v14, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockScreenNotificationVisibilityForPackage failed - "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isHeadup"

    move/from16 v9, p2

    .line 698
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isUpdate"

    move/from16 v9, p3

    .line 699
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "tickerText"

    .line 700
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "titleText"

    .line 701
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "text"

    .line 702
    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "subText"

    .line 703
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "smallIcon"

    .line 704
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "flag"

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "color"

    .line 706
    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "notification_color"

    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "priority"

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "component"

    .line 709
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1a1

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a2

    :cond_1a1
    const/4 v3, 0x0

    :goto_1a2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "component_time"

    .line 710
    iget-wide v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "group_key"

    .line 711
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_intent"

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "user_id"

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "noti_key"

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "noti_id"

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "noti_tag"

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "noti_visiblity"

    move/from16 v3, p4

    .line 717
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "package_visiblity"

    .line 718
    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "alert_group"

    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_20b

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_20b

    const/4 v9, 0x1

    goto :goto_20c

    :cond_20b
    move v9, v10

    :goto_20c
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "category"

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "audible_alert"

    move/from16 v3, p5

    .line 721
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "channel_id"

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "bubble"

    move/from16 v3, p6

    .line 723
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_259

    .line 726
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v3

    :goto_249
    if-ge v10, v4, :cond_253

    aget-object v6, v3, v10

    .line 728
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_249

    :cond_253
    const-string/jumbo v3, "noti_actions"

    .line 731
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 734
    :cond_259
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-direct {v2, v14, v15, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;-><init>(JLandroid/os/Bundle;)V

    if-eqz v5, :cond_268

    .line 736
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    goto :goto_26a

    :cond_268
    move-object/from16 v4, p1

    .line 738
    :goto_26a
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_380

    .line 739
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v3

    if-eqz v3, :cond_380

    .line 740
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    if-eqz v5, :cond_380

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tickerText"

    .line 742
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 743
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "tickerText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tickerText"

    .line 744
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "tickerText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "titleText"

    .line 746
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 747
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "titleText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "titleText"

    .line 748
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "titleText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "text"

    .line 750
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 751
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "text"

    .line 752
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "subText"

    .line 754
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 755
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "subText"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "subText"

    .line 756
    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "subText"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 758
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v3, :cond_380

    .line 759
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Summary notification display. Change text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_380
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-nez v3, :cond_399

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-nez v3, :cond_399

    .line 765
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_399
    monitor-exit v11

    return-object v0

    :catchall_39b
    move-exception v0

    .line 769
    monitor-exit v11
    :try_end_39d
    .catchall {:try_start_121 .. :try_end_39d} :catchall_39b

    throw v0
.end method

.method public final registerReceiver()V
    .registers 3

    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    .line 281
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 646
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->remove(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public setResumedComponent(Landroid/content/ComponentName;)V
    .registers 4

    if-eqz p1, :cond_a

    .line 828
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    :cond_a
    return-void
.end method

.method public setRinging(Z)V
    .registers 2

    .line 510
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    return-void
.end method

.method public setSuppressed(I)V
    .registers 2

    .line 569
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    return-void
.end method

.method public statusBarDisabled(II)V
    .registers 6

    .line 552
    iget p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    xor-int/2addr p2, p1

    .line 554
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable: < "

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x40000

    and-int/2addr p1, v1

    if-eqz p1, :cond_17

    const-string v2, "ALERTS"

    goto :goto_19

    :cond_17
    const-string v2, "alerts"

    .line 557
    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p2, v1

    if-eqz p2, :cond_22

    const-string v1, "* "

    goto :goto_24

    :cond_22
    const-string v1, " "

    .line 558
    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEventHistory(Ljava/lang/String;)V

    if-eqz p2, :cond_46

    const/4 p2, 0x1

    if-eqz p1, :cond_3e

    move p1, p2

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    .line 563
    :goto_3f
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 564
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p2}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_46
    return-void
.end method

.method public updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .registers 6

    .line 289
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 290
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 291
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 293
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 294
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 295
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 296
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_23

    :cond_3a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 298
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_23

    .line 302
    :cond_43
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "edge_lighting_recommend_app_list"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_66

    const-string v0, ","

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 305
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v0, :cond_66

    aget-object v2, p1, v1

    .line 306
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_66
    return-void
.end method
