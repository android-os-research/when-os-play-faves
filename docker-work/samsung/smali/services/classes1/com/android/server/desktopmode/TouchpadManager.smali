.class public Lcom/android/server/desktopmode/TouchpadManager;
.super Ljava/lang/Object;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/TouchpadManager$StateListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final AUTO_RUN_GUIDE_SHOWING_COUNT:I

.field public final mAutoRunSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public final mContext:Landroid/content/Context;

.field public mDesktopDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalUiCallback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

.field public mIsSPenDetached:Z

.field public mIsSPenEnabled:Z

.field public mIsTouchpadEnabled:Z

.field public final mNavBarModeObserver:Landroid/database/ContentObserver;

.field public final mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field public final mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

.field public final mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/TouchpadManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mDesktopDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSPenDetached(Lcom/android/server/desktopmode/TouchpadManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavBarModeObserver(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mNavBarModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPointerEventListener(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSPenDetachedReceiver(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSPenSettingChangedListener(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchpadRequested(Lcom/android/server/desktopmode/TouchpadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/TouchpadManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mDesktopDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSPenDetached(Lcom/android/server/desktopmode/TouchpadManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSPenEnabled(Lcom/android/server/desktopmode/TouchpadManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misNavBarGestureEnabled(Lcom/android/server/desktopmode/TouchpadManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/TouchpadManager;->isNavBarGestureEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSPenState(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchpad(Lcom/android/server/desktopmode/TouchpadManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpad(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchpadAvailability(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpadAvailability(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTouchpadOnDismiss(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpadOnDismiss()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/WindowManagerService;)V
    .registers 9

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mDesktopDisplayId:I

    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->AUTO_RUN_GUIDE_SHOWING_COUNT:I

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/TouchpadManager$1;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    .line 68
    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$2;

    const-string/jumbo v1, "spen_enabled"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/TouchpadManager$2;-><init>(Lcom/android/server/desktopmode/TouchpadManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 79
    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$3;

    const-string/jumbo v1, "touchpad_auto_run"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/TouchpadManager$3;-><init>(Lcom/android/server/desktopmode/TouchpadManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mAutoRunSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 91
    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/TouchpadManager$4;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/TouchpadManager$5;-><init>(Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mNavBarModeObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/TouchpadManager$6;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 131
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 132
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object p2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 134
    new-instance p1, Lcom/android/server/desktopmode/TouchpadManager$StateListener;

    invoke-direct {p1, p0, v2}, Lcom/android/server/desktopmode/TouchpadManager$StateListener;-><init>(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/TouchpadManager$StateListener-IA;)V

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 135
    iput-object p4, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 136
    iput-object p5, p0, Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 137
    invoke-virtual {p4, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSPenDetached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSPenEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsTouchpadEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getInternalUiCallback()Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    return-object p0
.end method

.method public final isNavBarGestureEnabled()Z
    .registers 4

    .line 180
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "navigation_mode"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x2

    if-gt v0, p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public isSPenFeatureAvailable(Lcom/android/server/desktopmode/State;)Z
    .registers 2

    .line 150
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    if-eqz p0, :cond_10

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isTouchpadAvailable(Lcom/android/server/desktopmode/State;)Z
    .registers 4

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 186
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 p1, 0x4

    const/16 v1, 0x66

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public isTouchpadFeatureAvailable(Lcom/android/server/desktopmode/State;)Z
    .registers 2

    .line 146
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyStartedByNotification()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_29

    .line 155
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "touchpad_auto_run_guide_count"

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-ge v0, v1, :cond_24

    .line 158
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    add-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 161
    :cond_24
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_29
    return-void
.end method

.method public final updateSPenState()V
    .registers 5

    .line 166
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSPenState()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isSPenFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    if-eqz v1, :cond_24

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 170
    :goto_25
    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    if-eq v1, v0, :cond_59

    .line 171
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    .line 172
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_48

    sget-object v1, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsSPenEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_48
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "spen_enabled"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 175
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->setSpenEnabled(Z)V

    :cond_59
    return-void
.end method

.method public final updateTouchpad(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    .line 196
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setTouchpadEnabled(Z)V

    return-void
.end method

.method public final updateTouchpadAvailability(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/server/desktopmode/IStateManager;->setTouchpadAvailable(Z)V

    return-void
.end method

.method public final updateTouchpadOnDismiss()V
    .registers 4

    .line 200
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SPEN_INBOX_MODEL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 203
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    const-string v2, "S Pen inbox model"

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_10
    iput-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V

    .line 207
    :cond_15
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpad(Z)V

    .line 208
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
