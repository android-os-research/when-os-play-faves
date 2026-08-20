.class public Lcom/android/internal/app/AppLockPolicy;
.super Ljava/lang/Object;
.source "AppLockPolicy.java"


# static fields
.field private static final blacklist APPLOCK_ENABLED:Ljava/lang/String; = "app_lock_enabled"

.field public static final blacklist BINDER_ARRAY_DISPLAYID:I = 0x0

.field public static final blacklist BINDER_ARRAY_EXCEPTIONLIST:I = 0x2

.field public static final blacklist BINDER_ARRAY_LOCKED:I = 0x0

.field public static final blacklist BINDER_ARRAY_MULTIWINDOW:I = 0x0

.field public static final blacklist BINDER_ARRAY_NOTIFICATION:I = 0x1

.field public static final blacklist BINDER_ARRAY_VERIFYING:I = 0x1

.field private static final blacklist BIOMETRICS_PASSWORD_TYPE:Ljava/lang/String; = "biometrics_password_type"

.field private static final blacklist BIOMETRICS_PATTERN_TYPE:Ljava/lang/String; = "biometrics_pattern_type"

.field private static final blacklist BIOMETRICS_PINCODE_TYPE:Ljava/lang/String; = "biometrics_pincode_type"

.field private static final blacklist BIOMETRICS_TYPE:Ljava/lang/String; = "biometrics_type"

.field private static final blacklist CHECK_APPLOCK_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FACE"

.field private static final blacklist CHECK_APPLOCK_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_PASSWORD_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_PATTERN_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

.field private static final blacklist CHECK_APPLOCK_FINGERPRINT_PINCODE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

.field private static final blacklist CHECK_APPLOCK_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_IRISES"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_PASSWORD_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_IRISES"

.field private static final blacklist CHECK_APPLOCK_PATTERN_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN"

.field private static final blacklist CHECK_APPLOCK_PATTERN_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_PATTERN_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE"

.field private static final blacklist CHECK_APPLOCK_PATTERN_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_PATTERN_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_IRISES"

.field private static final blacklist CHECK_APPLOCK_PINCODE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE"

.field private static final blacklist CHECK_APPLOCK_PINCODE_BIOMETRICS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_BIOMETRICS"

.field private static final blacklist CHECK_APPLOCK_PINCODE_FACE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE"

.field private static final blacklist CHECK_APPLOCK_PINCODE_FACE_SPASS_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE_SPASS"

.field private static final blacklist CHECK_APPLOCK_PINCODE_IRISES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_IRISES"

.field private static final blacklist FACE_PASSWORD_TYPE:Ljava/lang/String; = "face_password_type"

.field private static final blacklist FACE_PATTERN_TYPE:Ljava/lang/String; = "face_pattern_type"

.field private static final blacklist FACE_PINCODE_TYPE:Ljava/lang/String; = "face_pincode_type"

.field private static final blacklist FACE_SPASS_PASSWORD_TYPE:Ljava/lang/String; = "face_spass_password_type"

.field private static final blacklist FACE_SPASS_PATTERN_TYPE:Ljava/lang/String; = "face_spass_pattern_type"

.field private static final blacklist FACE_SPASS_PINCODE_TYPE:Ljava/lang/String; = "face_spass_pincode_type"

.field private static final blacklist FACE_SPASS_TYPE:Ljava/lang/String; = "face_spass_type"

.field private static final blacklist FACE_TYPE:Ljava/lang/String; = "face_type"

.field private static final blacklist FINGERPRINT_PASSWORD_TYPE:Ljava/lang/String; = "fingerprint_password_type"

.field private static final blacklist FINGERPRINT_PATTERN_TYPE:Ljava/lang/String; = "fingerprint_pattern_type"

.field private static final blacklist FINGERPRINT_PINCODE_TYPE:Ljava/lang/String; = "fingerprint_pincode_type"

.field private static final blacklist FINGERPRINT_TYPE:Ljava/lang/String; = "fingerprint_type"

.field public static final blacklist FLOATING_MESSAGE_REQUEST:Ljava/lang/String; = "FLOATING_MESSAGE_REQUEST"

.field private static final blacklist HIDDEN_PACKAGE:Ljava/lang/String; = "ssecure_hidden_apps_packages"

.field private static final blacklist IRIS_PASSWORD_TYPE:Ljava/lang/String; = "iris_password_type"

.field private static final blacklist IRIS_PATTERN_TYPE:Ljava/lang/String; = "iris_pattern_type"

.field private static final blacklist IRIS_PINCODE_TYPE:Ljava/lang/String; = "iris_pincode_type"

.field private static final blacklist IRIS_TYPE:Ljava/lang/String; = "iris_type"

.field public static final blacklist LAUNCHER_REQUEST:Ljava/lang/String; = "LAUNCHER_REQUEST"

.field public static final blacklist LAUNCH_FROM_NOTIFICATION:Ljava/lang/String; = "LAUNCH_FROM_NOTIFICATION"

.field public static final blacklist LAUNCH_FROM_RESUME:Ljava/lang/String; = "LAUNCH_FROM_RESUME"

.field public static final blacklist LAUNCH_FROM_SETTINGS:Ljava/lang/String; = "APPLOCK_APPS_FROM_SETTINGS"

.field public static final blacklist LOCKED_APP_CAN_SHOW_WHEN_LOCKED:Ljava/lang/String; = "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

.field private static final blacklist LOCKED_CLASSES:Ljava/lang/String; = "applock_locked_apps_classes"

.field private static final blacklist LOCKED_PACKAGE:Ljava/lang/String; = "applock_locked_apps_packages"

.field public static final blacklist LOCKED_PACKAGE_ACTIVITY_OPTIONS:Ljava/lang/String; = "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

.field public static final blacklist LOCKED_PACKAGE_DISPLAYID:Ljava/lang/String; = "LOCKED_PACKAGE_DISPLAYID"

.field public static final blacklist LOCKED_PACKAGE_ICON:Ljava/lang/String; = "LOCKED_PACKAGE_ICON"

.field public static final blacklist LOCKED_PACKAGE_INTENT:Ljava/lang/String; = "LOCKED_PACKAGE_INTENT"

.field public static final blacklist LOCKED_PACKAGE_LABEL:Ljava/lang/String; = "LOCKED_PACKAGE_LABEL"

.field public static final blacklist LOCKED_PACKAGE_MULTIWINDOWSTYLE:Ljava/lang/String; = "LOCKED_PACKAGE_MULTIWINDOWSTYLE"

.field public static final blacklist LOCKED_PACKAGE_NAME:Ljava/lang/String; = "LOCKED_PACKAGE_NAME"

.field public static final blacklist LOCKED_PACKAGE_USERID:Ljava/lang/String; = "LOCKED_PACKAGE_USERID"

.field public static final blacklist LOCKED_PACKAGE_WINDOW_ATTRIBUTES:Ljava/lang/String; = "LOCKED_PACKAGE_WINDOW_ATTRIBUTES"

.field private static final blacklist LOCKED_TYPE:Ljava/lang/String; = "applock_lock_type"

.field private static final blacklist PACKAGE_NAME_CONTACTS:Ljava/lang/String; = "com.samsung.android.contacts"

.field private static final blacklist PASSWORD_TYPE:Ljava/lang/String; = "password_type"

.field private static final blacklist PATTERN_TYPE:Ljava/lang/String; = "pattern_type"

.field private static final blacklist PINCODE_TYPE:Ljava/lang/String; = "pincode_type"

.field public static final blacklist REQUEST_VERIFY_FROM:Ljava/lang/String; = "REQUEST_VERIFY_FROM"

.field public static final blacklist START_SERVICE_WITH_NO_ANIMATION:Ljava/lang/String; = "START_SERVICE_WITH_NO_ANIMATION"

.field private static final blacklist TAG:Ljava/lang/String; = "AppLockPolicy"

.field private static volatile blacklist mInstance:Lcom/android/internal/app/AppLockPolicy;

.field private static blacklist mIsAppLockEnabled:Z


# instance fields
.field private blacklist mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mAppLockSharedPref:Landroid/app/AppLockCoreState;

.field private blacklist mAppLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedLock:Ljava/lang/Object;

.field private blacklist mAppLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedRelatedClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mAppLockedVerifyingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLockedClasses:Ljava/lang/String;

.field private blacklist mLockedPackages:Ljava/lang/String;

.field private blacklist mLockedType:Ljava/lang/String;

.field private blacklist mLockedTypeInt:I

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateLockedApps(Lcom/android/internal/app/AppLockPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    .line 459
    new-instance v1, Lcom/android/internal/app/AppLockPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AppLockPolicy$2;-><init>(Lcom/android/internal/app/AppLockPolicy;)V

    iput-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Landroid/app/AppLockCoreState;

    invoke-direct {v0, p1}, Landroid/app/AppLockCoreState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    .line 175
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->init()V

    .line 176
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockLaunchingExceptionList()V

    .line 177
    return-void
.end method

.method private static blacklist fileUriMayExposed(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 750
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 751
    const/4 v0, 0x1

    return v0

    .line 753
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getAppLockLaunchingExceptionList()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "activities":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/app/AppLockPolicy;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 164
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_13

    .line 165
    const-class v0, Lcom/android/internal/app/AppLockPolicy;

    monitor-enter v0

    .line 166
    :try_start_7
    new-instance v1, Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AppLockPolicy;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    .line 167
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 169
    :cond_13
    :goto_13
    sget-object v0, Lcom/android/internal/app/AppLockPolicy;->mInstance:Lcom/android/internal/app/AppLockPolicy;

    return-object v0
.end method

.method private blacklist getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 757
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 758
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    .line 760
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private blacklist init()V
    .registers 4

    .line 433
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLockPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AppLockPolicy$1;-><init>(Lcom/android/internal/app/AppLockPolicy;)V

    const-class v2, Lcom/android/internal/app/AppLockPolicy;

    .line 452
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 455
    goto :goto_1c

    .line 453
    :catch_13
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppLockPolicy"

    const-string/jumbo v2, "onUserSwitch, observe()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    return-void
.end method

.method public static blacklist isSupportAppLock()Z
    .registers 1

    .line 702
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    return v0
.end method

.method public static blacklist isSupportSSecure()Z
    .registers 1

    .line 775
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_SPROTECT:Z

    return v0
.end method

.method public static blacklist skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 717
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    const-string v1, "AppLockPolicy"

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 718
    const-string v0, "intent is starting with S secure, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return v2

    .line 730
    :cond_13
    if-eqz p3, :cond_2f

    .line 731
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 733
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 734
    :cond_29
    const-string v0, "intent is starting in multi WindowingMode, skip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return v2

    .line 737
    :cond_2f
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 738
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 739
    .local v3, "runningTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 740
    .local v5, "infor":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    if-eq v6, v2, :cond_5c

    .line 742
    const-string v4, "hasMultiWindowRunning, skip"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return v2

    .line 745
    .end local v5    # "infor":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5c
    goto :goto_40

    .line 746
    :cond_5d
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist updateLockedApps()V
    .registers 12

    .line 504
    iget v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    packed-switch v0, :pswitch_data_11a

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    goto/16 :goto_84

    .line 572
    :pswitch_a
    const-string v0, "face_spass_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 573
    goto/16 :goto_84

    .line 569
    :pswitch_10
    const-string v0, "face_spass_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 570
    goto/16 :goto_84

    .line 566
    :pswitch_16
    const-string v0, "face_spass_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 567
    goto/16 :goto_84

    .line 563
    :pswitch_1c
    const-string v0, "face_spass_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 564
    goto/16 :goto_84

    .line 560
    :pswitch_22
    const-string v0, "face_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 561
    goto :goto_84

    .line 557
    :pswitch_27
    const-string v0, "face_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 558
    goto :goto_84

    .line 554
    :pswitch_2c
    const-string v0, "face_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 555
    goto :goto_84

    .line 551
    :pswitch_31
    const-string v0, "face_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 552
    goto :goto_84

    .line 548
    :pswitch_36
    const-string v0, "biometrics_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 549
    goto :goto_84

    .line 545
    :pswitch_3b
    const-string v0, "biometrics_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 546
    goto :goto_84

    .line 542
    :pswitch_40
    const-string v0, "biometrics_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 543
    goto :goto_84

    .line 539
    :pswitch_45
    const-string v0, "biometrics_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 540
    goto :goto_84

    .line 536
    :pswitch_4a
    const-string v0, "iris_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 537
    goto :goto_84

    .line 533
    :pswitch_4f
    const-string v0, "iris_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 534
    goto :goto_84

    .line 530
    :pswitch_54
    const-string v0, "iris_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 531
    goto :goto_84

    .line 527
    :pswitch_59
    const-string v0, "iris_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 528
    goto :goto_84

    .line 524
    :pswitch_5e
    const-string v0, "fingerprint_password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 525
    goto :goto_84

    .line 521
    :pswitch_63
    const-string v0, "fingerprint_pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 522
    goto :goto_84

    .line 518
    :pswitch_68
    const-string v0, "fingerprint_pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 519
    goto :goto_84

    .line 515
    :pswitch_6d
    const-string v0, "fingerprint_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 516
    goto :goto_84

    .line 512
    :pswitch_72
    const-string/jumbo v0, "password_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 513
    goto :goto_84

    .line 509
    :pswitch_78
    const-string/jumbo v0, "pincode_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 510
    goto :goto_84

    .line 506
    :pswitch_7e
    const-string/jumbo v0, "pattern_type"

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    .line 507
    nop

    .line 579
    :goto_84
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_87
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_cf

    .line 581
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "lockedPackageArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v1

    move v5, v2

    :goto_99
    if-ge v5, v4, :cond_cd

    aget-object v6, v1, v5

    .line 584
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v7, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 586
    iget-object v7, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 587
    .local v7, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ca

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 588
    .local v9, "relatedPackage":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c9

    .line 589
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v9    # "relatedPackage":Ljava/lang/String;
    :cond_c9
    goto :goto_b4

    .line 583
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 594
    :cond_cd
    iput-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    .line 597
    .end local v1    # "lockedPackageArray":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_cf
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    if-eqz v1, :cond_115

    .line 598
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "lockedClassArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v1

    :goto_df
    if-ge v2, v4, :cond_113

    aget-object v5, v1, v2

    .line 601
    .local v5, "className":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_110

    .line 603
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 604
    .local v6, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_fa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_110

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 605
    .local v8, "relatedClass":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10f

    .line 606
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v8    # "relatedClass":Ljava/lang/String;
    :cond_10f
    goto :goto_fa

    .line 600
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_110
    add-int/lit8 v2, v2, 0x1

    goto :goto_df

    .line 611
    :cond_113
    iput-object v3, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    .line 613
    .end local v1    # "lockedClassArray":[Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_115
    monitor-exit v0

    .line 614
    return-void

    .line 613
    :catchall_117
    move-exception v1

    monitor-exit v0
    :try_end_119
    .catchall {:try_start_87 .. :try_end_119} :catchall_117

    throw v1

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_78
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public blacklist clearAppLockedUnLockedApp()V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 337
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 338
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist dumpAppLockPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)Z
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 640
    const-string v0, "AppLockPolicy dump start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "LockedPackage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 646
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_18

    .line 649
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_43

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 652
    :cond_43
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v5, "LockedClass["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 656
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_53

    .line 659
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_79

    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 662
    :cond_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v5, "HasUnLockedPackage["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 666
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_87

    .line 669
    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_ad

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 672
    :cond_ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v5, "HasUnLockedClass["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 676
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_bb

    .line 679
    :cond_ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_e1

    .line 680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 682
    :cond_e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string/jumbo v5, "mAppLockedVerifyingList["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v5, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_103

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 686
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_f0

    .line 689
    :cond_103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_116

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 692
    :cond_116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    const-string v1, "AppLockPolicy dump end"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 698
    return v2
.end method

.method public blacklist getAppLockedCheckAction()Ljava/lang/String;
    .registers 4

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "checkAction":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string/jumbo v2, "pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 211
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN"

    goto/16 :goto_13d

    .line 212
    :cond_10
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string/jumbo v2, "password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 213
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD"

    goto/16 :goto_13d

    .line 214
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string/jumbo v2, "pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 215
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE"

    goto/16 :goto_13d

    .line 216
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 217
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT"

    goto/16 :goto_13d

    .line 218
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 219
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

    goto/16 :goto_13d

    .line 220
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 221
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

    goto/16 :goto_13d

    .line 222
    :cond_58
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "fingerprint_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 223
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

    goto/16 :goto_13d

    .line 224
    :cond_66
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 225
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_IRISES"

    goto/16 :goto_13d

    .line 226
    :cond_74
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 227
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_IRISES"

    goto/16 :goto_13d

    .line 228
    :cond_82
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 229
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_IRISES"

    goto/16 :goto_13d

    .line 230
    :cond_90
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "iris_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 231
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_IRISES"

    goto/16 :goto_13d

    .line 232
    :cond_9e
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 233
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_BIOMETRICS"

    goto/16 :goto_13d

    .line 234
    :cond_ac
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 235
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_BIOMETRICS"

    goto/16 :goto_13d

    .line 236
    :cond_ba
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 237
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_BIOMETRICS"

    goto/16 :goto_13d

    .line 238
    :cond_c8
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "biometrics_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 239
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_BIOMETRICS"

    goto/16 :goto_13d

    .line 240
    :cond_d6
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 241
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FACE"

    goto :goto_13d

    .line 242
    :cond_e3
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 243
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE"

    goto :goto_13d

    .line 244
    :cond_f0
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 245
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE"

    goto :goto_13d

    .line 246
    :cond_fd
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 247
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE"

    goto :goto_13d

    .line 248
    :cond_10a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 249
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_FACE_SPASS"

    goto :goto_13d

    .line 250
    :cond_117
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_pattern_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 251
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PATTERN_FACE_SPASS"

    goto :goto_13d

    .line 252
    :cond_124
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_pincode_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 253
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PINCODE_FACE_SPASS"

    goto :goto_13d

    .line 254
    :cond_131
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    const-string v2, "face_spass_password_type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 255
    const-string v0, "com.samsung.android.intent.action.CHECK_APPLOCK_PASSWORD_FACE_SPASS"

    .line 257
    :cond_13d
    :goto_13d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppLockedCheckAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLockPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-object v0
.end method

.method public blacklist getAppLockedClassList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    .local v0, "lockedist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    .local v3, "st":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    nop

    .end local v3    # "st":Ljava/lang/String;
    goto :goto_10

    .line 363
    :cond_21
    monitor-exit v1

    .line 365
    return-object v0

    .line 363
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_23

    throw v2
.end method

.method public blacklist getAppLockedLockType()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAppLockedPackageList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getApplockLockedAppsClass()Ljava/lang/String;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplockLockedAppsPackage()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplockType()I
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockType()I

    move-result v0

    return v0
.end method

.method public blacklist getSsecureHiddenAppsPackages()Ljava/lang/String;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isActivityInExceptionList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "activityName"    # Ljava/lang/String;

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 193
    return v1

    .line 195
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockLaunchingExcpetionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    .end local v2    # "s":Ljava/lang/String;
    :cond_22
    goto :goto_e

    .line 200
    :cond_23
    const-string v0, "AppLockPolicy"

    const-string v2, "isActivityInExceptionList: "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v1
.end method

.method public blacklist isAppLockedClass(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 389
    return v1

    .line 391
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 393
    monitor-exit v0

    return v1

    .line 395
    :cond_15
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 396
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 398
    :cond_20
    monitor-exit v0

    .line 399
    return v1

    .line 398
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist isAppLockedPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 343
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    if-nez v0, :cond_c

    .line 344
    return v1

    .line 346
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 348
    monitor-exit v0

    return v1

    .line 350
    :cond_19
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 351
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 353
    :cond_2c
    monitor-exit v0

    .line 354
    return v1

    .line 353
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public blacklist isAppLockedVerifying(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 421
    return v1

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 425
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 427
    :cond_16
    monitor-exit v0

    .line 428
    return v1

    .line 427
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist isApplockEnabled()Z
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->isApplockEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isManagedProfileUserId(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 767
    const/16 v0, 0xa

    .line 768
    .local v0, "AFW_USER_ID_START":I
    const/16 v1, 0x5e

    .line 769
    .local v1, "AFW_USER_ID_END":I
    if-lt p1, v0, :cond_a

    if-gt p1, v1, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    return v2
.end method

.method public blacklist reloadFromSettings()V
    .registers 9

    .line 617
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "applock_locked_apps_packages"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "lockedPackages":Ljava/lang/String;
    const-string v3, "applock_locked_apps_classes"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "lockedClasses":Ljava/lang/String;
    const-string/jumbo v4, "ssecure_hidden_apps_packages"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "hiddenPkgs":Ljava/lang/String;
    const-string v5, "applock_lock_type"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 622
    .local v5, "lockedTypeInt":I
    const-string v7, "app_lock_enabled"

    invoke-static {v0, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2b

    move v6, v7

    :cond_2b
    move v2, v6

    .line 623
    .local v2, "applockEnabled":Z
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 624
    if-eqz v1, :cond_57

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_57

    if-eqz v5, :cond_57

    .line 625
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 626
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v3}, Landroid/app/AppLockCoreState;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 627
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v5}, Landroid/app/AppLockCoreState;->setApplockType(I)V

    .line 628
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v2}, Landroid/app/AppLockCoreState;->setApplockEnabled(Z)V

    .line 629
    iget-object v6, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v6, v4}, Landroid/app/AppLockCoreState;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    .line 631
    :cond_57
    return-void
.end method

.method public blacklist setAppLockedUnLockClass(Ljava/lang/String;)V
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 370
    return-void

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 374
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 376
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 377
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 378
    .local v3, "relatedClass":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 379
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v3    # "relatedClass":Ljava/lang/String;
    :cond_44
    goto :goto_2b

    .line 384
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_47

    throw v1
.end method

.method public blacklist setAppLockedUnLockPackage(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    return-void

    .line 319
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 321
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 323
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 324
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 325
    .local v3, "relatedPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 326
    iget-object v4, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v3    # "relatedPackage":Ljava/lang/String;
    :cond_44
    goto :goto_2b

    .line 331
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_47

    throw v1
.end method

.method public blacklist setAppLockedVerifying(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verifying"    # Z

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 404
    return-void

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    if-eqz p2, :cond_1a

    .line 408
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 409
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 412
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 413
    iget-object v1, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 416
    :cond_27
    :goto_27
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist setApplockEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockEnabled(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 287
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 288
    return-void
.end method

.method public blacklist setApplockLockedAppsClass(Ljava/lang/String;)V
    .registers 3
    .param p1, "classes"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsClass(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 275
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 276
    return-void
.end method

.method public blacklist setApplockLockedAppsPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 269
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 270
    return-void
.end method

.method public blacklist setApplockType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 279
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setApplockType(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 281
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 282
    return-void
.end method

.method public blacklist setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0, p1}, Landroid/app/AppLockCoreState;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 293
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy;->updateLockedApps()V

    .line 294
    return-void
.end method

.method public blacklist updateSettings()V
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedPackages:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedClasses:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->getApplockType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I

    .line 636
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->isApplockEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/AppLockPolicy;->mIsAppLockEnabled:Z

    .line 637
    return-void
.end method
