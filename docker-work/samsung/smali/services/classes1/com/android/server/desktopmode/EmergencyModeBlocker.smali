.class public Lcom/android/server/desktopmode/EmergencyModeBlocker;
.super Ljava/lang/Object;
.source "EmergencyModeBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;,
        Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;
    }
.end annotation


# static fields
.field public static final DELAY_UPDATE:I = 0x2710

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBlockerRegistered:Z

.field public final mContext:Landroid/content/Context;

.field public mEmergencyModeEnabledInSettings:Z

.field public mEnabledInBroadcast:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public mLimitAppsAndHomeScreenEnabledInSettings:Z

.field public final mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mMpsmEnabledInSettings:Z

.field public final mSettingListener:Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$KHe7Hz8vTU3jd_Uo-Evva3k431M(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->updateBlockerRegistration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnabledInBroadcast(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEmergencyModeEnabledInSettings()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isLimitAppsAndHomeScreenEnabledInSettings()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isMpsmEnabledInSettings()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateBlockerRegistration(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateBlockerRegistration(Lcom/android/server/desktopmode/EmergencyModeBlocker;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Lcom/android/server/desktopmode/Injector;)V
    .registers 12

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 85
    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 87
    iput-object p4, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 88
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isEmergencyModeEnabledInSettings()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isMpsmEnabledInSettings()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->isLimitAppsAndHomeScreenEnabledInSettings()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 92
    new-instance p2, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

    invoke-direct {p2, p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    iput-object p2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mSettingListener:Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;

    .line 93
    new-instance v2, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;

    const/4 p4, 0x0

    invoke-direct {v2, p0, p4}, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;-><init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener-IA;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string p4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v4, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p4, v1, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p4, v1, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p4, "minimal_battery_use"

    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p4, v0, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    iput-object p3, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration()V

    return-void
.end method


# virtual methods
.method public final isEmergencyModeEnabledInSettings()Z
    .registers 7

    .line 135
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 136
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v4, 0x1

    .line 138
    :cond_17
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    return v4
.end method

.method public final isLimitAppsAndHomeScreenEnabledInSettings()Z
    .registers 7

    .line 151
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 152
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "minimal_battery_use"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v4, 0x1

    .line 154
    :cond_18
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    return v4
.end method

.method public final isMpsmEnabledInSettings()Z
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 144
    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_powersaving_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v4, 0x1

    .line 146
    :cond_18
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    return v4
.end method

.method public onBlocked()Ljava/lang/String;
    .registers 5

    .line 160
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    if-eqz v0, :cond_1b

    .line 161
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    const v0, 0x1040447

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x104043d

    .line 162
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 161
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    .line 163
    :cond_1b
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    if-eqz v1, :cond_25

    const p0, 0x104043f

    goto :goto_30

    .line 164
    :cond_25
    iget-boolean p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    if-eqz p0, :cond_2d

    const p0, 0x104043a

    goto :goto_30

    :cond_2d
    const p0, 0x1040448

    .line 163
    :goto_30
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_34
    return-object p0
.end method

.method public final scheduleUpdateBlockerRegistration()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    return-void
.end method

.method public final scheduleUpdateBlockerRegistration(I)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateBlockerRegistration()V
    .registers 3

    .line 118
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    if-eqz v0, :cond_11

    goto :goto_23

    .line 126
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 128
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 129
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->setEmergencyModeEnabled(Z)V

    goto :goto_34

    .line 120
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mBlockerRegistered:Z

    .line 122
    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 123
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->setEmergencyModeEnabled(Z)V

    :cond_34
    :goto_34
    return-void
.end method
