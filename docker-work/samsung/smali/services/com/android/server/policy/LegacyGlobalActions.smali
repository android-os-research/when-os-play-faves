.class public Lcom/android/server/policy/LegacyGlobalActions;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;
    }
.end annotation


# static fields
.field public static final DIALOG_DISMISS_DELAY:I = 0x12c

.field public static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field public static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field public static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field public static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field public static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field public static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field public static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field public static final MESSAGE_DISMISS:I = 0x0

.field public static final MESSAGE_REFRESH:I = 0x1

.field public static final MESSAGE_SHOW:I = 0x2

.field public static final SHOW_SILENT_TOGGLE:Z = true

.field public static final TAG:Ljava/lang/String; = "LegacyGlobalActions"


# instance fields
.field public mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

.field public mAirplaneModeObserver:Landroid/database/ContentObserver;

.field public mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

.field public mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mDeviceProvisioned:Z

.field public mDialog:Lcom/android/internal/globalactions/ActionsDialog;

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field public mHandler:Landroid/os/Handler;

.field public final mHasTelephony:Z

.field public mHasVibrator:Z

.field public mIsWaitingForEcmExit:Z

.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyguardShowing:Z

.field public final mOnDismiss:Ljava/lang/Runnable;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field public final mShowSilentToggle:Z

.field public mSilentModeAction:Lcom/android/internal/globalactions/Action;

.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public static synthetic $r8$lambda$0G_YubW0mXPFxuhwdWag4ra8VBk(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->lambda$createDialog$1()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GyzwkqjRd5OCJfIjrzyYP1D4ulo(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->lambda$createDialog$0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAirplaneModeOn(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAirplaneState(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction$State;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencyAffordanceManager(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasTelephony(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWaitingForEcmExit(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAirplaneState(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDialog(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWaitingForEcmExit(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchangeAirplaneModeSystemSetting(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleShow(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAirplaneModeChanged(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshSilentMode(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .registers 12

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 114
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 115
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    .line 740
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$9;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 762
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$10;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 773
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$11;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 782
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$12;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/LegacyGlobalActions$12;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 794
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$13;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$13;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 128
    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    const-string p2, "audio"

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string p2, "dreams"

    .line 131
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 130
    invoke-static {p2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 134
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 135
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 136
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 137
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.telephony"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    const-string/jumbo p2, "phone"

    .line 149
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 150
    iget-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "airplane_mode_on"

    .line 152
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 151
    invoke-virtual {p2, p3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo p2, "vibrator"

    .line 154
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    if-eqz p2, :cond_ad

    .line 155
    invoke-virtual {p2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p2

    if-eqz p2, :cond_ad

    move v0, v1

    :cond_ad
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11101f2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    .line 160
    new-instance p2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {p2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-void
.end method

.method private synthetic lambda$createDialog$0()Z
    .registers 1

    .line 319
    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    return p0
.end method

.method private synthetic lambda$createDialog$1()Z
    .registers 1

    .line 319
    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    return p0
.end method


# virtual methods
.method public final addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 545
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 546
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 548
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 549
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_39

    .line 551
    iget v4, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_40

    goto :goto_41

    :cond_39
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    .line 552
    :goto_41
    iget-object v3, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_4a

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    move-object v6, v3

    .line 554
    new-instance v9, Lcom/android/server/policy/LegacyGlobalActions$8;

    const v5, 0x10804ed

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    iget-object v4, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_5b

    goto :goto_5d

    :cond_5b
    const-string v4, "Primary"

    :goto_5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_65

    const-string v2, " \u2714"

    goto :goto_67

    :cond_65
    const-string v2, ""

    .line 557
    :goto_67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/policy/LegacyGlobalActions$8;-><init>(Lcom/android/server/policy/LegacyGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 577
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_77
    return-void
.end method

.method public final awakenIfNecessary()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_f

    .line 183
    :try_start_4
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public final changeAirplaneModeSystemSetting(Z)V
    .registers 5

    .line 831
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 832
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 831
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 836
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    .line 837
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 839
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-nez v0, :cond_31

    if-eqz p1, :cond_2d

    .line 840
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_2f

    :cond_2d
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_2f
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    :cond_31
    return-void
.end method

.method public final createDialog()Lcom/android/internal/globalactions/ActionsDialog;
    .registers 12

    .line 220
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_c

    .line 221
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    goto :goto_19

    .line 223
    :cond_c
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    .line 225
    :goto_19
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$1;

    const v6, 0x108040b

    const v7, 0x108040d

    const v8, 0x10405ad

    const v9, 0x10405ac

    const v10, 0x10405ab

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/LegacyGlobalActions$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    .line 267
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 274
    :goto_4f
    array-length v4, v0

    if-ge v3, v4, :cond_15c

    .line 275
    aget-object v4, v0, v3

    .line 276
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    goto/16 :goto_158

    :cond_5c
    const-string/jumbo v5, "power"

    .line 280
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 281
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PowerAction;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/PowerAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_155

    :cond_75
    const-string v5, "airplane"

    .line 282
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 283
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_155

    :cond_86
    const-string v5, "bugreport"

    .line 284
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 285
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bugreport_in_power_menu"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_155

    .line 286
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCurrentUserOwner()Z

    move-result v5

    if-eqz v5, :cond_155

    .line 287
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    invoke-direct {v6, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_155

    :cond_ae
    const-string/jumbo v5, "silent"

    .line 289
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 290
    iget-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v5, :cond_155

    .line 291
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_155

    :cond_c4
    const-string/jumbo v5, "users"

    .line 293
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    const-string v5, "fw.power_user_switcher"

    .line 294
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_155

    .line 295
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/android/server/policy/LegacyGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_155

    :cond_dc
    const-string/jumbo v5, "settings"

    .line 297
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 298
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getSettingsAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_155

    :cond_ef
    const-string/jumbo v5, "lockdown"

    .line 299
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 300
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getLockdownAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_155

    :cond_102
    const-string/jumbo v5, "voiceassist"

    .line 301
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_115

    .line 302
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getVoiceAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_155

    :cond_115
    const-string v5, "assist"

    .line 303
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_127

    .line 304
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_155

    :cond_127
    const-string/jumbo v5, "restart"

    .line 305
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 306
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/RestartAction;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/RestartAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_155

    .line 308
    :cond_13f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LegacyGlobalActions"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_155
    :goto_155
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_158
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4f

    .line 314
    :cond_15c
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 315
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getEmergencyAction()Lcom/android/internal/globalactions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_16d
    new-instance v0, Lcom/android/internal/globalactions/ActionsAdapter;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    new-instance v5, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/policy/LegacyGlobalActions$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/internal/globalactions/ActionsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 321
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 322
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 323
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x1

    .line 324
    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 326
    new-instance v3, Lcom/android/internal/globalactions/ActionsDialog;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/internal/globalactions/ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 327
    invoke-virtual {v3, v2}, Lcom/android/internal/globalactions/ActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 329
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 330
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 331
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$2;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 343
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 345
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 347
    invoke-virtual {v3, p0}, Lcom/android/internal/globalactions/ActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v3
.end method

.method public final getAssistAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 461
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$5;

    const v1, 0x108034e

    const v2, 0x104057c

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$5;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method public final getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 1

    .line 532
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEmergencyAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 441
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$4;

    const v1, 0x10802dd

    const v2, 0x1040588

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$4;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method public final getLockdownAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 505
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$7;

    const v1, 0x108002f

    const v2, 0x1040590

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$7;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method public final getSettingsAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 418
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$3;

    const v1, 0x1080570

    const v2, 0x10405a1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$3;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method public final getVoiceAssistAction()Lcom/android/internal/globalactions/Action;
    .registers 4

    .line 483
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$6;

    const v1, 0x10805a8

    const v2, 0x10405a9

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$6;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method public final handleShow()V
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->awakenIfNecessary()V

    .line 194
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->prepareDialog()V

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/SinglePressAction;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 200
    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/LongPressAction;

    if-nez v0, :cond_36

    .line 201
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {p0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p0

    check-cast p0, Lcom/android/internal/globalactions/SinglePressAction;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/SinglePressAction;->onPress()V

    goto :goto_64

    .line 203
    :cond_36
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz v0, :cond_64

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "LegacyGlobalActions"

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->show()V

    .line 208
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_64
    :goto_64
    return-void
.end method

.method public final isCurrentUserOwner()Z
    .registers 1

    .line 539
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 540
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final onAirplaneModeChanged()V
    .registers 4

    .line 817
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_5

    return-void

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 819
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move v2, v1

    :cond_16
    if-eqz v2, :cond_1b

    .line 823
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_1d
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 824
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 622
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_d

    .line 623
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 625
    :cond_d
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {p0, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/globalactions/Action;->onPress()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 606
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 607
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 609
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz p1, :cond_19

    .line 611
    :try_start_b
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    const-string p1, "LegacyGlobalActions"

    .line 614
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public final prepareDialog()V
    .registers 3

    .line 584
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    .line 585
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 587
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 588
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_2c

    .line 589
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2c
    return-void
.end method

.method public final refreshSilentMode()V
    .registers 3

    .line 595
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_1e

    .line 596
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 597
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 598
    :goto_10
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    check-cast p0, Lcom/android/internal/globalactions/ToggleAction;

    if-eqz v0, :cond_19

    .line 599
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1b

    :cond_19
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 598
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    :cond_1e
    return-void
.end method

.method public showDialog(ZZ)V
    .registers 3

    .line 168
    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 169
    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 170
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz p1, :cond_15

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 174
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_18

    .line 176
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    :goto_18
    return-void
.end method
