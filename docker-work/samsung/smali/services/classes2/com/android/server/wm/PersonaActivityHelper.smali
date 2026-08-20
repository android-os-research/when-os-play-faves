.class public Lcom/android/server/wm/PersonaActivityHelper;
.super Ljava/lang/Object;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;
    }
.end annotation


# static fields
.field public static final FINISH_APPS_FOR_USER_MSG:I = 0x25a

.field public static final LOCK_HIDDEN_SECUREFOLDER:I = 0x25c

.field public static final LOCK_SECUREFOLDER_CHECK_MSG:I = 0x25d

.field public static final LOCK_SECUREFOLDER_MSG:I = 0x25b

.field public static final LOCK_SECUREFOLDER_PIPMODE_CHECK_MSG:I = 0x25e

.field public static final SHOW_KNOX_SECURITY_TOAST:I = 0x259

.field public static final TAG:Ljava/lang/String; = "PersonaActivityHelper"

.field public static final WINDOWING_MODE_ALL:I = -0x1


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mLooper:Landroid/os/Looper;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

.field public mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field public mWms:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public static synthetic $r8$lambda$Nv1b0nNa9riE7eEUTNthROFRo1s(Lcom/android/server/wm/Task;ZIZI)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/PersonaActivityHelper;->isKnoxWindowVisible(Lcom/android/server/wm/Task;ZIZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastReceivedResumedActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlockSecureFolderIfNecessary(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->lockSecureFolderIfNecessary(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveMinimizedFreeformTaskExplicitly(Lcom/android/server/wm/PersonaActivityHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->removeMinimizedFreeformTaskExplicitly(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisActivityNeedtoFinish(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->isActivityNeedtoFinish(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;Lcom/android/server/wm/RootWindowContainer;)V
    .registers 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 110
    iput-object p3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 112
    iput-object p3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 116
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLooper:Landroid/os/Looper;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 119
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 120
    new-instance p1, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;-><init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    return-void
.end method

.method public static isActivityNeedtoFinish(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 2

    if-eqz p0, :cond_8

    .line 562
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isKnoxWindowVisible(Lcom/android/server/wm/Task;ZIZI)Z
    .registers 5

    if-eqz p0, :cond_31

    .line 259
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_31

    if-eqz p1, :cond_12

    .line 261
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_16

    :cond_12
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p1, p2, :cond_31

    :cond_16
    if-eqz p3, :cond_1c

    .line 263
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez p1, :cond_24

    :cond_1c
    if-nez p3, :cond_31

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_31

    :cond_24
    const/4 p1, -0x1

    if-eq p4, p1, :cond_2d

    .line 265
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-eq p4, p0, :cond_2f

    :cond_2d
    if-ne p4, p1, :cond_31

    :cond_2f
    const/4 p0, 0x1

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final LockSecureFolderTask(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->isActivityInResumedState(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 374
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_24

    .line 375
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/server/wm/PersonaActivityHelper;->isImmediateLockSet(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PersonaActivityHelper;->isSecureFolderLocked(I)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    return-void

    .line 381
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->sendLockSecureFolderMessage(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 532
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p0

    if-nez p0, :cond_46

    .line 534
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.incallui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v0, "com.android.server.telecom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v0, "com.android.calendar/.alerts.PopUpActivity"

    .line 535
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v0, "com.samsung.android.calendar/com.samsung.android.app.calendarnotification.AlertPopupActivity"

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v0, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.PreCallActivity"

    .line 537
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string p1, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.InCallActivity"

    .line 538
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_45

    :cond_43
    const/4 p0, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p0, 0x1

    :cond_46
    :goto_46
    return p0
.end method

.method public final checkKnoxFeatureEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final createLockSecureFolderMessageBundle(Lcom/android/server/wm/ActivityRecord;)Landroid/os/Bundle;
    .registers 4

    .line 451
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 452
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const-string v1, "isHomeActivity"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v0, "componentName"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public exitAndLockSecureFolder(I)V
    .registers 4

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->notifyKillForegroundAppsForUser(I)Z

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 674
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 675
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 676
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getCurrentScreenUserId(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 5

    .line 465
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 466
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "version"

    .line 467
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getSemPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenshot: check focused user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaActivityHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 472
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 473
    :cond_4e
    new-instance p0, Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "screenshot: getCurrentScreenUserId:premium = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_69
    if-eqz p0, :cond_8c

    .line 478
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result p0

    if-eqz p0, :cond_8c

    .line 479
    new-instance p0, Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "screenshot: App Separation user type. ID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 484
    :cond_8c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "screenshot: getCurrentScreenUserId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    return-object p1
.end method

.method public final getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 528
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    .line 551
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object p0
.end method

.method public getRecentExcludedUsers()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_60

    .line 303
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    if-eqz v1, :cond_60

    .line 305
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v2, :cond_60

    aget v5, v1, v4

    .line 306
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 308
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 309
    :cond_3d
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 310
    iget-object v6, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hide_secure_folder_flag"

    invoke-static {v6, v7, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_53

    const/4 v6, 0x1

    goto :goto_54

    :cond_53
    move v6, v3

    :goto_54
    if-nez v6, :cond_5d

    .line 313
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_60
    :goto_60
    return-object v0
.end method

.method public final getSemPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 521
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public final getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_a

    .line 556
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 558
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method

.method public final isActivityInResumedState(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 390
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object p1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_14

    const-string p1, "PersonaActivityHelper"

    const-string v0, "Activity not in resumed state, do not run immediate lock"

    .line 391
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public final isImmediateLockSet(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 402
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "knox_screen_off_timeout"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_19

    const/4 p1, -0x2

    const/4 v1, 0x1

    if-ne p0, p1, :cond_14

    move p0, v1

    goto :goto_15

    :cond_14
    move p0, v0

    :goto_15
    if-nez p0, :cond_18

    return v0

    :cond_18
    return v1

    :catch_19
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public isIntentFromShowWhenLockedCase(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_24

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 324
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    return p0

    :cond_24
    const/4 v0, 0x1

    if-eqz p2, :cond_2f

    .line 329
    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr p2, v1

    if-eqz p2, :cond_2f

    return v0

    :cond_2f
    if-eqz p1, :cond_172

    .line 333
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_172

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_172

    .line 334
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.android.incallui.InCallActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 335
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.android.incallui.call.InCallActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 336
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.sec.android.app.clockpackage.alarm.activity.AlarmAlertActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 337
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.whatsapp.voipcalling.VoipActivityV2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 338
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.tencent.mm.plugin.voip.ui.videoActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 339
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.google.android.apps.hangouts.hangout.IncomingRingActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 340
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.google.android.apps.hangouts.elane.CallActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 341
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.microsoft.skype.teams.views.activities.PreCallActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 342
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.microsoft.skype.teams.views.activities.InCallActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.android.calendar.alerts.PopUpActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 344
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.calendarnotification.AlertPopupActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.sec.android.service.singlesignon.activity.KerberosLoginActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.sec.android.service.singlesignon.activity.ChangePasswordActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 347
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.calendarnotification.view.AlertPopupActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 348
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.reminder.ui.alarm.fullscreenview.AlarmActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 349
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.reminder.ui.alarm.fullscreenview.RingtoneAlarmActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 350
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.app.calendarnotification.view.AlertPopupActivityForTablet"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 351
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.cisco.jabber.telephony.call.callinprogress.CallInProgressActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_171

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.cisco.jabber.telephony.call.CallIncomingActivity"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_172

    :cond_171
    return v0

    :cond_172
    return p0
.end method

.method public isKnoxWindowVisibleLocked(ZIZII)Z
    .registers 16

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_63

    iget-object p4, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez p4, :cond_c

    goto :goto_63

    .line 282
    :cond_c
    iget-object p4, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p4

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1c
    if-ltz v1, :cond_58

    .line 284
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_55

    .line 287
    new-instance v4, Lcom/android/server/wm/PersonaActivityHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/PersonaActivityHelper$$ExternalSyntheticLambda0;-><init>()V

    const-class v5, Lcom/android/server/wm/Task;

    .line 288
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 287
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v4

    .line 289
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 290
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v3, :cond_55

    .line 292
    monitor-exit p4
    :try_end_51
    .catchall {:try_start_11 .. :try_end_51} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_55
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 296
    :cond_58
    :try_start_58
    monitor-exit p4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_5d
    move-exception p0

    :try_start_5e
    monitor-exit p4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_63
    :goto_63
    return v0
.end method

.method public isQuickSwitchExceptionalCase(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 685
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_42

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 686
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_16

    .line 688
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 690
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_21

    .line 692
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 694
    :cond_21
    :try_start_21
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_37

    const-string p1, "android.intent.extra.USER_ID"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x1

    .line 695
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 697
    :cond_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3c

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_42

    goto :goto_5d

    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_42

    :catch_42
    move-exception p0

    const-string p1, "PersonaActivityHelper"

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return v0
.end method

.method public final isSecureFolderLocked(I)Z
    .registers 4

    const/4 v0, 0x0

    .line 425
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v0

    :catch_14
    move-exception p0

    .line 429
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public final lockSecureFolderIfNecessary(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->setFocusedUser(I)V

    .line 202
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1b

    .line 203
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_21

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->LockSecureFolderTask(Lcom/android/server/wm/ActivityRecord;)V

    :cond_21
    return-void
.end method

.method public notifyActivityResumedLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 14

    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    if-nez p1, :cond_11

    return-void

    .line 223
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v0

    .line 224
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 225
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 226
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v6

    .line 227
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    .line 228
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v8

    const/4 v2, 0x1

    if-eqz p2, :cond_40

    .line 229
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez p2, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_40

    :cond_3e
    move v9, v2

    goto :goto_41

    :cond_40
    move v9, v1

    .line 230
    :goto_41
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    .line 231
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v10

    .line 233
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, p1, :cond_5e

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz p2, :cond_59

    .line 237
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p1

    if-nez p1, :cond_59

    move v5, v2

    goto :goto_5a

    :cond_59
    move v5, v1

    :goto_5a
    move-object v2, p0

    .line 234
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PersonaManagerService;->postActiveUserChange(ILandroid/content/ComponentName;ZIIZZZ)V

    :cond_5e
    return-void
.end method

.method public notifyKillForegroundAppsForUser(I)Z
    .registers 4

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 248
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 250
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method public notifyRemovePinnedRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 191
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 193
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyResolveActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .registers 5

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    return-object p1

    .line 163
    :cond_7
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 164
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 165
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_38

    const-string p2, "crossProfileTargetUserId"

    .line 166
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "targetUserId set :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersonaActivityHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object p0
.end method

.method public notifySetResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 180
    :cond_a
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifySplitScreenModeDismissed(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 212
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 213
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 214
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->LockSecureFolderTask(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public notifyStartActivityAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 8

    if-eqz p1, :cond_7f

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    .line 139
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    .line 140
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.managedprovisioning.action.RESUME_PROVISIONING"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7f

    :cond_44
    const-string p2, "com.samsung.knox.container.requestId"

    const/4 p3, -0x1

    .line 144
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p4

    .line 145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " KnoxContainerManager.EXTRA_REQUEST_ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaActivityHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p4, p3, :cond_7f

    const/16 p0, 0x3e8

    if-ne v0, p0, :cond_7b

    return-object p1

    .line 151
    :cond_7b
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-object p1

    .line 157
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    return-object p1
.end method

.method public notifyStartActivityFromRecents(II)V
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    return-void
.end method

.method public notifyTaskStackChanged()V
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    return-void
.end method

.method public final removeMinimizedFreeformTaskExplicitly(I)V
    .registers 6

    .line 658
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMinimizedFreeformTasksForCurrentUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 659
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 660
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 661
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v2, p1, :cond_14

    .line 662
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->semRemoveTask(II)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_14

    :catch_2e
    move-exception p0

    .line 667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove minimized Task exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaActivityHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public final sendLockSecureFolderMessage(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    const/16 v1, 0x25b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->createLockSecureFolderMessageBundle(Lcom/android/server/wm/ActivityRecord;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 445
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    monitor-enter v0

    .line 125
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 126
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 127
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method
