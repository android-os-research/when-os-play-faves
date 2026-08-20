.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$ServiceConnectionProxy;
    }
.end annotation


# static fields
.field public static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field public static final APPS_EDGE_PKG:Ljava/lang/String; = "com.samsung.android.app.appsedge"

.field public static final COCKTAIL_BAR_ACTION_START_CLOCK:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

.field public static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field public static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field public static final DEBUG:Z

.field public static final EMERGENCY_MODE_ENABLED:Z

.field public static final MIN_UPDATE_PERIOD:I

.field public static final MSG_EDGE_APP_START:I = 0x1

.field public static final MSG_EDGE_APP_START_DELAY_MS:I = 0x7d0

.field public static final PANEL_MODE:Ljava/lang/String; = "panel_mode"

.field public static final PIN_SERVICE_CLS:Ljava/lang/String; = "com.samsung.android.app.appsedge.pin.AppsEdgePinService"

.field public static final SETTINGS_FILENAME:Ljava/lang/String; = "cocktails.xml"

.field public static final TAG:Ljava/lang/String; = "CocktailBarManagerServiceImpl"


# instance fields
.field public WAKELOCK_TIMEOUT:J

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mCocktailArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation
.end field

.field public final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field public mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

.field public mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

.field public final mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayDensity:I

.field public final mEdgeStartHandler:Landroid/os/Handler;

.field public mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

.field public mHandler:Landroid/os/Handler;

.field public mHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mHostCategory:I

.field public mInitialzed:Z

.field public mLocalDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public mLocale:Ljava/util/Locale;

.field public mMobileKeyboardCoverState:I

.field public final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field public mNextCocktailId:I

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public final mRemoteViewsServicesCocktails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSaveStateRunnable:Ljava/lang/Runnable;

.field public mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

.field public mStateLoaded:Z

.field public mTickerDisableflags:I

.field public final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetWAKELOCK_TIMEOUT(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->WAKELOCK_TIMEOUT:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCocktailArr(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommandLogger(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdgeStartHandler(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEdgeStartHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHost(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettings(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCocktailSettingsObserver(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWakeLock(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/PowerManager$WakeLock;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mensureStateLoadedLocked(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msaveStateLocked(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCocktailBarSetting(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 126
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    .line 143
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const v0, 0x1b7740

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    sput v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    .line 150
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 151
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 152
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_38
    const/4 v1, 0x1

    :cond_39
    sput-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->EMERGENCY_MODE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V
    .registers 9

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 175
    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mTickerDisableflags:I

    const-wide/16 v1, 0xbb8

    .line 176
    iput-wide v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->WAKELOCK_TIMEOUT:J

    .line 180
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 182
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap-IA;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    .line 183
    new-instance v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    .line 1229
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    .line 186
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 187
    iput p5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 188
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    shl-int/lit8 p5, p5, 0x10

    or-int/2addr p5, v0

    iput p5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    .line 189
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p5

    iput-object p5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    .line 190
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object p5

    iput-object p5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 191
    iput-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .line 192
    iput-object p4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 193
    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEdgeStartHandler:Landroid/os/Handler;

    const-string p2, "alarm"

    .line 195
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo p2, "user"

    .line 196
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string p2, "deviceidle"

    .line 197
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 198
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 199
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isLocalBinder()Z

    move-result p2

    if-eqz p2, :cond_98

    .line 200
    new-instance p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    iget-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    goto :goto_a2

    .line 202
    :cond_98
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;

    invoke-direct {p3, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    :goto_a2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mDefaultDisplayDensity:I

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mMobileKeyboardCoverState:I

    .line 211
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemReady()V

    return-void
.end method

.method public static getSettingsFile(I)Ljava/io/File;
    .registers 3

    .line 1389
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "cocktails.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isLocalBinder()Z
    .registers 2

    .line 2830
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public final addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 8

    .line 757
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 758
    sget-boolean p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz p0, :cond_17

    .line 759
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "addProviderLocked : Application FLAG_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-object v1

    .line 763
    :cond_18
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "addProviderLocked : disable"

    if-nez v0, :cond_51

    .line 764
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 765
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_51

    .line 780
    :cond_3f
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_76

    .line 781
    sget-boolean p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz p0, :cond_50

    .line 782
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-object v1

    .line 766
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 767
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_76

    .line 768
    sget-boolean p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz p0, :cond_6a

    .line 769
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return-object v1

    .line 774
    :cond_6b
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_76

    .line 775
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "addProviderLocked : even if the package is disable in emergency mode, allow creating cocktail"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_76
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    if-eqz v2, :cond_a7

    .line 790
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addProviderLocked : already existed("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 793
    :cond_a7
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-eqz p1, :cond_d6

    .line 795
    invoke-virtual {p1, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->setVersion(I)V

    .line 796
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p2

    iget p2, p2, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 p3, 0x200

    if-ne p2, p3, :cond_c1

    .line 797
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 p3, 0x6

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 799
    :cond_c1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 800
    sget-boolean p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz p0, :cond_d5

    .line 801
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "addProviderLocked : success"

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    return-object p1

    .line 805
    :cond_d6
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addProviderLocked : parseProviderInfoXmlLocked cocktail is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 805
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final addProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 870
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_28

    .line 871
    sget-object v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProvidersForPackageLocked : pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_28
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v4

    .line 876
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    iget v6, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_3e

    const/4 v7, 0x0

    goto :goto_42

    .line 879
    :cond_3e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    :goto_42
    if-eqz v3, :cond_5a

    .line 881
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addProvidersForPackageLocked : queryIntentReceivers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_5a
    iget-object v3, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_67
    if-ge v8, v7, :cond_f7

    .line 885
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 886
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 887
    sget-boolean v13, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v13, :cond_95

    .line 888
    sget-object v14, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addProvidersForPackageLocked : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ai="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_95
    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000

    and-int/2addr v6, v14

    const/4 v14, 0x1

    if-eqz v6, :cond_ba

    if-eqz v13, :cond_f2

    .line 892
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addProvidersForPackageLocked : application FLAG_EXTERNAL_STORAGE"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 897
    :cond_ba
    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 898
    invoke-virtual {v0, v11, v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v6

    if-eqz v6, :cond_d8

    .line 900
    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v11, 0x4

    if-ne v9, v11, :cond_d2

    move v10, v14

    :cond_d2
    const/4 v11, 0x0

    .line 903
    invoke-virtual {v0, v6, v4, v11}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    move v9, v14

    goto :goto_f3

    :cond_d8
    const/4 v11, 0x0

    if-eqz v13, :cond_f3

    .line 907
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addProvidersForPackageLocked : Cocktail is null for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    :cond_f2
    :goto_f2
    const/4 v11, 0x0

    :cond_f3
    :goto_f3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_67

    :cond_f7
    if-eqz v9, :cond_fe

    if-eqz v10, :cond_fe

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    :cond_fe
    return v9
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z
    .registers 27

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p3

    .line 2426
    iget-object v12, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v12

    .line 2427
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 2428
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindRemoteViewsService : not loaded u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cocktail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    :cond_2f
    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    if-eqz v3, :cond_34c

    .line 2434
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_354

    .line 2436
    :try_start_39
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    if-eqz v5, :cond_32d

    const-wide/16 v6, 0x1000

    .line 2440
    iget v8, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v5, v4, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    const-string v6, "android.permission.BIND_REMOTEVIEWS"

    .line 2442
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4f} :catch_335
    .catchall {:try_start_39 .. :try_end_4f} :catchall_354

    if-eqz v5, :cond_316

    .line 2450
    :try_start_51
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2451
    iget v3, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    if-eq v11, v3, :cond_7d

    .line 2452
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CocktailServiceImpl of user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " binding to provider on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_7d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_81
    .catchall {:try_start_51 .. :try_end_81} :catchall_354

    const/16 v15, 0x3b

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 2461
    :try_start_89
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2462
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2463
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 2461
    invoke-interface/range {v3 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v3
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_ab} :catch_27f
    .catchall {:try_start_89 .. :try_end_ab} :catchall_1e6

    if-eqz v3, :cond_14f

    .line 2468
    :try_start_ad
    new-instance v4, Landroid/content/Intent$FilterComparison;

    invoke-direct {v4, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2469
    invoke-virtual {v1, v2, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b5} :catch_281
    .catchall {:try_start_ad .. :try_end_b5} :catchall_14c

    if-nez v3, :cond_147

    .line 2477
    :try_start_b7
    iget-object v3, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_354

    .line 2478
    :try_start_ba
    iget-object v0, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v0, :cond_d2

    .line 2479
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_d2

    .line 2480
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    :cond_d2
    move-object/from16 v0, v16

    .line 2482
    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_ba .. :try_end_d5} :catchall_144

    if-eqz v0, :cond_147

    .line 2485
    :try_start_d7
    iget-object v2, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2486
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bind_remoteview_service_failed_list"

    iget v4, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 2485
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11e

    const-string v3, ""

    .line 2489
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11e

    const-string v3, ";"

    .line 2490
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v18

    .line 2492
    :goto_f7
    array-length v5, v3

    if-ge v4, v5, :cond_108

    .line 2493
    aget-object v5, v3, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_105

    move/from16 v18, v17

    goto :goto_108

    :cond_105
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    :cond_108
    :goto_108
    if-nez v18, :cond_11d

    .line 2500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11e

    :cond_11d
    move-object v0, v2

    .line 2506
    :cond_11e
    :goto_11e
    iget-object v2, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bind_remoteview_service_failed_list"

    iget v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2508
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind_remoteview_service_failed_list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_d7 .. :try_end_143} :catchall_354

    goto :goto_147

    :catchall_144
    move-exception v0

    .line 2482
    :try_start_145
    monitor-exit v3
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    :try_start_146
    throw v0

    .line 2512
    :cond_147
    :goto_147
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v12

    return v17

    :catchall_14c
    move-exception v0

    goto/16 :goto_1e9

    :cond_14f
    if-nez v3, :cond_1e1

    .line 2477
    iget-object v3, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_154
    .catchall {:try_start_146 .. :try_end_154} :catchall_354

    .line 2478
    :try_start_154
    iget-object v0, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v0, :cond_16c

    .line 2479
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_16c

    .line 2480
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    :cond_16c
    move-object/from16 v0, v16

    .line 2482
    monitor-exit v3
    :try_end_16f
    .catchall {:try_start_154 .. :try_end_16f} :catchall_1de

    if-eqz v0, :cond_1e1

    .line 2485
    :try_start_171
    iget-object v2, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2486
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bind_remoteview_service_failed_list"

    iget v4, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 2485
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b8

    const-string v3, ""

    .line 2489
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b8

    const-string v3, ";"

    .line 2490
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v18

    .line 2492
    :goto_191
    array-length v5, v3

    if-ge v4, v5, :cond_1a0

    .line 2493
    aget-object v5, v3, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    goto :goto_1a2

    :cond_19d
    add-int/lit8 v4, v4, 0x1

    goto :goto_191

    :cond_1a0
    move/from16 v17, v18

    :goto_1a2
    if-nez v17, :cond_1b7

    .line 2500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b8

    :cond_1b7
    move-object v0, v2

    .line 2506
    :cond_1b8
    :goto_1b8
    iget-object v2, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bind_remoteview_service_failed_list"

    iget v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2508
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind_remoteview_service_failed_list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V
    :try_end_1dd
    .catchall {:try_start_171 .. :try_end_1dd} :catchall_354

    goto :goto_1e1

    :catchall_1de
    move-exception v0

    .line 2482
    :try_start_1df
    monitor-exit v3
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_1de

    :try_start_1e0
    throw v0

    .line 2512
    :cond_1e1
    :goto_1e1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_314

    :catchall_1e6
    move-exception v0

    move/from16 v3, v18

    :goto_1e9
    if-nez v3, :cond_27b

    .line 2477
    iget-object v3, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_1ee
    .catchall {:try_start_1e0 .. :try_end_1ee} :catchall_354

    .line 2478
    :try_start_1ee
    iget-object v4, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v2, :cond_206

    .line 2479
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_206

    .line 2480
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    :cond_206
    move-object/from16 v2, v16

    .line 2482
    monitor-exit v3
    :try_end_209
    .catchall {:try_start_1ee .. :try_end_209} :catchall_278

    if-eqz v2, :cond_27b

    .line 2485
    :try_start_20b
    iget-object v3, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2486
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bind_remoteview_service_failed_list"

    iget v5, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 2485
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_252

    const-string v4, ""

    .line 2489
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_252

    const-string v4, ";"

    .line 2490
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move/from16 v5, v18

    .line 2492
    :goto_22b
    array-length v6, v4

    if-ge v5, v6, :cond_23a

    .line 2493
    aget-object v6, v4, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_237

    goto :goto_23c

    :cond_237
    add-int/lit8 v5, v5, 0x1

    goto :goto_22b

    :cond_23a
    move/from16 v17, v18

    :goto_23c
    if-nez v17, :cond_251

    .line 2500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_252

    :cond_251
    move-object v2, v3

    .line 2506
    :cond_252
    :goto_252
    iget-object v3, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bind_remoteview_service_failed_list"

    iget v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v3, v4, v2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2508
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind_remoteview_service_failed_list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V
    :try_end_277
    .catchall {:try_start_20b .. :try_end_277} :catchall_354

    goto :goto_27b

    :catchall_278
    move-exception v0

    .line 2482
    :try_start_279
    monitor-exit v3
    :try_end_27a
    .catchall {:try_start_279 .. :try_end_27a} :catchall_278

    :try_start_27a
    throw v0

    .line 2512
    :cond_27b
    :goto_27b
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2513
    throw v0

    :catch_27f
    move/from16 v3, v18

    :catch_281
    if-nez v3, :cond_1e1

    .line 2477
    iget-object v3, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_286
    .catchall {:try_start_27a .. :try_end_286} :catchall_354

    .line 2478
    :try_start_286
    iget-object v0, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v0, :cond_29e

    .line 2479
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_29e

    .line 2480
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    :cond_29e
    move-object/from16 v0, v16

    .line 2482
    monitor-exit v3
    :try_end_2a1
    .catchall {:try_start_286 .. :try_end_2a1} :catchall_311

    if-eqz v0, :cond_1e1

    .line 2485
    :try_start_2a3
    iget-object v2, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2486
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bind_remoteview_service_failed_list"

    iget v4, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 2485
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2ea

    const-string v3, ""

    .line 2489
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ea

    const-string v3, ";"

    .line 2490
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v18

    .line 2492
    :goto_2c3
    array-length v5, v3

    if-ge v4, v5, :cond_2d2

    .line 2493
    aget-object v5, v3, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2cf

    goto :goto_2d4

    :cond_2cf
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c3

    :cond_2d2
    move/from16 v17, v18

    :goto_2d4
    if-nez v17, :cond_2e9

    .line 2500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2ea

    :cond_2e9
    move-object v0, v2

    .line 2506
    :cond_2ea
    :goto_2ea
    iget-object v2, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bind_remoteview_service_failed_list"

    iget v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2508
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind_remoteview_service_failed_list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V
    :try_end_30f
    .catchall {:try_start_2a3 .. :try_end_30f} :catchall_354

    goto/16 :goto_1e1

    :catchall_311
    move-exception v0

    .line 2482
    :try_start_312
    monitor-exit v3
    :try_end_313
    .catchall {:try_start_312 .. :try_end_313} :catchall_311

    :try_start_313
    throw v0

    .line 2514
    :goto_314
    monitor-exit v12
    :try_end_315
    .catchall {:try_start_313 .. :try_end_315} :catchall_354

    return v18

    .line 2443
    :cond_316
    :try_start_316
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2438
    :cond_32d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not get PM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_335
    .catch Landroid/os/RemoteException; {:try_start_316 .. :try_end_335} :catch_335
    .catchall {:try_start_316 .. :try_end_335} :catchall_354

    .line 2447
    :catch_335
    :try_start_335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :cond_34c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad cocktailId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_354
    move-exception v0

    .line 2514
    monitor-exit v12
    :try_end_356
    .catchall {:try_start_335 .. :try_end_356} :catchall_354

    throw v0
.end method

.method public final cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 5

    .line 1678
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1680
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1683
    :try_start_f
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    .line 1685
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    .line 1687
    invoke-virtual {p1, p0}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    goto :goto_1f

    :catchall_1a
    move-exception p0

    .line 1685
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public changeVisibleEdgeService(Z)V
    .registers 9

    .line 2218
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_46

    .line 2222
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    .line 2223
    :try_start_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2224
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 2227
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string v5, "changeVisibleEdgeService uid="

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_43

    .line 2229
    :try_start_35
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->changeVisibleEdgeService(ZI)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d
    .catchall {:try_start_35 .. :try_end_3c} :catchall_43

    goto :goto_18

    .line 2231
    :catch_3d
    :try_start_3d
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2234
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_43

    throw p0

    .line 2219
    :cond_46
    :goto_46
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "changeVisibleEdgeService : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkCocktailAttributeLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 3

    if-eqz p2, :cond_e

    .line 387
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x2

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x0

    :goto_f
    invoke-virtual {p1, p0}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    return-void
.end method

.method public final checkSize(Landroid/widget/RemoteViews;)Z
    .registers 4

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 1715
    :cond_4
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    const v1, 0x989680

    if-le v0, v1, :cond_28

    .line 1716
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSize : size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_28
    return p0
.end method

.method public final clearCocktailInfoLocked(Ljava/lang/String;)V
    .registers 5

    .line 2751
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 2752
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCocktailInfoLocked : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    :cond_1a
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_3d

    .line 2756
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 2757
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getPackageNameFromCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    .line 2758
    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_3d
    return-void
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .registers 12

    .line 1922
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 1923
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_22
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1926
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1927
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCocktail : not loaded u="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    monitor-exit v0

    return-void

    .line 1930
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-eqz p1, :cond_125

    .line 1931
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    if-nez v1, :cond_5f

    goto/16 :goto_125

    .line 1935
    :cond_5f
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_11c

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6b

    goto/16 :goto_11c

    .line 1940
    :cond_6b
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    .line 1941
    invoke-virtual {v1, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo;->setCategory(I)V

    .line 1942
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 1943
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_83
    .catchall {:try_start_25 .. :try_end_83} :catchall_13d

    .line 1944
    :try_start_83
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1945
    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 1946
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1947
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_fc

    .line 1949
    :try_start_9f
    iget v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_c1

    .line 1950
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string v6, "closeCocktail id="

    invoke-virtual {v5, v4, v6, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1951
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->closeCocktail(III)V

    goto :goto_8d

    .line 1954
    :cond_c1
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closeCocktail: category not matched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestedCat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1954
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_f5} :catch_f6
    .catchall {:try_start_9f .. :try_end_f5} :catchall_fc

    goto :goto_8d

    .line 1959
    :catch_f6
    :try_start_f6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8d

    .line 1962
    :cond_fa
    monitor-exit v1

    goto :goto_11a

    :catchall_fc
    move-exception p0

    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_f6 .. :try_end_fe} :catchall_fc

    :try_start_fe
    throw p0

    .line 1964
    :cond_ff
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "closeCocktail : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reject"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :goto_11a
    monitor-exit v0

    return-void

    .line 1936
    :cond_11c
    :goto_11c
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string p1, "closeCocktail : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    monitor-exit v0

    return-void

    .line 1932
    :cond_125
    :goto_125
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "closeCocktail : invalid cocktailId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    monitor-exit v0

    return-void

    :catchall_13d
    move-exception p0

    .line 1966
    monitor-exit v0
    :try_end_13f
    .catchall {:try_start_fe .. :try_end_13f} :catchall_13d

    throw p0
.end method

.method public final decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 6

    .line 2575
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2576
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2577
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2578
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 2579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 2580
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2584
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2585
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 2586
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_41
    return-void
.end method

.method public deleteHost(Ljava/lang/String;)V
    .registers 4

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unlinkHost(Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    .line 233
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteHost: host remain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-nez p0, :cond_21

    const-string/jumbo p0, "null"

    goto :goto_29

    :cond_21
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    return-void
.end method

.method public final destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 8

    .line 2522
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/content/Intent;)V

    .line 2546
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 2550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2552
    :try_start_11
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 2555
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2556
    throw p0
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .registers 11

    if-eqz p1, :cond_86

    .line 2085
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2086
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2087
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableCocktail : not loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    monitor-exit v0

    return-void

    .line 2090
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-eqz p1, :cond_81

    .line 2093
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 2094
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2095
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_3c
    if-ge v4, v3, :cond_72

    .line 2097
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v6, :cond_6f

    .line 2098
    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_6f

    .line 2099
    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v8

    if-ne v7, v8, :cond_64

    const/4 v5, 0x1

    goto :goto_6f

    .line 2103
    :cond_64
    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_72
    if-eqz v5, :cond_81

    .line 2107
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 2108
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2116
    :cond_81
    monitor-exit v0

    return-void

    :catchall_83
    move-exception p0

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_5 .. :try_end_85} :catchall_83

    throw p0

    .line 2083
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableUser(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/16 v0, 0x100

    if-eq p1, v0, :cond_8

    goto :goto_14

    .line 595
    :cond_8
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->resetMode(II)V

    goto :goto_14

    .line 598
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeUpdatedCocktailsExceptContextual()V

    :goto_14
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 2989
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2f

    .line 2990
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2990
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2995
    :cond_2f
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2996
    :try_start_32
    iget-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_39
    if-ge v0, p3, :cond_49

    .line 2998
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 2999
    invoke-virtual {p0, v1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 3001
    :cond_49
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_cc

    .line 3002
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    if-eqz p1, :cond_6f

    .line 3003
    invoke-virtual {p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object p1

    .line 3004
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EnabledCocktails : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 3005
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    :cond_6f
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz p1, :cond_c6

    .line 3008
    monitor-enter p1

    .line 3009
    :try_start_74
    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "CocktailHost: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3010
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3011
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " category="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3012
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_85

    .line 3014
    :cond_af
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    if-eqz p0, :cond_c1

    .line 3016
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    :cond_c1
    monitor-exit p1

    goto :goto_c6

    :catchall_c3
    move-exception p0

    monitor-exit p1
    :try_end_c5
    .catchall {:try_start_74 .. :try_end_c5} :catchall_c3

    throw p0

    :cond_c6
    :goto_c6
    const-string p0, ""

    .line 3021
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_cc
    move-exception p0

    .line 3001
    :try_start_cd
    monitor-exit p1
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw p0
.end method

.method public final dumpCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/io/PrintWriter;)V
    .registers 4

    .line 3070
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p0

    const-string v0, "  ["

    .line 3071
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] provider "

    .line 3073
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3074
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 3075
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(C)V

    const-string v0, " (label="

    .line 3076
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3077
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") (description="

    .line 3078
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") (icon="

    .line 3080
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3081
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") (previewImage="

    .line 3082
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3083
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") (updatePeriodMillis="

    .line 3084
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3085
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") (category="

    .line 3086
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3087
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") (permitVisibilityChanged="

    .line 3088
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3089
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ") (configure="

    .line 3090
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3091
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ") (privateMode="

    .line 3092
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3093
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ") (cscPreviewImage="

    .line 3094
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3095
    iget-boolean p0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, " (uid="

    .line 3096
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3097
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ") "

    .line 3098
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 3100
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 586
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    goto :goto_10

    :cond_7
    if-eqz p2, :cond_10

    .line 588
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p1, p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public final ensureStateLoadedLocked()Z
    .registers 6

    .line 660
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9f

    .line 661
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 662
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureStateLoadedLocked: User "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be unlocked for widgets to be available"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 665
    :cond_2c
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    const-string v3, "ensureStateLoadedLocked: Profile "

    if-eqz v0, :cond_52

    .line 666
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must have unlocked parent"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 669
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 670
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->reload()Z

    move-result v0

    if-nez v0, :cond_79

    .line 671
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " service not loaded yet"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 674
    :cond_79
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v0

    :goto_7f
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v2

    if-gt v0, v2, :cond_8d

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->loadCocktailListLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 677
    :cond_8d
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->loadStateLocked()V

    .line 678
    new-instance v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;-><init>(Landroid/content/Context;Landroid/util/SparseArray;I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 679
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    :cond_9f
    return v1
.end method

.method public final findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_25

    .line 609
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 610
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_22

    .line 611
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    return-object v0
.end method

.method public final findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2a

    .line 621
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 622
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    .line 623
    iget-object v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v4, :cond_27

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 624
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2a
    return-object v0
.end method

.method public getAllCocktailIds(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2368
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    .line 2371
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2373
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

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 3

    .line 2377
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2378
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 2379
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .registers 3

    if-eqz p1, :cond_17

    .line 2123
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2124
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2126
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_11
    const/4 p0, 0x0

    .line 2128
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 2129
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0

    .line 2121
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .registers 5

    if-eqz p1, :cond_23

    .line 2136
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2137
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 2138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_1b

    .line 2139
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    new-array p0, p0, [I

    .line 2141
    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    .line 2143
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw p0

    .line 2134
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCocktailIds(Lcom/samsung/android/cocktailbar/Cocktail;)[I
    .registers 3

    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 2198
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    const/4 v0, 0x0

    aput p1, p0, v0

    return-object p0
.end method

.method public final getCocktailLocked(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 2

    .line 2383
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComponentName(Ljava/lang/Integer;)Landroid/content/ComponentName;
    .registers 3

    .line 2147
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2148
    :try_start_3
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz p0, :cond_17

    .line 2150
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    .line 2152
    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 2153
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getEnabledCocktailIds()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2358
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2359
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_28

    .line 2360
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnabledCocktailIds : not loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 2363
    :cond_28
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_30
    move-exception p0

    .line 2364
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final getPackageNameFromCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)Ljava/lang/String;
    .registers 2

    .line 2764
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public final getUidForPackage(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2323
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x0

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_15

    .line 2327
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_15

    .line 2330
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    .line 2328
    :cond_15
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw p0
.end method

.method public final incrementCocktailServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .registers 4

    .line 2562
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2563
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    goto :goto_1c

    .line 2565
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2566
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 2568
    :goto_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initialize()V
    .registers 5

    .line 1410
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1411
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_c
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1414
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    .line 1415
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_32

    .line 1416
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    .line 1417
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2a

    .line 1419
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    goto :goto_2f

    :cond_2a
    if-ne v1, v2, :cond_2f

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    .line 1423
    :cond_2f
    :goto_2f
    iput-boolean v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    return-void

    :catchall_32
    move-exception p0

    .line 1415
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;)Z
    .registers 5

    .line 2157
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    if-nez v0, :cond_22

    .line 2158
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBoundCocktailPackage: user settings not loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2161
    :cond_22
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 6

    if-eqz p2, :cond_3f

    .line 2184
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2185
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v0

    if-nez v0, :cond_27

    .line 2186
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCocktailEnabled: uset not loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_27
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 2190
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result p0

    monitor-exit p1

    return p0

    .line 2192
    :cond_39
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_3c
    move-exception p0

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3c

    throw p0

    .line 2182
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 6

    if-eqz p2, :cond_49

    .line 2168
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2169
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v0

    if-nez v0, :cond_27

    .line 2170
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnabledCocktail: uset not loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_27
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 2173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_43

    .line 2174
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result p0

    monitor-exit p1

    return p0

    .line 2176
    :cond_43
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_46
    move-exception p0

    monitor-exit p1
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_46

    throw p0

    .line 2166
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "invalid provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isProfileWithLockedParent(I)Z
    .registers 5

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 691
    :try_start_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 692
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 693
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 695
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result p0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_32

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    .line 700
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 701
    throw p0
.end method

.method public final isProfileWithUnlockedParent(I)Z
    .registers 3

    .line 1175
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1176
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1177
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1178
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 1179
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserRunningAndUnlocked(I)Z
    .registers 2

    .line 685
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isValidHost()Z
    .registers 1

    .line 2985
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final loadCocktailListLocked(I)V
    .registers 8

    .line 739
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    move v2, v1

    goto :goto_18

    .line 741
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 743
    :goto_18
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v3

    .line 744
    sget-boolean v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_57

    .line 745
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "loadCocktailListLocked: uid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    .line 746
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " N="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " cat="

    .line 747
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 748
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    if-ge v1, v2, :cond_65

    .line 751
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 752
    invoke-virtual {p0, v4, v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_65
    return-void
.end method

.method public final loadStateLocked()V
    .registers 5

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 1216
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1217
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_12
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 1221
    :goto_c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2a

    :catchall_10
    move-exception p0

    goto :goto_2b

    :catch_12
    move-exception p0

    .line 1219
    :try_start_13
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_10

    goto :goto_c

    :goto_2a
    return-void

    .line 1221
    :goto_2b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1222
    throw p0
.end method

.method public final lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 1204
    :cond_4
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz p1, :cond_1f

    .line 1205
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v1

    if-ne v1, p2, :cond_1f

    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getPackageNameFromCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)Ljava/lang/String;

    move-result-object p0

    .line 1205
    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return-object p1

    :cond_1f
    return-object v0
.end method

.method public final lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1190
    :cond_4
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_2b

    .line 1192
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1193
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_21

    :cond_20
    move-object v4, v0

    :goto_21
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    return-object v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2b
    return-object v0
.end method

.method public notePauseComponent(Landroid/content/ComponentName;)V
    .registers 4

    .line 2257
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_39

    .line 2261
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    .line 2262
    :try_start_e
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2263
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2264
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_36

    .line 2267
    :try_start_2a
    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notePauseComponent(Landroid/content/ComponentName;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_30
    .catchall {:try_start_2a .. :try_end_2f} :catchall_36

    goto :goto_18

    .line 2269
    :catch_30
    :try_start_30
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2272
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_36

    throw p0

    .line 2258
    :cond_39
    :goto_39
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "notePauseComponent : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;)V
    .registers 4

    .line 2238
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_39

    .line 2242
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    .line 2243
    :try_start_e
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2244
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2245
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_36

    .line 2248
    :try_start_2a
    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->noteResumeComponent(Landroid/content/ComponentName;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_30
    .catchall {:try_start_2a .. :try_end_2f} :catchall_36

    goto :goto_18

    .line 2250
    :catch_30
    :try_start_30
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2253
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_36

    throw p0

    .line 2239
    :cond_39
    :goto_39
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "noteResumeComponent : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyCocktailBarWakeUp(ZII)V
    .registers 10

    .line 2782
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 2785
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notifyCocktailBarWakeUp supported only owner user, currentUID= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2789
    :cond_1e
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2790
    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    .line 2791
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "notifyCocktailBarWakeUp was not supported with mobile keypad"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    if-eqz p1, :cond_44

    .line 2795
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_44

    .line 2796
    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$7;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2808
    :cond_44
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_85

    .line 2810
    :try_start_48
    monitor-enter v0
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_49} :catch_80

    .line 2811
    :try_start_49
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2812
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v4, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "notifyCocktailBarWakeUp key="

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2813
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyWakeUpState(ZII)V

    goto :goto_53

    .line 2815
    :cond_7b
    monitor-exit v0

    goto :goto_a8

    :catchall_7d
    move-exception p0

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_49 .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p0
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_80} :catch_80

    :catch_80
    move-exception p0

    .line 2817
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a8

    .line 2821
    :cond_85
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "notifyCocktailBarWakeUp: startActivity"

    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.samsung.android.app.cocktailbarservice.intent.action.START_CLOCK"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.samsung.android.app.cocktailbarservice"

    const-string v0, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    .line 2823
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p3, "keycode"

    .line 2824
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2825
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_a8
    return-void
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .registers 6

    .line 1970
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1971
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1973
    invoke-virtual {p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 1975
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final notifyCocktailViewDataChangedInstanceLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 11

    .line 1979
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    if-eqz p1, :cond_50

    .line 1981
    :try_start_c
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_50

    .line 1982
    :try_start_f
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1983
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v4, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "notifyCocktailViewDataChangedInstanceLocked id="

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1984
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, v3, p2, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->viewDataChanged(III)V

    goto :goto_19

    .line 1986
    :cond_4b
    monitor-exit v0

    goto :goto_50

    :catchall_4d
    move-exception p2

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw p2
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_50} :catch_50

    .line 1990
    :catch_50
    :cond_50
    :goto_50
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-nez p2, :cond_af

    .line 1991
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mRemoteViewsServicesCocktails:Ljava/util/HashMap;

    .line 1992
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 1991
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5e
    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz p1, :cond_5e

    .line 1993
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1994
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1996
    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$3;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    .line 2020
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2022
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2024
    :try_start_9b
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_aa

    .line 2027
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5e

    :catchall_aa
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2028
    throw p0

    :cond_af
    return-void
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .registers 6

    .line 2411
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 2412
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCocktailVisibiltyChanged : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2415
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz p1, :cond_2b

    .line 2417
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 2419
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public notifyKeyguardState(Z)V
    .registers 9

    .line 2391
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_47

    .line 2395
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    .line 2396
    :try_start_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2397
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2399
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 2400
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "notifyKeyguardState uid="

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_44

    .line 2402
    :try_start_36
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notifyKeyguardState(ZI)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_44

    goto :goto_18

    .line 2404
    :catch_3e
    :try_start_3e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2407
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw p0

    .line 2392
    :cond_47
    :goto_47
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeCocktailInHostLocked : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .registers 11

    .line 2614
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 2618
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    const-string v0, "android.intent.extra.changed_package_list"

    .line 2619
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_49

    :cond_16
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 2621
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v0, "android.intent.extra.changed_package_list"

    .line 2622
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v2, v1

    goto :goto_49

    .line 2625
    :cond_27
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2e

    return-void

    .line 2629
    :cond_2e
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    return-void

    :cond_35
    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 2636
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    .line 2637
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v8, v1

    move v1, v0

    move-object v0, v2

    move v2, v8

    :goto_49
    if-eqz v0, :cond_17c

    .line 2639
    array-length v4, v0

    if-nez v4, :cond_50

    goto/16 :goto_17c

    :cond_50
    if-nez v2, :cond_ed

    if-eqz v1, :cond_56

    goto/16 :goto_ed

    .line 2670
    :cond_56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_a1

    const-string v2, "android.intent.extra.REPLACING"

    .line 2671
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 2672
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2673
    :try_start_67
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v2

    if-nez v2, :cond_90

    .line 2674
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBroadcastReceived EXTRA_REPLACING: not loaded u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " intent="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    monitor-exit v1

    return-void

    .line 2677
    :cond_90
    array-length p1, v0

    :goto_91
    if-ge v3, p1, :cond_9b

    aget-object v2, v0, v3

    .line 2678
    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->clearCocktailInfoLocked(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 2680
    :cond_9b
    monitor-exit v1

    goto/16 :goto_178

    :catchall_9e
    move-exception p0

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_67 .. :try_end_a0} :catchall_9e

    throw p0

    .line 2683
    :cond_a1
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 2684
    :try_start_a4
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_cd

    .line 2685
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBroadcastReceived : not loaded u="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " intent="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    monitor-exit v2

    return-void

    .line 2688
    :cond_cd
    array-length p1, v0

    move v1, v3

    :goto_cf
    if-ge v3, p1, :cond_de

    aget-object v4, v0, v3

    .line 2689
    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2690
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    .line 2692
    :cond_de
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_a4 .. :try_end_df} :catchall_ea

    if-eqz v1, :cond_178

    .line 2694
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    goto/16 :goto_178

    :catchall_ea
    move-exception p0

    .line 2692
    :try_start_eb
    monitor-exit v2
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw p0

    .line 2644
    :cond_ed
    :goto_ed
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v2

    .line 2645
    :try_start_f0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v4

    if-nez v4, :cond_119

    .line 2646
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBroadcastReceived add or change: not loaded u="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " intent="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    monitor-exit v2

    return-void

    .line 2650
    :cond_119
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez v1, :cond_14a

    if-eqz p1, :cond_12a

    const-string v1, "android.intent.extra.REPLACING"

    .line 2651
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12a

    goto :goto_14a

    .line 2658
    :cond_12a
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result p1

    move v1, v3

    :goto_131
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v4

    if-gt p1, v4, :cond_16b

    .line 2659
    array-length v4, v0

    move v5, v3

    :goto_13b
    if-ge v5, v4, :cond_147

    aget-object v6, v0, v5

    .line 2660
    invoke-virtual {p0, v6, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v6

    or-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_13b

    :cond_147
    add-int/lit8 p1, p1, 0x1

    goto :goto_131

    .line 2652
    :cond_14a
    :goto_14a
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result p1

    move v1, v3

    :goto_151
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v4

    if-gt p1, v4, :cond_16b

    .line 2653
    array-length v4, v0

    move v5, v3

    :goto_15b
    if-ge v5, v4, :cond_168

    aget-object v6, v0, v5

    const/4 v7, 0x0

    .line 2654
    invoke-virtual {p0, v6, p1, v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v6

    or-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_15b

    :cond_168
    add-int/lit8 p1, p1, 0x1

    goto :goto_151

    .line 2664
    :cond_16b
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 2665
    monitor-exit v2
    :try_end_16f
    .catchall {:try_start_f0 .. :try_end_16f} :catchall_179

    if-eqz v1, :cond_178

    .line 2667
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    :cond_178
    :goto_178
    return-void

    :catchall_179
    move-exception p0

    .line 2665
    :try_start_17a
    monitor-exit v2
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw p0

    :cond_17c
    :goto_17c
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 5

    .line 712
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 714
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eqz v0, :cond_30

    .line 715
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v3, :cond_30

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mDefaultDisplayDensity:I

    if-ne v1, v3, :cond_30

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mMobileKeyboardCoverState:I

    if-eq v2, v3, :cond_86

    .line 717
    :cond_30
    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocale:Ljava/util/Locale;

    .line 718
    iput v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mDefaultDisplayDensity:I

    .line 719
    iput v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mMobileKeyboardCoverState:I

    .line 720
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 721
    :try_start_39
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 722
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged : not loaded u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    monitor-exit v0

    return-void

    .line 725
    :cond_5a
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_62
    if-ltz v1, :cond_82

    .line 727
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 728
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 730
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_78

    :cond_77
    const/4 v3, 0x0

    .line 731
    :goto_78
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v2

    .line 729
    invoke-virtual {p0, v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersInfoForPackageLocked(Ljava/lang/String;I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_62

    .line 733
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 734
    monitor-exit v0

    :cond_86
    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_39 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 6

    .line 2702
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2703
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2704
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageAdded : not loaded u = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pkgName = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    monitor-exit v0

    return-void

    .line 2707
    :cond_2c
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v1

    const/4 v2, 0x0

    :goto_33
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v3

    if-gt v1, v3, :cond_43

    .line 2708
    invoke-virtual {p0, p1, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 2710
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 2711
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_51

    if-eqz v2, :cond_50

    .line 2713
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    :cond_50
    return-void

    :catchall_51
    move-exception p0

    .line 2711
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 6

    .line 2735
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2736
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2737
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageChanged : not loaded u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pkgName="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    monitor-exit v0

    return-void

    .line 2740
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->clearCocktailInfoLocked(Ljava/lang/String;)V

    .line 2741
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getDefaultVersion()I

    move-result v1

    const/4 v2, 0x0

    :goto_36
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v3

    if-gt v1, v3, :cond_47

    const/4 v3, 0x0

    .line 2742
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 2744
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_52

    if-eqz v2, :cond_51

    .line 2746
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    :cond_51
    return-void

    :catchall_52
    move-exception p0

    .line 2744
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 6

    .line 2719
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2720
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2721
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageRemoved : not loaded u = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pkgName = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    monitor-exit v0

    return-void

    .line 2725
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result p1

    or-int/lit8 p1, p1, 0x0

    .line 2726
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->saveStateAsync()V

    .line 2727
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_40

    if-eqz p1, :cond_3f

    .line 2729
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateInstalledCocktails(Landroid/util/SparseArray;)V

    :cond_3f
    return-void

    :catchall_40
    move-exception p0

    .line 2727
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public onUnlockUser()V
    .registers 2

    .line 2608
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2609
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    .line 2610
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z
    .registers 20

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v8, p2

    move-object/from16 v3, p3

    .line 823
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x27

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 827
    :try_start_c
    iget-object v4, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.cocktail.provider"

    invoke-virtual {v9, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_9d
    .catchall {:try_start_c .. :try_end_18} :catchall_9b

    if-nez v12, :cond_39

    .line 829
    :try_start_1a
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No com.samsung.android.cocktail.provider meta-data for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_33} :catch_98
    .catchall {:try_start_1a .. :try_end_33} :catchall_95

    if-eqz v12, :cond_38

    .line 863
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_38
    return v11

    .line 833
    :cond_39
    :goto_39
    :try_start_39
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v13, 0x1

    if-eq v2, v13, :cond_44

    const/4 v4, 0x2

    if-eq v2, v4, :cond_44

    goto :goto_39

    .line 837
    :cond_44
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cocktail-provider"

    .line 838
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 839
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta-data does not start with cocktail-provider tag for CocktailBar provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_69} :catch_98
    .catchall {:try_start_39 .. :try_end_69} :catchall_95

    .line 863
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    return v11

    .line 843
    :cond_6d
    :try_start_6d
    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v12

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 845
    iget v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v2, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 846
    invoke-virtual {p1, v2}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 847
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_90} :catch_98
    .catchall {:try_start_6d .. :try_end_90} :catchall_95

    move v11, v13

    .line 863
    :cond_91
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    return v11

    :catchall_95
    move-exception v0

    move-object v2, v12

    goto :goto_bd

    :catch_98
    move-exception v0

    move-object v2, v12

    goto :goto_9e

    :catchall_9b
    move-exception v0

    goto :goto_bd

    :catch_9d
    move-exception v0

    .line 859
    :goto_9e
    :try_start_9e
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML parsing failed for CocktailBar provider \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_9e .. :try_end_b7} :catchall_9b

    if-eqz v2, :cond_bc

    .line 863
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_bc
    return v11

    :goto_bd
    if-eqz v2, :cond_c2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 865
    :cond_c2
    throw v0
.end method

.method public final parseProviderInfoXmlLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 12

    .line 812
    new-instance v6, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    invoke-direct {v6, v0}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 813
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 814
    iget p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAttributeLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    return-object v6

    .line 817
    :cond_1d
    iget p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .registers 12

    .line 1779
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1780
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "partiallyUpdateCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1783
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_47

    .line 1784
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "partiallyUpdateCocktail: user not loaded u="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    monitor-exit v0

    return-void

    .line 1787
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-nez p1, :cond_6a

    .line 1789
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "partiallyUpdateCocktail : invalid cocktailId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    monitor-exit v0

    return-void

    .line 1792
    :cond_6a
    invoke-virtual {p0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkSize(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 1793
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateCocktail : helpcontent\'s view is too large."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    monitor-exit v0

    return-void

    .line 1796
    :cond_7a
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_131

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_86

    goto/16 :goto_131

    .line 1800
    :cond_86
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 1801
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_97
    .catchall {:try_start_1e .. :try_end_97} :catchall_13b

    .line 1802
    :try_start_97
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1803
    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 1804
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1805
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_b3
    .catchall {:try_start_97 .. :try_end_b3} :catchall_110

    .line 1807
    :try_start_b3
    iget v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_d4

    .line 1808
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "partiallyUpdateCocktail id="

    invoke-virtual {v3, v5, v6, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x1

    .line 1809
    invoke-virtual {p1, p3, v3}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailContentView(Landroid/widget/RemoteViews;Z)V

    .line 1810
    iget-object v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    goto :goto_a1

    .line 1813
    :cond_d4
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "partiallyUpdateCocktail: category not matched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestedCat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1813
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_109} :catch_10a
    .catchall {:try_start_b3 .. :try_end_109} :catchall_110

    goto :goto_a1

    .line 1818
    :catch_10a
    :try_start_10a
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a1

    .line 1821
    :cond_10e
    monitor-exit v1

    goto :goto_12f

    :catchall_110
    move-exception p0

    monitor-exit v1
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_110

    :try_start_112
    throw p0

    .line 1823
    :cond_113
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "partiallyUpdateCocktail : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reject"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :goto_12f
    monitor-exit v0

    return-void

    .line 1797
    :cond_131
    :goto_131
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "partiallyUpdateCocktail : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    monitor-exit v0

    return-void

    :catchall_13b
    move-exception p0

    .line 1825
    monitor-exit v0
    :try_end_13d
    .catchall {:try_start_112 .. :try_end_13d} :catchall_13b

    throw p0
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V
    .registers 12

    .line 1829
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1830
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "partiallyUpdateHelpView : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1833
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_47

    .line 1834
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "partiallyUpdateHelpView: user not loaded u="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    monitor-exit v0

    return-void

    .line 1837
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-nez p1, :cond_6a

    .line 1839
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "partiallyUpdateHelpView : invalid cocktailId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    monitor-exit v0

    return-void

    .line 1842
    :cond_6a
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_127

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_76

    goto/16 :goto_127

    :cond_76
    const/4 v1, 0x1

    .line 1846
    invoke-virtual {p1, p3, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailHelpView(Landroid/widget/RemoteViews;Z)V

    .line 1847
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1848
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_8b
    .catchall {:try_start_1e .. :try_end_8b} :catchall_131

    .line 1849
    :try_start_8b
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1851
    :goto_95
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_104

    .line 1852
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1853
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_a7
    .catchall {:try_start_8b .. :try_end_a7} :catchall_106

    .line 1855
    :try_start_a7
    iget v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_ca

    .line 1856
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "partiallyUpdateHelpView id="

    invoke-virtual {v5, v4, v6, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1857
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, p3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->partiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V

    goto :goto_95

    .line 1860
    :cond_ca
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "partiallyUpdateHelpView: category not matched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestedCat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1860
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ff} :catch_100
    .catchall {:try_start_a7 .. :try_end_ff} :catchall_106

    goto :goto_95

    .line 1865
    :catch_100
    :try_start_100
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_95

    .line 1868
    :cond_104
    monitor-exit v1

    goto :goto_125

    :catchall_106
    move-exception p0

    monitor-exit v1
    :try_end_108
    .catchall {:try_start_100 .. :try_end_108} :catchall_106

    :try_start_108
    throw p0

    .line 1870
    :cond_109
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "partiallyUpdateHelpView : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reject"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :goto_125
    monitor-exit v0

    return-void

    .line 1843
    :cond_127
    :goto_127
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "partiallyUpdateHelpView : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    monitor-exit v0

    return-void

    :catchall_131
    move-exception p0

    .line 1873
    monitor-exit v0
    :try_end_133
    .catchall {:try_start_108 .. :try_end_133} :catchall_131

    throw p0
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const v2, 0x10000080

    .line 1148
    :try_start_7
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isProfileWithUnlockedParent(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const v2, 0x100c0080

    :cond_10
    or-int/lit16 v2, v2, 0x400

    .line 1156
    sget-boolean v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->EMERGENCY_MODE_ENABLED:Z

    if-eqz v3, :cond_3a

    .line 1157
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1158
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x280

    move-object v5, p1

    move v9, p2

    .line 1158
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 1161
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_36} :catch_58
    .catchall {:try_start_7 .. :try_end_36} :catchall_56

    .line 1170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1164
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    int-to-long v5, v2

    move-object v2, v3

    move-object v3, p1

    move v7, p2

    .line 1164
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 1166
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_52} :catch_58
    .catchall {:try_start_3a .. :try_end_52} :catchall_56

    .line 1170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_56
    move-exception p0

    goto :goto_60

    .line 1168
    :catch_58
    :try_start_58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_56

    .line 1170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    throw p0
.end method

.method public final readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "failed parsing "

    const-string v3, "UTF-8"

    const-string v4, "failed to close stream "

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1288
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object/from16 v9, p1

    .line 1289
    invoke-interface {v8, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1292
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v10, v6

    .line 1294
    :goto_1a
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_140

    .line 1296
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "gs"

    .line 1297
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_2c} :catch_469
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_2c} :catch_3cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_2c} :catch_331
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2c} :catch_295
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_2c} :catch_1f9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_151
    .catchall {:try_start_b .. :try_end_2c} :catchall_14d

    if-eqz v13, :cond_58

    :try_start_2e
    const-string/jumbo v12, "version"

    .line 1298
    invoke-interface {v8, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_35} :catch_53
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_35} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_35} :catch_49
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_35} :catch_44
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2e .. :try_end_35} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_3a
    .catchall {:try_start_2e .. :try_end_35} :catchall_14d

    .line 1300
    :try_start_35
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_38} :catch_140
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_38} :catch_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_38} :catch_49
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_44
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_38} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3a
    .catchall {:try_start_35 .. :try_end_38} :catchall_14d

    goto/16 :goto_140

    :catch_3a
    move-exception v0

    move-object v5, v0

    move v8, v6

    goto/16 :goto_154

    :catch_3f
    move-exception v0

    move-object v5, v0

    move v8, v6

    goto/16 :goto_1fc

    :catch_44
    move-exception v0

    move-object v5, v0

    move v8, v6

    goto/16 :goto_298

    :catch_49
    move-exception v0

    move-object v5, v0

    move v8, v6

    goto/16 :goto_334

    :catch_4e
    move-exception v0

    move-object v5, v0

    move v8, v6

    goto/16 :goto_3d0

    :catch_53
    move-exception v0

    move-object v5, v0

    move v8, v6

    goto/16 :goto_46c

    :cond_58
    :try_start_58
    const-string/jumbo v13, "p"

    .line 1304
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_140

    const-string/jumbo v12, "pkg"

    .line 1305
    invoke-interface {v8, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "cl"

    .line 1306
    invoke-interface {v8, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1308
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_72} :catch_469
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_72} :catch_3cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_72} :catch_331
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_72} :catch_295
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_58 .. :try_end_72} :catch_1f9
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_72} :catch_151
    .catchall {:try_start_58 .. :try_end_72} :catchall_14d

    if-nez v14, :cond_87

    .line 1311
    :try_start_74
    iget-object v14, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/String;

    aput-object v12, v15, v6

    .line 1312
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1313
    aget-object v12, v14, v6

    move-object/from16 v16, v8

    goto :goto_95

    .line 1315
    :cond_87
    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_8c} :catch_b5
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_8c} :catch_53
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_8c} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_8c} :catch_49
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_8c} :catch_44
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_74 .. :try_end_8c} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8c} :catch_3a
    .catchall {:try_start_74 .. :try_end_8c} :catchall_14d

    move-object/from16 v16, v8

    const-wide/16 v7, 0x0

    :try_start_90
    iget v6, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v14, v15, v7, v8, v6}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_95} :catch_b7
    .catch Ljava/lang/NullPointerException; {:try_start_90 .. :try_end_95} :catch_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_95} :catch_ab
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_95} :catch_a6
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_95} :catch_a1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_90 .. :try_end_95} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_97
    .catchall {:try_start_90 .. :try_end_95} :catchall_14d

    :goto_95
    const/4 v8, 0x0

    goto :goto_c8

    :catch_97
    move-exception v0

    move-object v5, v0

    const/4 v8, 0x0

    goto/16 :goto_154

    :catch_9c
    move-exception v0

    move-object v5, v0

    const/4 v8, 0x0

    goto/16 :goto_1fc

    :catch_a1
    move-exception v0

    move-object v5, v0

    const/4 v8, 0x0

    goto/16 :goto_298

    :catch_a6
    move-exception v0

    move-object v5, v0

    const/4 v8, 0x0

    goto/16 :goto_334

    :catch_ab
    move-exception v0

    move-object v5, v0

    const/4 v8, 0x0

    goto/16 :goto_3d0

    :catch_b0
    move-exception v0

    move-object v5, v0

    const/4 v8, 0x0

    goto/16 :goto_46c

    :catch_b5
    move-object/from16 v16, v8

    .line 1319
    :catch_b7
    :try_start_b7
    iget-object v6, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/NullPointerException; {:try_start_b7 .. :try_end_bf} :catch_13c
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_bf} :catch_138
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_bf} :catch_134
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bf} :catch_130
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b7 .. :try_end_bf} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bf} :catch_129
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_14d

    const/4 v8, 0x0

    :try_start_c0
    aput-object v12, v7, v8

    .line 1320
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1321
    aget-object v12, v6, v8

    .line 1323
    :goto_c8
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v6

    .line 1325
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v14, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v7, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_110

    if-nez v6, :cond_110

    .line 1327
    iget-object v7, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_110

    .line 1328
    new-instance v6, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v7, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    invoke-direct {v6, v7}, Lcom/samsung/android/cocktailbar/Cocktail;-><init>(I)V

    .line 1329
    new-instance v7, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    invoke-direct {v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>()V

    .line 1330
    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v7, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1331
    invoke-virtual {v1, v12}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/cocktailbar/Cocktail;->setUid(I)V

    .line 1332
    invoke-virtual {v6, v7}, Lcom/samsung/android/cocktailbar/Cocktail;->setProviderInfo(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;)V

    .line 1333
    iget-object v7, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v12

    invoke-virtual {v7, v12, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_110
    if-eqz v6, :cond_115

    .line 1337
    invoke-virtual {v9, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_115
    .catch Ljava/lang/NullPointerException; {:try_start_c0 .. :try_end_115} :catch_126
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_115} :catch_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_115} :catch_120
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_115} :catch_11d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c0 .. :try_end_115} :catch_11a
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_115} :catch_118
    .catchall {:try_start_c0 .. :try_end_115} :catchall_14d

    :cond_115
    add-int/lit8 v10, v10, 0x1

    goto :goto_143

    :catch_118
    move-exception v0

    goto :goto_153

    :catch_11a
    move-exception v0

    goto/16 :goto_1fb

    :catch_11d
    move-exception v0

    goto/16 :goto_297

    :catch_120
    move-exception v0

    goto/16 :goto_333

    :catch_123
    move-exception v0

    goto/16 :goto_3cf

    :catch_126
    move-exception v0

    goto/16 :goto_46b

    :catch_129
    move-exception v0

    const/4 v8, 0x0

    goto :goto_153

    :catch_12c
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_1fb

    :catch_130
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_297

    :catch_134
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_333

    :catch_138
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_3cf

    :catch_13c
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_46b

    :catch_140
    :cond_140
    :goto_140
    move-object/from16 v16, v8

    move v8, v6

    :goto_143
    if-ne v11, v5, :cond_147

    goto/16 :goto_4e5

    :cond_147
    move v6, v8

    move-object/from16 v8, v16

    const/4 v7, 0x0

    goto/16 :goto_1a

    :catchall_14d
    move-exception v0

    move-object v2, v0

    goto/16 :goto_511

    :catch_151
    move-exception v0

    move v8, v6

    :goto_153
    move-object v5, v0

    .line 1355
    :goto_154
    :try_start_154
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catchall {:try_start_154 .. :try_end_168} :catchall_14d

    .line 1360
    :try_start_168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 1361
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_17a} :catch_1b2
    .catchall {:try_start_168 .. :try_end_17a} :catchall_1ae

    .line 1363
    :try_start_17a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1364
    :goto_17f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_189

    .line 1365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_188} :catch_1aa
    .catchall {:try_start_17a .. :try_end_188} :catchall_1a6

    goto :goto_17f

    .line 1372
    :cond_189
    :try_start_189
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_18e

    goto/16 :goto_4e4

    :catch_18e
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_197
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e4

    :catchall_1a6
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_1dc

    :catch_1aa
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_1b5

    :catchall_1ae
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_1dc

    :catch_1b2
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    .line 1368
    :goto_1b5
    :try_start_1b5
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c9
    .catchall {:try_start_1b5 .. :try_end_1c9} :catchall_1da

    if-eqz v7, :cond_4e4

    .line 1372
    :try_start_1cb
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_1d0

    goto/16 :goto_4e4

    :catch_1d0
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_197

    :catchall_1da
    move-exception v0

    move-object v1, v0

    :goto_1dc
    if-eqz v7, :cond_1f8

    .line 1372
    :try_start_1de
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1e1
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e1} :catch_1e2

    goto :goto_1f8

    :catch_1e2
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_1f8
    :goto_1f8
    throw v1

    :catch_1f9
    move-exception v0

    move v8, v6

    :goto_1fb
    move-object v5, v0

    .line 1353
    :goto_1fc
    :try_start_1fc
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_210
    .catchall {:try_start_1fc .. :try_end_210} :catchall_14d

    .line 1360
    :try_start_210
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 1361
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_222} :catch_24d
    .catchall {:try_start_210 .. :try_end_222} :catchall_249

    .line 1363
    :try_start_222
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1364
    :goto_227
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_231

    .line 1365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_230} :catch_245
    .catchall {:try_start_222 .. :try_end_230} :catchall_241

    goto :goto_227

    .line 1372
    :cond_231
    :try_start_231
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_234
    .catch Ljava/io/IOException; {:try_start_231 .. :try_end_234} :catch_236

    goto/16 :goto_4e4

    :catch_236
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_241
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_278

    :catch_245
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_250

    :catchall_249
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_278

    :catch_24d
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    .line 1368
    :goto_250
    :try_start_250
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_264
    .catchall {:try_start_250 .. :try_end_264} :catchall_276

    if-eqz v7, :cond_4e4

    .line 1372
    :try_start_266
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_269
    .catch Ljava/io/IOException; {:try_start_266 .. :try_end_269} :catch_26b

    goto/16 :goto_4e4

    :catch_26b
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_276
    move-exception v0

    move-object v1, v0

    :goto_278
    if-eqz v7, :cond_294

    .line 1372
    :try_start_27a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_27d
    .catch Ljava/io/IOException; {:try_start_27a .. :try_end_27d} :catch_27e

    goto :goto_294

    :catch_27e
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_294
    :goto_294
    throw v1

    :catch_295
    move-exception v0

    move v8, v6

    :goto_297
    move-object v5, v0

    .line 1351
    :goto_298
    :try_start_298
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ac
    .catchall {:try_start_298 .. :try_end_2ac} :catchall_14d

    .line 1360
    :try_start_2ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 1361
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2be} :catch_2e9
    .catchall {:try_start_2ac .. :try_end_2be} :catchall_2e5

    .line 1363
    :try_start_2be
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1364
    :goto_2c3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2cd

    .line 1365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2cc
    .catch Ljava/io/IOException; {:try_start_2be .. :try_end_2cc} :catch_2e1
    .catchall {:try_start_2be .. :try_end_2cc} :catchall_2dd

    goto :goto_2c3

    .line 1372
    :cond_2cd
    :try_start_2cd
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2d0
    .catch Ljava/io/IOException; {:try_start_2cd .. :try_end_2d0} :catch_2d2

    goto/16 :goto_4e4

    :catch_2d2
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_2dd
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_314

    :catch_2e1
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_2ec

    :catchall_2e5
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_314

    :catch_2e9
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    .line 1368
    :goto_2ec
    :try_start_2ec
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_300
    .catchall {:try_start_2ec .. :try_end_300} :catchall_312

    if-eqz v7, :cond_4e4

    .line 1372
    :try_start_302
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_305
    .catch Ljava/io/IOException; {:try_start_302 .. :try_end_305} :catch_307

    goto/16 :goto_4e4

    :catch_307
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_312
    move-exception v0

    move-object v1, v0

    :goto_314
    if-eqz v7, :cond_330

    .line 1372
    :try_start_316
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_319
    .catch Ljava/io/IOException; {:try_start_316 .. :try_end_319} :catch_31a

    goto :goto_330

    :catch_31a
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_330
    :goto_330
    throw v1

    :catch_331
    move-exception v0

    move v8, v6

    :goto_333
    move-object v5, v0

    .line 1349
    :goto_334
    :try_start_334
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_348
    .catchall {:try_start_334 .. :try_end_348} :catchall_14d

    .line 1360
    :try_start_348
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 1361
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35a
    .catch Ljava/io/IOException; {:try_start_348 .. :try_end_35a} :catch_385
    .catchall {:try_start_348 .. :try_end_35a} :catchall_381

    .line 1363
    :try_start_35a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1364
    :goto_35f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_369

    .line 1365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_368
    .catch Ljava/io/IOException; {:try_start_35a .. :try_end_368} :catch_37d
    .catchall {:try_start_35a .. :try_end_368} :catchall_379

    goto :goto_35f

    .line 1372
    :cond_369
    :try_start_369
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_36c
    .catch Ljava/io/IOException; {:try_start_369 .. :try_end_36c} :catch_36e

    goto/16 :goto_4e4

    :catch_36e
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_379
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_3b0

    :catch_37d
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_388

    :catchall_381
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_3b0

    :catch_385
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    .line 1368
    :goto_388
    :try_start_388
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39c
    .catchall {:try_start_388 .. :try_end_39c} :catchall_3ae

    if-eqz v7, :cond_4e4

    .line 1372
    :try_start_39e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3a1
    .catch Ljava/io/IOException; {:try_start_39e .. :try_end_3a1} :catch_3a3

    goto/16 :goto_4e4

    :catch_3a3
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_3ae
    move-exception v0

    move-object v1, v0

    :goto_3b0
    if-eqz v7, :cond_3cc

    .line 1372
    :try_start_3b2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3b5
    .catch Ljava/io/IOException; {:try_start_3b2 .. :try_end_3b5} :catch_3b6

    goto :goto_3cc

    :catch_3b6
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_3cc
    :goto_3cc
    throw v1

    :catch_3cd
    move-exception v0

    move v8, v6

    :goto_3cf
    move-object v5, v0

    .line 1347
    :goto_3d0
    :try_start_3d0
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e4
    .catchall {:try_start_3d0 .. :try_end_3e4} :catchall_14d

    .line 1360
    :try_start_3e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 1361
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3f6
    .catch Ljava/io/IOException; {:try_start_3e4 .. :try_end_3f6} :catch_421
    .catchall {:try_start_3e4 .. :try_end_3f6} :catchall_41d

    .line 1363
    :try_start_3f6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1364
    :goto_3fb
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_405

    .line 1365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_404
    .catch Ljava/io/IOException; {:try_start_3f6 .. :try_end_404} :catch_419
    .catchall {:try_start_3f6 .. :try_end_404} :catchall_415

    goto :goto_3fb

    .line 1372
    :cond_405
    :try_start_405
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_408
    .catch Ljava/io/IOException; {:try_start_405 .. :try_end_408} :catch_40a

    goto/16 :goto_4e4

    :catch_40a
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_415
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_44c

    :catch_419
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_424

    :catchall_41d
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_44c

    :catch_421
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    .line 1368
    :goto_424
    :try_start_424
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_438
    .catchall {:try_start_424 .. :try_end_438} :catchall_44a

    if-eqz v7, :cond_4e4

    .line 1372
    :try_start_43a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_43d
    .catch Ljava/io/IOException; {:try_start_43a .. :try_end_43d} :catch_43f

    goto/16 :goto_4e4

    :catch_43f
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_44a
    move-exception v0

    move-object v1, v0

    :goto_44c
    if-eqz v7, :cond_468

    .line 1372
    :try_start_44e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_451
    .catch Ljava/io/IOException; {:try_start_44e .. :try_end_451} :catch_452

    goto :goto_468

    :catch_452
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_468
    :goto_468
    throw v1

    :catch_469
    move-exception v0

    move v8, v6

    :goto_46b
    move-object v5, v0

    .line 1345
    :goto_46c
    :try_start_46c
    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_480
    .catchall {:try_start_46c .. :try_end_480} :catchall_14d

    .line 1360
    :try_start_480
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 1361
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_492
    .catch Ljava/io/IOException; {:try_start_480 .. :try_end_492} :catch_4bc
    .catchall {:try_start_480 .. :try_end_492} :catchall_4b8

    .line 1363
    :try_start_492
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1364
    :goto_497
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a1

    .line 1365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4a0
    .catch Ljava/io/IOException; {:try_start_492 .. :try_end_4a0} :catch_4b4
    .catchall {:try_start_492 .. :try_end_4a0} :catchall_4b0

    goto :goto_497

    .line 1372
    :cond_4a1
    :try_start_4a1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4a4
    .catch Ljava/io/IOException; {:try_start_4a1 .. :try_end_4a4} :catch_4a5

    goto :goto_4e4

    :catch_4a5
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :catchall_4b0
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_4f4

    :catch_4b4
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_4bf

    :catchall_4b8
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_4f4

    :catch_4bc
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    .line 1368
    :goto_4bf
    :try_start_4bf
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d3
    .catchall {:try_start_4bf .. :try_end_4d3} :catchall_4f2

    if-eqz v7, :cond_4e4

    .line 1372
    :try_start_4d5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4d8
    .catch Ljava/io/IOException; {:try_start_4d5 .. :try_end_4d8} :catch_4d9

    goto :goto_4e4

    :catch_4d9
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_197

    :cond_4e4
    :goto_4e4
    move v5, v8

    :goto_4e5
    if-nez v5, :cond_4f1

    .line 1383
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read state, clearing cocktail."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    :cond_4f1
    return-void

    :catchall_4f2
    move-exception v0

    move-object v1, v0

    :goto_4f4
    if-eqz v7, :cond_510

    .line 1372
    :try_start_4f6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4f9
    .catch Ljava/io/IOException; {:try_start_4f6 .. :try_end_4f9} :catch_4fa

    goto :goto_510

    :catch_4fa
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_510
    :goto_510
    throw v1

    .line 1360
    :goto_511
    :try_start_511
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 1361
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-direct {v6, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_523
    .catch Ljava/io/IOException; {:try_start_511 .. :try_end_523} :catch_559
    .catchall {:try_start_511 .. :try_end_523} :catchall_555

    .line 1363
    :try_start_523
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1364
    :goto_528
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_532

    .line 1365
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_531
    .catch Ljava/io/IOException; {:try_start_523 .. :try_end_531} :catch_551
    .catchall {:try_start_523 .. :try_end_531} :catchall_54d

    goto :goto_528

    .line 1372
    :cond_532
    :try_start_532
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_535
    .catch Ljava/io/IOException; {:try_start_532 .. :try_end_535} :catch_536

    goto :goto_580

    :catch_536
    move-exception v0

    move-object v1, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_53f
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_580

    :catchall_54d
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_583

    :catch_551
    move-exception v0

    move-object v1, v0

    move-object v7, v5

    goto :goto_55c

    :catchall_555
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_583

    :catch_559
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    .line 1368
    :goto_55c
    :try_start_55c
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_570
    .catchall {:try_start_55c .. :try_end_570} :catchall_581

    if-eqz v7, :cond_580

    .line 1372
    :try_start_572
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_575
    .catch Ljava/io/IOException; {:try_start_572 .. :try_end_575} :catch_576

    goto :goto_580

    :catch_576
    move-exception v0

    move-object v1, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_53f

    .line 1380
    :cond_580
    :goto_580
    throw v2

    :catchall_581
    move-exception v0

    move-object v1, v0

    :goto_583
    if-eqz v7, :cond_59f

    .line 1372
    :try_start_585
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_588
    .catch Ljava/io/IOException; {:try_start_585 .. :try_end_588} :catch_589

    goto :goto_59f

    :catch_589
    move-exception v0

    move-object v2, v0

    .line 1374
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_59f
    :goto_59f
    throw v1
.end method

.method public final registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 20

    move-object/from16 v0, p0

    .line 1641
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 1642
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerForBroadcastsLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 1645
    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    if-lez v2, :cond_87

    .line 1646
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getBroadcast()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_22

    move v2, v4

    goto :goto_23

    :cond_22
    move v2, v3

    .line 1648
    :goto_23
    new-instance v5, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v6, v4, [I

    .line 1650
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    aput v7, v6, v3

    const-string v3, "cocktailIds"

    .line 1651
    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1652
    iget-object v3, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1655
    :try_start_42
    iget-object v3, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    const/high16 v8, 0xc000000

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4, v5, v8, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_82

    .line 1658
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_87

    move-object/from16 v2, p1

    .line 1661
    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/Cocktail;->setBroadcast(Landroid/app/PendingIntent;)V

    .line 1662
    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    int-to-long v1, v1

    .line 1663
    sget v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v5, v4

    cmp-long v5, v1, v5

    if-gez v5, :cond_66

    int-to-long v1, v4

    :cond_66
    move-wide v15, v1

    .line 1666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1668
    :try_start_6b
    iget-object v11, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x2

    .line 1669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v13, v4, v15

    move-object/from16 v17, v3

    .line 1668
    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_7d

    .line 1671
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_87

    :catchall_7d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1672
    throw v0

    :catchall_82
    move-exception v0

    .line 1658
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1659
    throw v0

    :cond_87
    :goto_87
    return-void
.end method

.method public removeAllUpdatedCocktails()V
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 632
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktailsLocked()V

    .line 633
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final removeAllUpdatedCocktailsLocked()V
    .registers 7

    .line 637
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_25

    .line 639
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 640
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 641
    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    return-void
.end method

.method public removeCocktail(I)V
    .registers 3

    .line 2212
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2213
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(I)V

    .line 2214
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final removeCocktailInHostLocked(I)V
    .registers 8

    .line 2300
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_45

    .line 2304
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    .line 2305
    :try_start_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2307
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 2310
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "removeCocktailInHostLocked id="

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_42

    .line 2312
    :try_start_34
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->removeCocktail(II)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_42

    goto :goto_18

    .line 2314
    :catch_3c
    :try_start_3c
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2317
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_42

    throw p0

    .line 2301
    :cond_45
    :goto_45
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeCocktailInHostLocked : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeCocktailLocked(I)V
    .registers 6

    .line 2287
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 2288
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v0, :cond_3a

    .line 2292
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 2293
    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V

    const/4 v1, 0x0

    .line 2294
    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 2295
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    :cond_3a
    return-void
.end method

.method public final removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 5

    .line 2276
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 2277
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCocktailLocked : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    :cond_1f
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 2280
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->decrementCocktailServiceRefCount(Lcom/samsung/android/cocktailbar/Cocktail;)V

    const/4 v0, 0x0

    .line 2281
    invoke-virtual {p1, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 2282
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailInHostLocked(I)V

    .line 2283
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    return-void
.end method

.method public final removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 5

    .line 1120
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(I)V

    .line 1121
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v0, 0x200

    if-ne p1, v0, :cond_18

    .line 1122
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    .line 1125
    :cond_18
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1127
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p0, 0x0

    return p0

    .line 1131
    :cond_2e
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->removeEnabledProvider(Landroid/content/ComponentName;)V

    .line 1132
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .registers 8

    .line 1087
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1088
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeProvidersForPackageLocked : pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    if-ltz v0, :cond_4a

    .line 1094
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1095
    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getPackageNameFromCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1096
    invoke-virtual {p0, v0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v2

    .line 1097
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_47

    move v3, v1

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_4a
    if-eqz v2, :cond_7b

    if-eqz v3, :cond_51

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 1106
    :cond_51
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 1107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    .line 1108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1111
    :try_start_66
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_76

    .line 1113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7b

    :catchall_76
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw p0

    :cond_7b
    :goto_7b
    return v2
.end method

.method public final removeUpdatedCocktailsExceptContextual()V
    .registers 8

    .line 647
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 648
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_32

    .line 650
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 651
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/high16 v5, 0x10000

    if-eq v4, v5, :cond_2f

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 652
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 653
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 656
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public requestToDisableCocktail(I)Z
    .registers 6

    .line 437
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 438
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToDisableCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 441
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_48

    .line 442
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestToDisableCocktail : not loaded u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 443
    monitor-exit v0

    return p0

    .line 445
    :cond_48
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    .line 446
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_1e .. :try_end_58} :catchall_56

    throw p0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .registers 8

    .line 471
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 472
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToDisableCocktailByCategory : category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 476
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_48

    .line 477
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestToDisableCocktailByCategory : not loaded u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " category="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-exit v0

    return v2

    .line 480
    :cond_48
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_4f
    if-ge v2, v1, :cond_69

    .line 482
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 483
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v5, p1, :cond_66

    .line 484
    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 487
    :cond_69
    monitor-exit v0

    return v3

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_1e .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public final requestToDisableCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 513
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 515
    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_17

    const/16 v2, 0x20

    if-eq v1, v2, :cond_17

    const/16 v2, 0x80

    if-eq v1, v2, :cond_17

    goto :goto_26

    .line 519
    :cond_17
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    if-nez v1, :cond_26

    return v0

    .line 527
    :cond_26
    :goto_26
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    const/4 p0, 0x1

    return p0

    :cond_2b
    return v0
.end method

.method public requestToUpdateCocktail(I)Z
    .registers 6

    .line 424
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 425
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToUpdateCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 428
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_48

    .line 429
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestToUpdateCocktail : not loaded u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 430
    monitor-exit v0

    return p0

    .line 432
    :cond_48
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cocktailbar/Cocktail;

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    .line 433
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_1e .. :try_end_58} :catchall_56

    throw p0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .registers 8

    .line 450
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 451
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToUpdateCocktailByCategory : category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 455
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_48

    .line 456
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestToUpdateCocktailByCategory : not loaded u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " category="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v0

    return v2

    .line 459
    :cond_48
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_4f
    if-ge v2, v1, :cond_69

    .line 461
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 462
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v5, p1, :cond_66

    .line 463
    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 466
    :cond_69
    monitor-exit v0

    return v3

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_1e .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public final requestToUpdateCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 5

    if-eqz p1, :cond_26

    .line 493
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 495
    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/16 v1, 0x20

    if-eq v0, v1, :cond_16

    const/16 v1, 0x80

    if-eq v0, v1, :cond_16

    goto :goto_21

    .line 499
    :cond_16
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    return v0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final resetLoadedDataLocked()V
    .registers 3

    .line 706
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 708
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mNextCocktailId:I

    return-void
.end method

.method public final saveStateAsync()V
    .registers 2

    .line 1226
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final saveStateLocked()V
    .registers 4

    .line 1240
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 1243
    :try_start_4
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1244
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 1245
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_34

    .line 1247
    :cond_12
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1248
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to save state, restoring backup."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_34

    :catch_1d
    move-exception p0

    .line 1251
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed open state file for write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public final savedStateFile()Landroid/util/AtomicFile;
    .registers 4

    .line 1393
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1394
    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v1

    .line 1395
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    if-nez p0, :cond_3f

    .line 1396
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2a

    .line 1397
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2a

    .line 1398
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "savedStateFile Failed mkdirs"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_2a
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/cocktails.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_3f

    .line 1403
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "savedStateFile Failed rename to setting file."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_3f
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public final sendCocktailChangedVisibilityIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 7

    .line 1621
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1622
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendCocktailChangedVisibilityIntentLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    const-string v2, "cocktailId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "cocktailVisibility"

    .line 1626
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 1627
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1628
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1631
    :try_start_31
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v3, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1632
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendCocktailChangedVisibilityIntentLocked : PackageName - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1632
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_31 .. :try_end_6a} :catchall_6e

    .line 1636
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1637
    throw p0
.end method

.method public final sendDisableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 9

    .line 1577
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1578
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDisableIntentLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_41

    .line 1581
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDisableIntentLocked : invalied provider info cocktailId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1584
    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->cancelBroadcasts(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1585
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 1586
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1587
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1590
    :try_start_5b
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1592
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_72

    const/4 v1, 0x0

    .line 1593
    invoke-virtual {p1, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 1596
    :cond_72
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1597
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDisableIntentLocked : PackageName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1597
    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V

    .line 1599
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->getEnabledCount(Ljava/lang/String;)I

    move-result v4

    .line 1600
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->removeEnabledProvider(Landroid/content/ComponentName;)V

    .line 1601
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {v5, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->getEnabledCount(Ljava/lang/String;)I

    move-result v5
    :try_end_b4
    .catchall {:try_start_5b .. :try_end_b4} :catchall_10c

    const/4 v6, 0x1

    if-lt v4, v6, :cond_108

    if-nez v5, :cond_108

    if-eqz v0, :cond_d9

    .line 1605
    :try_start_bb
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDisableIntentLocked : removePowerSaveWhitelistApp cocktailId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_d9
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    const-string/jumbo v4, "sendDisableIntentLocked removePowerSaveWhitelistApp"

    invoke-virtual {v0, p1, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordPowerWhitelistHistory(ILjava/lang/String;)V

    .line 1609
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {p0, v1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_ec} :catch_ed
    .catchall {:try_start_bb .. :try_end_ec} :catchall_10c

    goto :goto_108

    :catch_ed
    move-exception p0

    .line 1611
    :try_start_ee
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDisableIntentLocked: fail to remove pm white list "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_108
    .catchall {:try_start_ee .. :try_end_108} :catchall_10c

    .line 1616
    :cond_108
    :goto_108
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10c
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1617
    throw p0
.end method

.method public final sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V
    .registers 5

    .line 1486
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1487
    sget-object p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEnableAndUpdateBroadcastLocked : not loaded u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    if-eqz p1, :cond_69

    .line 1491
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    .line 1492
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendEnableAndUpdateBroadcastLocked : cocktail("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is disabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_52
    if-nez p2, :cond_5e

    .line 1495
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 1496
    :cond_5e
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1497
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    :cond_69
    return-void
.end method

.method public final sendEnableIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 9

    .line 1503
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1504
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEnableIntentLocked : cocktailId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v1

    if-eqz v1, :cond_52

    .line 1507
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEnableIntentLocked : cocktail("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") has state("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1510
    :cond_52
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_74

    .line 1511
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEnableIntentLocked : invalid provider info cocktailId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1514
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->registerForBroadcastsLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 1515
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 1516
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1517
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1520
    :try_start_8e
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    .line 1521
    invoke-virtual {p1, v1}, Lcom/samsung/android/cocktailbar/Cocktail;->setState(I)V

    .line 1523
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1524
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnableIntentLocked : PackageName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1524
    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V

    .line 1526
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {v4, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->getEnabledCount(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_12c

    .line 1528
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->putEnabledProvider(Landroid/content/ComponentName;)V
    :try_end_dc
    .catchall {:try_start_8e .. :try_end_dc} :catchall_139

    if-eqz v0, :cond_fc

    .line 1531
    :try_start_de
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendEnableIntentLocked : addPowerSaveWhitelistApp cocktailId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_fc
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    const-string/jumbo v4, "sendEnableIntentLocked addPowerSaveWhitelistApp"

    invoke-virtual {v0, p1, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordPowerWhitelistHistory(ILjava/lang/String;)V

    .line 1535
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {p0, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_10f} :catch_110
    .catchall {:try_start_de .. :try_end_10f} :catchall_139

    goto :goto_135

    :catch_110
    move-exception p0

    .line 1537
    :try_start_111
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendEnableIntentLocked: fail to add power save whitelist "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_135

    .line 1541
    :cond_12c
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->putEnabledProvider(Landroid/content/ComponentName;)V
    :try_end_135
    .catchall {:try_start_111 .. :try_end_135} :catchall_139

    .line 1544
    :goto_135
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_139
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    throw p0
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .registers 9

    .line 2593
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_44

    .line 2595
    :try_start_4
    monitor-enter v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_5} :catch_40

    .line 2596
    :try_start_5
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2597
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v4, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "removeCocktailInHostLocked uid="

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2598
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->sendExtraData(ILandroid/os/Bundle;)V

    goto :goto_f

    .line 2600
    :cond_3b
    monitor-exit v0

    goto :goto_44

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_40} :catch_40

    :catch_40
    move-exception p0

    .line 2602
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_44
    :goto_44
    return-void
.end method

.method public final sendInitialBroadcasts()V
    .registers 6

    .line 1427
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1428
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1c

    .line 1430
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1431
    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAttributeLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1433
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcastsLocked()V

    .line 1434
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final sendInitialBroadcastsLocked()V
    .registers 10

    .line 1438
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1439
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendInitialBroadcastsLocked : not loaded u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1442
    :cond_20
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnableCocktailIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 1443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_119

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1445
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v3, :cond_dd

    .line 1446
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v4

    if-nez v4, :cond_dd

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_dd

    .line 1447
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1448
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {v5, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->getEnabledCount(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d3

    .line 1450
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->putEnabledProvider(Landroid/content/ComponentName;)V

    .line 1451
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    :try_start_79
    sget-boolean v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v5, :cond_97

    .line 1454
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendInitialBroadcastsLocked : addPowerSaveWhitelistApp cocktailId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_9b} :catch_b7

    .line 1458
    :try_start_9b
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v2

    .line 1459
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v7

    const-string/jumbo v8, "sendInitialBroadcastsLocked addPowerSaveWhitelistApp"

    .line 1458
    invoke-virtual {v2, v7, v8}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordPowerWhitelistHistory(ILjava/lang/String;)V

    .line 1461
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mLocalDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v2, v4}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_9b .. :try_end_ae} :catchall_b2

    .line 1463
    :try_start_ae
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_113

    :catchall_b2
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1464
    throw v2
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_b7} :catch_b7

    :catch_b7
    move-exception v2

    .line 1466
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendInitialBroadcastsLocked: fail to add pm white list "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_113

    .line 1470
    :cond_d3
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mEnabledCocktailPackages:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->putEnabledProvider(Landroid/content/ComponentName;)V

    goto :goto_113

    .line 1473
    :cond_dd
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "sendInitialBroadcastsLocked : invalid cocktail "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " c="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_10a

    const-string v2, " state="

    .line 1476
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " p="

    .line 1477
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1479
    :cond_10a
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_113
    const/4 v2, 0x1

    .line 1481
    invoke-virtual {p0, v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto/16 :goto_2f

    :cond_119
    return-void
.end method

.method public final sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V
    .registers 8

    .line 1549
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 1550
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendUpdateIntentLocked : cocktail("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is disabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    if-nez p3, :cond_34

    .line 1553
    iget-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {p3, p1, v0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    move-result p3

    if-eqz p3, :cond_be

    .line 1554
    :cond_34
    sget-boolean p3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz p3, :cond_53

    .line 1555
    sget-object p3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendUpdateIntentLocked : cocktailId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_53
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 1558
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 1560
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    aput v1, p2, v0

    const-string v0, "cocktailIds"

    .line 1561
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1562
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1565
    :try_start_77
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1566
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUpdateIntentLocked : PackageName - "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1567
    invoke-virtual {p2, p3}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordSemCocktailProviderBr(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_77 .. :try_end_b0} :catchall_bf

    .line 1570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1572
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p2, p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    :cond_be
    return-void

    :catchall_bf
    move-exception p0

    .line 1570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1571
    throw p0
.end method

.method public setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    .line 282
    :try_start_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 283
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 286
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/ICocktailHost;

    if-eqz v2, :cond_5e

    .line 288
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v4, :cond_18

    .line 289
    invoke-virtual {v4, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 290
    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 291
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 292
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, p0, v3, v2, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    .line 291
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 295
    :cond_5e
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v2, :cond_6b

    .line 297
    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 299
    :cond_6b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 303
    :cond_6f
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_77
    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_77

    .line 305
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, p0, v5, v6, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    .line 305
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    :cond_b4
    const/4 p1, 0x0

    .line 310
    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    .line 311
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    goto :goto_c1

    .line 314
    :cond_db
    iget-boolean p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    if-eqz p2, :cond_e2

    if-nez p3, :cond_e2

    const/4 p1, 0x1

    :cond_e2
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    .line 315
    monitor-exit v0

    return-void

    :catchall_e6
    move-exception p0

    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_e .. :try_end_e8} :catchall_e6

    throw p0
.end method

.method public setEnabledCocktailIds([I)V
    .registers 8

    .line 2334
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2335
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_29

    .line 2336
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabledCocktailIds: settings not loaded yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mStateLoaded:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    monitor-exit v0

    return-void

    .line 2339
    :cond_29
    array-length v1, p1

    .line 2340
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v1, :cond_52

    .line 2342
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v4, :cond_4f

    .line 2343
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4f

    .line 2344
    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 2347
    :cond_52
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$5;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2354
    monitor-exit v0

    return-void

    :catchall_5e
    move-exception p0

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public setMode(ILjava/lang/String;I)V
    .registers 5

    .line 534
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 535
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setModeLocked(ILjava/lang/String;I)V

    .line 536
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final setModeLocked(ILjava/lang/String;I)V
    .registers 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_54

    const/4 p1, 0x2

    if-ne p3, p1, :cond_a

    .line 550
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktailsLocked()V

    goto :goto_31

    :cond_a
    const/4 p1, 0x4

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByCategoryLocked(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 553
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 554
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 555
    invoke-virtual {p0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_13

    .line 559
    :cond_31
    :goto_31
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 561
    iget-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    .line 562
    invoke-virtual {p0, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_39

    .line 543
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 545
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcastsLocked()V

    :cond_5d
    return-void
.end method

.method public setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V
    .registers 13

    .line 2035
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2036
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2037
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setOnPullPendingIntent: u="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    monitor-exit v0

    return-void

    .line 2040
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-eqz p1, :cond_12c

    .line 2041
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    if-nez v1, :cond_3e

    goto/16 :goto_12c

    .line 2045
    :cond_3e
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_113

    .line 2046
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_50

    goto/16 :goto_113

    .line 2050
    :cond_50
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_109

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    goto/16 :goto_109

    .line 2054
    :cond_5c
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 2055
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_145

    .line 2056
    :try_start_6d
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2057
    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 2058
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2059
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_e8

    .line 2061
    :try_start_89
    iget v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_ac

    .line 2062
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "setPullToRefresh id="

    invoke-virtual {v5, v4, v6, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2063
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, p3, p4, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->setPullToRefresh(IILandroid/app/PendingIntent;I)V

    goto :goto_77

    .line 2065
    :cond_ac
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setOnPullPendingIntent: category not matched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestedCat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2065
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_e1} :catch_e2
    .catchall {:try_start_89 .. :try_end_e1} :catchall_e8

    goto :goto_77

    .line 2070
    :catch_e2
    :try_start_e2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_77

    .line 2073
    :cond_e6
    monitor-exit v1

    goto :goto_107

    :catchall_e8
    move-exception p0

    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw p0

    .line 2075
    :cond_eb
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setOnPullPendingIntent : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reject"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :goto_107
    monitor-exit v0

    return-void

    .line 2051
    :cond_109
    :goto_109
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setOnPullPendingIntent : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    monitor-exit v0

    return-void

    .line 2047
    :cond_113
    :goto_113
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setOnPullPendingIntent: not supported provider  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    monitor-exit v0

    return-void

    .line 2042
    :cond_12c
    :goto_12c
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setOnPullPendingIntent : invalid cocktailId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    monitor-exit v0

    return-void

    :catchall_145
    move-exception p0

    .line 2078
    monitor-exit v0
    :try_end_147
    .catchall {:try_start_ea .. :try_end_147} :catchall_145

    throw p0
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .registers 11

    .line 1877
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1878
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1881
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_47

    .line 1882
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showCocktail: not loaded u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    monitor-exit v0

    return-void

    .line 1885
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-eqz p1, :cond_11c

    .line 1886
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v1

    if-nez v1, :cond_59

    goto/16 :goto_11c

    .line 1890
    :cond_59
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_112

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    goto/16 :goto_112

    .line 1894
    :cond_65
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 1895
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_76
    .catchall {:try_start_1e .. :try_end_76} :catchall_135

    .line 1896
    :try_start_76
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1898
    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 1899
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1900
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_f1

    .line 1902
    :try_start_92
    iget v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_b5

    .line 1903
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "showCocktail id="

    invoke-virtual {v5, v4, v6, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1904
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget-object v3, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->showCocktail(II)V

    goto :goto_80

    .line 1906
    :cond_b5
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showCocktail: category not matched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestedCat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_ea} :catch_eb
    .catchall {:try_start_92 .. :try_end_ea} :catchall_f1

    goto :goto_80

    .line 1911
    :catch_eb
    :try_start_eb
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_80

    .line 1914
    :cond_ef
    monitor-exit v1

    goto :goto_110

    :catchall_f1
    move-exception p0

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_eb .. :try_end_f3} :catchall_f1

    :try_start_f3
    throw p0

    .line 1916
    :cond_f4
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showCocktail : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reject"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :goto_110
    monitor-exit v0

    return-void

    .line 1891
    :cond_112
    :goto_112
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showCocktail : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    monitor-exit v0

    return-void

    .line 1887
    :cond_11c
    :goto_11c
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showCocktail : invalid cocktailId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    monitor-exit v0

    return-void

    :catchall_135
    move-exception p0

    .line 1918
    monitor-exit v0
    :try_end_137
    .catchall {:try_start_f3 .. :try_end_137} :catchall_135

    throw p0
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .registers 9

    .line 319
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 320
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    .line 321
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startListening: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " init="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_be

    .line 323
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-nez v0, :cond_39

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 326
    :cond_39
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v1

    .line 327
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v0, :cond_5d

    .line 329
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 330
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 331
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 333
    :cond_5a
    iput p3, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    goto :goto_67

    .line 336
    :cond_5d
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_67
    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    .line 340
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 341
    iget p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    iget p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    goto :goto_74

    .line 343
    :cond_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_3c .. :try_end_8f} :catchall_bb

    .line 344
    iget p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    if-nez p1, :cond_94

    return-void

    .line 347
    :cond_94
    iget-boolean p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    if-nez p1, :cond_b7

    .line 348
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result p1

    .line 349
    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->refreshCocktailBarMode()I

    move-result p2

    const/4 p3, 0x1

    if-eq p1, p2, :cond_af

    .line 351
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p1, v0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    goto :goto_b4

    :cond_af
    if-ne p2, p3, :cond_b4

    .line 353
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    .line 355
    :cond_b4
    :goto_b4
    iput-boolean p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mInitialzed:Z

    goto :goto_ba

    .line 357
    :cond_b7
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktailAttribute()V

    :goto_ba
    return-void

    :catchall_bb
    move-exception p0

    .line 343
    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p0

    :catchall_be
    move-exception p0

    .line 322
    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw p0
.end method

.method public systemDestroy()V
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;->unregisterContentObserver()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailSettingsObserver:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailBarSettingsObserver;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unlinkAllHost()V

    .line 225
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 226
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetLoadedDataLocked()V

    .line 227
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final systemReady()V
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 216
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    .line 217
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final unlinkAllHost()V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 259
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unlinkAllHost: no registered host"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_d
    monitor-enter v0

    .line 264
    :try_start_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 265
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlinkAllHost: no registered host"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit v0

    return-void

    .line 269
    :cond_20
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 270
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    goto :goto_2a

    :cond_40
    const/4 v1, 0x0

    .line 272
    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    .line 273
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final unlinkHost(Ljava/lang/String;)V
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 241
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unlinkHost: no registered host"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_d
    monitor-enter v0

    .line 245
    :try_start_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 246
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    if-eqz v1, :cond_23

    .line 248
    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->unlinkBinder()V

    .line 250
    :cond_23
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 252
    :cond_29
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinkHost: no registered host for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_42

    throw p0
.end method

.method public unsetMode(ILjava/lang/String;)V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 571
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetModeLocked(ILjava/lang/String;)V

    .line 572
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final unsetModeLocked(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    .line 577
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->findCocktailsByPrivateModeLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 579
    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public updateCocktail(I)V
    .registers 4

    .line 2203
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    .line 2206
    invoke-virtual {p0, p1, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    .line 2208
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V
    .registers 12

    .line 1723
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1724
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCocktail : cocktailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_1b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1727
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_47

    .line 1728
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCocktail: u="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cocktail="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    monitor-exit v0

    return-void

    .line 1731
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupCocktailLocked(IILjava/lang/String;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object p1

    if-nez p1, :cond_6a

    .line 1733
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateCocktail : invalid cocktailId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    monitor-exit v0

    return-void

    .line 1736
    :cond_6a
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkSize(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 1737
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateCocktail : content\'s view is too large."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    monitor-exit v0

    return-void

    .line 1740
    :cond_7e
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getHelpView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkSize(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 1741
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateCocktail : helpcontent\'s view is too large."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    monitor-exit v0

    return-void

    .line 1744
    :cond_92
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_159

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9e

    goto/16 :goto_159

    .line 1748
    :cond_9e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1749
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_af
    .catchall {:try_start_1e .. :try_end_af} :catchall_163

    .line 1750
    :try_start_af
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1751
    :goto_b9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 1752
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1753
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_cb
    .catchall {:try_start_af .. :try_end_cb} :catchall_138

    .line 1755
    :try_start_cb
    iget v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_f9

    .line 1756
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v3

    const-string/jumbo v5, "updateCocktail"

    invoke-virtual {v3, p2, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordPanelUpdateHistory(ILjava/lang/String;)V

    .line 1757
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v5, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "updateCocktail id="

    invoke-virtual {v3, v5, v6, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1758
    invoke-virtual {p1, p3}, Lcom/samsung/android/cocktailbar/Cocktail;->updateCocktailInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V

    .line 1759
    iget-object v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v3, p2, p1, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    const/4 v3, 0x0

    .line 1760
    invoke-virtual {p1, v3}, Lcom/samsung/android/cocktailbar/Cocktail;->setPackageUpdated(Z)V

    goto :goto_b9

    .line 1762
    :cond_f9
    sget-object v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCocktail: category not matched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1763
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requestedCat="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1762
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_131} :catch_132
    .catchall {:try_start_cb .. :try_end_131} :catchall_138

    goto :goto_b9

    .line 1768
    :catch_132
    :try_start_132
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_b9

    .line 1771
    :cond_136
    monitor-exit v1

    goto :goto_157

    :catchall_138
    move-exception p0

    monitor-exit v1
    :try_end_13a
    .catchall {:try_start_132 .. :try_end_13a} :catchall_138

    :try_start_13a
    throw p0

    .line 1773
    :cond_13b
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateCocktail : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reject"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :goto_157
    monitor-exit v0

    return-void

    .line 1745
    :cond_159
    :goto_159
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateCocktail : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    monitor-exit v0

    return-void

    :catchall_163
    move-exception p0

    .line 1775
    monitor-exit v0
    :try_end_165
    .catchall {:try_start_13a .. :try_end_165} :catchall_163

    throw p0
.end method

.method public final updateCocktailAttribute()V
    .registers 8

    .line 363
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 364
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_24

    .line 365
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCocktailAttribute : not loaded u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    monitor-exit v0

    return-void

    .line 368
    :cond_24
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v1, :cond_74

    .line 370
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 371
    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHostCategory:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->checkCocktailAttributeLocked(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 372
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_60

    .line 373
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v4

    if-nez v4, :cond_71

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 374
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v4

    if-eqz v4, :cond_71

    const/4 v4, 0x1

    .line 375
    invoke-virtual {p0, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_71

    .line 378
    :cond_60
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 379
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    :cond_71
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 383
    :cond_74
    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public final updateCocktailBarSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 391
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v0

    .line 392
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 393
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCocktailBarSetting : not loaded u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lastEnabled="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 394
    monitor-exit v0

    return-object p0

    .line 396
    :cond_2e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 397
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 399
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFromSettingsLocked()V

    move-object p1, v1

    .line 401
    :cond_40
    monitor-exit v0

    return-object p1

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final updateFromSettingsLocked()V
    .registers 5

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 409
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 410
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v2, :cond_13

    .line 412
    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktailLocked(Lcom/samsung/android/cocktailbar/Cocktail;)V

    goto :goto_13

    .line 415
    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 416
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz v1, :cond_35

    const/4 v2, 0x1

    .line 418
    invoke-virtual {p0, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_35

    :cond_54
    return-void
.end method

.method public final updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    .line 923
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    const-string/jumbo v10, "updateProvidersForPackageLocked : "

    if-eqz v0, :cond_23

    .line 924
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v11, 0x0

    if-nez v7, :cond_2f

    .line 927
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateProvidersForPackageLocked : invalide packageName"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 932
    :cond_2f
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 933
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v13

    .line 934
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    iget v2, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v6, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    if-nez v14, :cond_4a

    move v15, v11

    goto :goto_4f

    .line 937
    :cond_4a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move v15, v1

    :goto_4f
    if-eqz v0, :cond_68

    .line 939
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProvidersForPackageLocked : queryIntentReceivers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_68
    iget-object v0, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v5

    move v0, v11

    move v4, v0

    move/from16 v16, v4

    :goto_76
    if-ge v4, v15, :cond_174

    .line 943
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 944
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 945
    sget-boolean v17, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v17, :cond_a5

    .line 946
    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v0

    const-string v0, " ai="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :cond_a5
    move/from16 v19, v0

    .line 948
    :goto_a7
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_b8

    :cond_b0
    :goto_b0
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v20, v10

    goto/16 :goto_169

    .line 951
    :cond_b8
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto :goto_b0

    .line 954
    :cond_c1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-virtual {v6, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v3

    if-nez v3, :cond_105

    .line 957
    invoke-virtual {v6, v1, v5, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 958
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e6

    const/16 v16, 0x1

    .line 962
    :cond_e6
    iget-object v1, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v1

    if-eqz v1, :cond_f7

    const/4 v1, 0x1

    .line 963
    invoke-virtual {v6, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_fc

    :cond_f7
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    invoke-virtual {v6, v0, v13, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    :goto_fc
    move v0, v1

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v20, v10

    goto/16 :goto_16b

    :cond_105
    const/16 v17, 0x4

    const/16 v18, 0x1

    .line 969
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v0

    if-ne v0, v8, :cond_15b

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-object v1, v3

    move-object/from16 v20, v10

    move/from16 v10, v18

    move-object/from16 v18, v3

    move/from16 v10, v17

    move-object/from16 v3, v19

    move/from16 v21, v4

    move v4, v5

    move/from16 v22, v5

    move/from16 v5, p2

    .line 970
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    .line 971
    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v0, v10, :cond_13b

    move-object/from16 v3, v18

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_152

    .line 974
    :cond_13b
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_14f

    .line 975
    iget-object v0, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    const/4 v2, 0x2

    move-object/from16 v3, v18

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    goto :goto_151

    :cond_14f
    move-object/from16 v3, v18

    :goto_151
    const/4 v0, 0x1

    .line 977
    :goto_152
    invoke-virtual {v3, v0}, Lcom/samsung/android/cocktailbar/Cocktail;->setPackageUpdated(Z)V

    const/4 v0, 0x0

    .line 978
    invoke-virtual {v6, v3, v13, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    goto :goto_16b

    :cond_15b
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v20, v10

    .line 981
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateProvidersForPackageLocked : can not get right cocktail"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_169
    move/from16 v0, v19

    :goto_16b
    add-int/lit8 v4, v21, 0x1

    move-object/from16 v10, v20

    move/from16 v5, v22

    const/4 v11, 0x0

    goto/16 :goto_76

    :cond_174
    move/from16 v19, v0

    const/4 v10, 0x4

    .line 985
    iget-object v0, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_17f
    if-ltz v0, :cond_1cb

    .line 987
    iget-object v2, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 988
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v3

    if-ne v3, v8, :cond_1c8

    invoke-virtual {v6, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getPackageNameFromCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c8

    .line 989
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1a8

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a9

    :cond_1a8
    const/4 v3, 0x0

    :goto_1a9
    invoke-virtual {v12, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c8

    if-eqz v9, :cond_1b8

    .line 991
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_1b8
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v3, v10, :cond_1c2

    move/from16 v16, v1

    .line 996
    :cond_1c2
    invoke-virtual {v6, v0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeProviderLocked(ILcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v2

    move/from16 v19, v2

    :cond_1c8
    add-int/lit8 v0, v0, -0x1

    goto :goto_17f

    :cond_1cb
    if-eqz v19, :cond_1e8

    if-eqz v16, :cond_1d2

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 1003
    :cond_1d2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 1005
    iget-object v0, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    const/4 v0, 0x0

    return v0

    :cond_1e8
    return v19
.end method

.method public final updateProvidersInfoForPackageLocked(Ljava/lang/String;I)Z
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 1014
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    const-string/jumbo v9, "updateProvidersInfoForPackageLocked : "

    if-eqz v0, :cond_29

    .line 1015
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v10, 0x0

    if-nez v7, :cond_44

    .line 1018
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProvidersInfoForPackageLocked invalid packageName version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 1023
    :cond_44
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1024
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/cocktailbar/Cocktail;->getUpdateIntentName(I)Ljava/lang/String;

    move-result-object v12

    .line 1025
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    iget v1, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v6, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_5f

    move v14, v10

    goto :goto_64

    .line 1028
    :cond_5f
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    move v14, v0

    .line 1029
    :goto_64
    iget-object v0, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mConfig:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v15

    move v0, v10

    move v5, v0

    move/from16 v16, v5

    :goto_72
    if-ge v5, v14, :cond_13f

    .line 1031
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1032
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1033
    sget-boolean v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_9f

    .line 1034
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ai="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_9f
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a9

    goto :goto_ed

    .line 1040
    :cond_a9
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1041
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v6, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v10

    const/4 v1, 0x4

    if-nez v10, :cond_f0

    .line 1044
    invoke-virtual {v6, v3, v15, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;II)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v2

    if-eqz v2, :cond_ed

    .line 1045
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1046
    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    if-ne v0, v1, :cond_d6

    const/16 v16, 0x1

    .line 1049
    :cond_d6
    iget-object v0, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v2}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v0

    if-eqz v0, :cond_e7

    const/4 v1, 0x1

    .line 1050
    invoke-virtual {v6, v2, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendEnableAndUpdateBroadcastLocked(Lcom/samsung/android/cocktailbar/Cocktail;Z)V

    goto :goto_ec

    :cond_e7
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1052
    invoke-virtual {v6, v2, v12, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    :goto_ec
    move v0, v1

    :cond_ed
    :goto_ed
    move/from16 v18, v5

    goto :goto_138

    :cond_f0
    const/16 v17, 0x1

    .line 1056
    invoke-virtual {v10}, Lcom/samsung/android/cocktailbar/Cocktail;->getVersion()I

    move-result v1

    if-ne v1, v8, :cond_12e

    move-object/from16 v0, p0

    const/4 v7, 0x4

    move-object v1, v10

    move-object v7, v4

    move v4, v15

    move/from16 v18, v5

    move/from16 v5, p2

    .line 1057
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->parseAndUpdateProviderInfoXml(Lcom/samsung/android/cocktailbar/Cocktail;Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;II)Z

    .line 1058
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-virtual {v10}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_116

    move/from16 v16, v17

    goto :goto_127

    .line 1061
    :cond_116
    invoke-virtual {v10}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_127

    .line 1062
    iget-object v0, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    :cond_127
    :goto_127
    const/4 v0, 0x0

    .line 1064
    invoke-virtual {v6, v10, v12, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendUpdateIntentLocked(Lcom/samsung/android/cocktailbar/Cocktail;Ljava/lang/String;Z)V

    move/from16 v0, v17

    goto :goto_138

    :cond_12e
    move/from16 v18, v5

    .line 1067
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateProvidersInfoForPackageLocked : can not get right cocktail"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_138
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v7, p1

    const/4 v10, 0x0

    goto/16 :goto_72

    :cond_13f
    if-eqz v0, :cond_15c

    if-eqz v16, :cond_146

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateToolLauncher()V

    .line 1076
    :cond_146
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 1078
    iget-object v1, v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15c

    const/4 v1, 0x0

    return v1

    :cond_15c
    return v0
.end method

.method public updateSysfsGripDisable(Z)V
    .registers 2

    .line 2775
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    return-void
.end method

.method public final updateToolLauncher()V
    .registers 8

    .line 1692
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_47

    .line 1696
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    .line 1697
    :try_start_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1698
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1699
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1700
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;

    .line 1701
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCommandLogger:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    iget-object v4, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "updateToolLauncher uid="

    iget v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_44

    .line 1703
    :try_start_36
    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->updateToolLauncher(I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_44

    goto :goto_18

    .line 1705
    :catch_3e
    :try_start_3e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 1708
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw p0

    .line 1693
    :cond_47
    :goto_47
    sget-object p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateToolLauncher : no active host"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .registers 3

    .line 2771
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    return-void
.end method

.method public final writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 11

    const-string/jumbo v0, "p"

    const-string/jumbo v1, "gs"

    const/4 v2, 0x0

    .line 1259
    :try_start_7
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v4, "utf-8"

    .line 1260
    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1261
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1262
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move v5, v2

    :goto_22
    if-ge v5, p1, :cond_52

    .line 1265
    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 1266
    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_4f

    .line 1268
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "pkg"

    .line 1269
    iget-object v8, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "cl"

    .line 1270
    iget-object v6, v6, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1274
    :cond_52
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_58} :catch_5a

    const/4 p0, 0x1

    return p0

    :catch_5a
    move-exception p0

    .line 1278
    sget-object p1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
