.class public Lcom/android/server/desktopmode/DefaultBlocker;
.super Ljava/lang/Object;
.source "DefaultBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
    }
.end annotation


# static fields
.field public static final REASON_KIDS_MODE:I = 0x5

.field public static final REASON_LOCK_TASK_MODE:I = 0x1

.field public static final REASON_NOT_BLOCKED:I = 0x0

.field public static final REASON_PRO_KIOSK_MODE:I = 0x2

.field public static final REASON_SAFE_MODE:I = 0x3

.field public static final REASON_SMART_VIEW:I = 0x6

.field public static final REASON_UNAVAILABLE_USER:I = 0x4


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/hardware/display/DisplayManager;)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;-><init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    .line 63
    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    .line 65
    iput-object p3, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2a

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "REASON_SMART_VIEW"

    return-object p0

    :pswitch_18
    const-string p0, "REASON_KIDS_MODE"

    return-object p0

    :pswitch_1b
    const-string p0, "REASON_UNAVAILABLE_USER"

    return-object p0

    :pswitch_1e
    const-string p0, "REASON_SAFE_MODE"

    return-object p0

    :pswitch_21
    const-string p0, "REASON_PRO_KIOSK_MODE"

    return-object p0

    :pswitch_24
    const-string p0, "REASON_LOCK_TASK_MODE"

    return-object p0

    :pswitch_27
    const-string p0, "REASON_NOT_BLOCKED"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_4d

    .line 71
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isProKioskMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 72
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_4d

    .line 73
    :cond_18
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 74
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_4d

    .line 75
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DefaultBlocker;->isUnavailableUser(Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 76
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x4

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_4d

    .line 77
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isKidsLauncherMode()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 78
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x5

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    goto :goto_4d

    .line 79
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isSmartViewConnected()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 80
    iget-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    const/4 v0, 0x6

    iput v0, p1, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    .line 86
    :goto_4d
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mBlocker:Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;

    return-object p0

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isKidsLauncherMode()Z
    .registers 3

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 106
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "com.sec.android.app.kidshome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public final isLeboCastConnectionEnabled()Z
    .registers 3

    .line 124
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "lelink_cast_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    move v1, v0

    :cond_12
    return v1
.end method

.method public final isLockTaskMode()Z
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final isProKioskMode()Z
    .registers 1

    .line 94
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isSmartViewConnected()Z
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 112
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    .line 113
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_21

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz v2, :cond_27

    .line 114
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-ne v0, v3, :cond_27

    .line 115
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->isLeboCastConnectionEnabled()Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public final isUnavailableUser(Lcom/android/server/desktopmode/State;)Z
    .registers 2

    .line 99
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
