.class public Lcom/android/server/knox/SeamLessSwitchHandler;
.super Ljava/lang/Object;
.source "SeamLessSwitchHandler.java"


# static fields
.field public static final AFTER_KEYGUARD_GONE:Ljava/lang/String; = "afterKeyguardGone"

.field public static final DEBUG:Z

.field public static final DISMISS_IF_INSECURE:Ljava/lang/String; = "dismissIfInsecure"

.field public static final EXTRA_KEY:Ljava/lang/String; = "extra"

.field public static final FEATURE_KEY:Ljava/lang/String; = "feature"

.field public static final IGNORE_KEYGUARD_STATE:Ljava/lang/String; = "ignoreKeyguardState"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final SA_ACTION_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field public static final SA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final SA_TYPE_VALUE_EV:Ljava/lang/String; = "ev"

.field public static final SEAMLESS_TAG:Ljava/lang/String; = "SeamLessSwitchHandler"

.field public static final SECUREFOLDER_LAUNCHER:Ljava/lang/String; = "com.samsung.knox.securefolder.launcher.view.LauncherActivity"

.field public static final SECUREFOLDER_PACKAGE:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field public static final SECUREFOLDER_SHORTCUT:Ljava/lang/String; = "com.samsung.knox.securefolder.presentation.switcher.view.SecureFolderShortcutActivity"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final SF_TRACKING_ID:Ljava/lang/String; = "493-399-9953101"

.field public static final TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field public static final TYPE_KEY:Ljava/lang/String; = "type"

.field public static packageExtraForSALog:Ljava/lang/String;


# instance fields
.field public LAUNCHSF_HOME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final am:Landroid/app/ActivityManager;

.field public final c:Landroid/content/Context;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUserManager:Landroid/os/UserManager;

.field public final personaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public final pm:Landroid/content/pm/PackageManager;

.field public final semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final statusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method public static synthetic $r8$lambda$i68oFVOVZfeQEYJBklSq8tNmKlY(Lcom/android/server/knox/SeamLessSwitchHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/knox/SeamLessSwitchHandler;->lambda$printToastDelayed$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/android/server/knox/SeamLessSwitchHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/knox/SeamLessSwitchHandler;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 53
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/SeamLessSwitchHandler;->DEBUG:Z

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->LAUNCHSF_HOME_LIST:Ljava/util/List;

    .line 87
    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    .line 89
    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 90
    iput-object p3, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    const-string p2, "activity"

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    const-string/jumbo p2, "persona"

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo p2, "user"

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mUserManager:Landroid/os/UserManager;

    .line 94
    const-class p2, Landroid/app/SemStatusBarManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SemStatusBarManager;

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    const-string/jumbo p2, "keyguard"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 96
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 97
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    const-class p1, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/PersonaManagerInternal;

    iput-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    return-void
.end method

.method private synthetic lambda$printToastDelayed$0(I)V
    .registers 5

    .line 261
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 262
    iget-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    const v1, 0x1040d45

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 262
    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_32
    return-void
.end method


# virtual methods
.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 333
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 392
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2f

    .line 394
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    :cond_2f
    if-eqz v2, :cond_5a

    .line 399
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_38

    goto :goto_5a

    .line 402
    :cond_38
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    .line 403
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 404
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 405
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 404
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLaunchUserId(I)I
    .registers 8

    .line 298
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p0

    .line 299
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 300
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_e

    move v3, v0

    move v2, v4

    goto :goto_e

    :cond_27
    if-nez p1, :cond_2a

    move v1, v2

    :cond_2a
    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, -0x1

    :goto_2e
    return v1
.end method

.method public final hideNotificationPanel()V
    .registers 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "SeamLessSwitchHandler"

    const-string v1, "Collapsing notification panel before quick switch"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 424
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/SeamLessSwitchHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/knox/SeamLessSwitchHandler$1;-><init>(Lcom/android/server/knox/SeamLessSwitchHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z
    .registers 3

    .line 191
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isCameraRunning()Z

    move-result p0

    if-nez p0, :cond_21

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sec.android.app.popupcalculator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.sec.android.app.voicenote"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public final isAppLaunchable(Ljava/lang/String;I)Z
    .registers 6

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 354
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    const/high16 v0, 0xc0000

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 359
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public final isCameraRunning()Z
    .registers 2

    const-string/jumbo p0, "service.camera.running"

    const-string v0, "0"

    .line 382
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isPackageEnabled(Ljava/lang/String;I)Z
    .registers 8

    .line 312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "com.samsung.knox.securefolder"

    .line 314
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_39
    .catchall {:try_start_5 .. :try_end_b} :catchall_37

    if-eqz v3, :cond_13

    if-nez p2, :cond_13

    .line 328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 316
    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->LAUNCHSF_HOME_LIST:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_39
    .catchall {:try_start_13 .. :try_end_19} :catchall_37

    if-eqz v3, :cond_1f

    .line 328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 318
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/32 v3, 0xc0000

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 322
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_30} :catch_39
    .catchall {:try_start_1f .. :try_end_30} :catchall_37

    if-eqz p0, :cond_33

    const/4 v2, 0x1

    .line 328
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_37
    move-exception p0

    goto :goto_41

    :catch_39
    move-exception p0

    .line 325
    :try_start_3a
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_37

    .line 328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    throw p0
.end method

.method public final isPopupWindowRunning()Z
    .registers 2

    .line 338
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 339
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_c

    .line 340
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_22

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :catch_22
    move-exception p0

    .line 345
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final isSeamLessSwitchSupported(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z
    .registers 8

    const/4 v0, 0x1

    .line 206
    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_67

    .line 208
    :cond_13
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v2

    .line 210
    :cond_20
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v0, :cond_67

    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isPopupWindowRunning()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_67

    .line 212
    :cond_31
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    return v2

    .line 214
    :cond_3a
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    move-result v1

    if-nez v1, :cond_4a

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 215
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_57

    :cond_4a
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    .line 218
    :cond_57
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_6c

    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_68

    if-nez p0, :cond_6c

    :cond_67
    :goto_67
    return v2

    :catch_68
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6c
    return v0
.end method

.method public final isSecureFolderHidden()Z
    .registers 3

    .line 410
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "hide_secure_folder_flag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    move v1, v0

    :cond_12
    return v1
.end method

.method public final isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z
    .registers 4

    .line 365
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result p0

    if-nez p0, :cond_3b

    :cond_e
    const-string p0, "com.android.settings"

    .line 366
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const-string p0, "activity_task"

    .line 367
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object p0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->isQuickSwitchExceptionalCase(I)Z

    move-result p0

    if-eqz p0, :cond_3b

    const-string p0, "SeamLessSwitchHandler"

    const-string p1, "Exceptional case quick switch! securefolder keyguard"

    .line 370
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_37

    const/4 p0, 0x1

    return p0

    :catch_37
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public final launchFolderContainerOrHome(IZ)V
    .registers 9

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/high16 v2, 0x10000

    const/high16 v3, 0x10000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5c

    if-nez p2, :cond_5c

    .line 271
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    move-result p2

    if-eqz p2, :cond_1e

    const-string p2, "com.samsung.knox.securefolder.launcher.view.LauncherActivity"

    goto :goto_20

    :cond_1e
    const-string p2, "com.samsung.knox.securefolder.presentation.switcher.view.SecureFolderShortcutActivity"

    :goto_20
    const-string v1, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "userId"

    .line 272
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    iget-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    move-result p2

    if-nez p2, :cond_39

    const-string/jumbo p2, "quick_switch"

    .line 274
    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    :cond_39
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0xc000

    .line 277
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    iget-object p2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    move-result v3

    if-eqz v3, :cond_50

    move v5, p1

    :cond_50
    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 280
    invoke-virtual {p0, p1, v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->printToastDelayed(IZ)V

    .line 281
    sput-object v1, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    goto :goto_94

    :cond_5c
    const-string p1, "android.intent.category.HOME"

    .line 283
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    iget-object p1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_71

    return-void

    .line 287
    :cond_71
    new-instance p2, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.FROM_HOME_KEY"

    .line 288
    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 290
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object p0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    :goto_94
    return-void
.end method

.method public launchSeamLessForSF()V
    .registers 8

    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_ad

    :cond_14
    const/4 v1, 0x0

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 107
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 108
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 110
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {p0, v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    move-result v4

    .line 112
    iget-object v5, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    const-string v6, "SeamLessSwitchHandler"

    if-nez v5, :cond_48

    iget-object v5, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_48

    const/4 v5, -0x1

    if-eq v4, v5, :cond_42

    iget-object v5, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v5

    if-nez v5, :cond_48

    :cond_42
    const-string p0, "Quick Switch abort! User is not running"

    .line 113
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_48
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_5c

    iget-object v5, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    if-nez v5, :cond_5c

    const-string p0, "Quick Switch abort! User Lock type is not set"

    .line 119
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_5c
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSeamLessSwitchSupported(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_77

    .line 124
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    const v0, 0x1040d44

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 128
    :cond_77
    iget-object v1, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_93

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 129
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_92

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchSecureFolderAppsAtLockscreen(Landroid/content/ComponentName;)V

    :cond_92
    return-void

    .line 135
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quick Switch is triggered for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->hideNotificationPanel()V

    .line 137
    invoke-virtual {p0, v3, v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->startActivityForSecureFolderUser(Landroid/content/ComponentName;I)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public final launchSecureFolderAppsAtLockscreen(Landroid/content/ComponentName;)V
    .registers 14

    const-string v0, "com.samsung.knox.securefolder"

    const-string v1, "SeamLessSwitchHandler"

    .line 143
    :try_start_4
    iget-object v2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, -0x1

    move v5, v4

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 145
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_11

    move v5, v6

    goto :goto_11

    :cond_29
    if-ne v5, v4, :cond_2c

    return-void

    .line 151
    :cond_2c
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/knox/SeamLessSwitchHandler;->isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string v0, "Allowed Apps In Lockscreen Case is Running"

    .line 153
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_49

    return-void

    :cond_49
    const/4 v0, 0x0

    .line 158
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x200000

    .line 159
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    :goto_58
    move-object v8, v2

    goto :goto_85

    .line 162
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v4, "com.samsung.knox.securefolder.launcher.view.LauncherActivity"

    goto :goto_65

    :cond_63
    const-string v4, "com.samsung.knox.securefolder.presentation.switcher.view.SecureFolderShortcutActivity"

    :goto_65
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "userId"

    .line 163
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v4, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v4

    if-nez v4, :cond_7c

    const-string/jumbo v4, "quick_switch"

    .line 165
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7c
    const v4, 0x8000

    .line 167
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    goto :goto_58

    :goto_85
    const v0, 0x10004000

    .line 170
    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "afterKeyguardGone"

    .line 173
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "ignoreKeyguardState"

    .line 174
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "dismissIfInsecure"

    .line 175
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    iget-object v6, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v9, 0xc000000

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    move-result v2

    if-nez v2, :cond_b6

    invoke-virtual {p0, p1}, Lcom/android/server/knox/SeamLessSwitchHandler;->isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_b5

    goto :goto_b6

    :cond_b5
    const/4 v5, 0x0

    :cond_b6
    :goto_b6
    invoke-direct {v11, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 176
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 179
    iget-object p0, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0, p1, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c2} :catch_c3

    goto :goto_cc

    :catch_c3
    move-exception p0

    const-string p1, "Exception in setting pending intent"

    .line 182
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_cc
    return-void
.end method

.method public final printToastDelayed(IZ)V
    .registers 5

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/SeamLessSwitchHandler;I)V

    if-eqz p2, :cond_13

    const-wide/16 p0, 0x1f4

    goto :goto_15

    :cond_13
    const-wide/16 p0, 0x12c

    :goto_15
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final startActivityForSecureFolderUser(Landroid/content/ComponentName;I)V
    .registers 7

    const-string v0, "SeamLessSwitchHandler"

    if-nez p1, :cond_5

    return-void

    .line 232
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/SeamLessSwitchHandler;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/SeamLessSwitchHandler;->isAppLaunchable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_38

    :cond_1d
    const/4 v2, 0x0

    .line 241
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10204000

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    .line 246
    invoke-virtual {p0, p2, v1}, Lcom/android/server/knox/SeamLessSwitchHandler;->printToastDelayed(IZ)V

    .line 247
    sput-object p1, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    goto :goto_5d

    .line 236
    :cond_38
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No launchable component for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0, p2, v2}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchFolderContainerOrHome(IZ)V

    return-void

    .line 249
    :cond_50
    invoke-virtual {p0, p2, v2}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchFolderContainerOrHome(IZ)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_53} :catch_54

    goto :goto_5d

    :catch_54
    move-exception p0

    const-string p1, "Exception in securefolder quick switch"

    .line 252
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5d
    return-void
.end method
