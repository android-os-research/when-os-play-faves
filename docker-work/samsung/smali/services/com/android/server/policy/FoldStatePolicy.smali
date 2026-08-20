.class public Lcom/android/server/policy/FoldStatePolicy;
.super Lcom/android/server/devicestate/DeviceStatePolicy;
.source "FoldStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/FoldStatePolicy$SettingsObserver;,
        Lcom/android/server/policy/FoldStatePolicy$Provider;
    }
.end annotation


# static fields
.field public static final LTW_SMARTVIEW_CONNECTED:Ljava/lang/String; = "ltw_smartview_connected"

.field public static final TAG:Ljava/lang/String; = "DeviceStatePolicy"

.field public static final TAG_WITH_CLASS_NAME:Z = false

.field public static sInstance:Lcom/android/server/policy/FoldStatePolicy;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public mIsLTWSmartViewConnected:Z

.field public mIsTableModeEnabled:Z

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsLTWSmartViewConnected(Lcom/android/server/policy/FoldStatePolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/FoldStatePolicy;->mIsLTWSmartViewConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/server/policy/FoldStatePolicy;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/FoldStatePolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsLTWSmartViewConnected(Lcom/android/server/policy/FoldStatePolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/FoldStatePolicy;->mIsLTWSmartViewConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/policy/FoldStatePolicy;
    .registers 1

    sget-object v0, Lcom/android/server/policy/FoldStatePolicy;->sInstance:Lcom/android/server/policy/FoldStatePolicy;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputsInstance(Lcom/android/server/policy/FoldStatePolicy;)V
    .registers 1

    sput-object p0, Lcom/android/server/policy/FoldStatePolicy;->sInstance:Lcom/android/server/policy/FoldStatePolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStatePolicy;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/android/server/policy/FoldStatePolicy;->mIsTableModeEnabled:Z

    .line 71
    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/FoldStatePolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->setFoldStatePolicy(Lcom/android/server/policy/FoldStatePolicy;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/policy/FoldStatePolicy;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/policy/FoldStatePolicy;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public adjustState(II)I
    .registers 4

    const-string p0, "DeviceStatePolicy"

    const/4 p2, -0x1

    if-ne p1, p2, :cond_c

    const-string/jumbo p1, "notifyDeviceStateChangedIfNeeded: invalid device state"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 102
    :cond_c
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo p1, "notifyDeviceStateChangedIfNeeded: ignore in factory mode."

    .line 103
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 112
    :cond_19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyDeviceStateChangedIfNeeded, newState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", caller="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    .line 113
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-ne p1, p0, :cond_3f

    const/4 p1, 0x2

    :cond_3f
    return p1
.end method

.method public cancelForceRequest()V
    .registers 3

    .line 160
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->requestDeviceFolded(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string v0, "DeviceStatePolicy"

    const-string v1, "Failed to call requestDeviceFolded"

    .line 162
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public configureDeviceForState(ILjava/lang/Runnable;)V
    .registers 3

    .line 88
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public dumpInternal(Ljava/io/PrintWriter;)V
    .registers 2

    .line 167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/policy/FoldStatePolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    return-object p0
.end method

.method public postStateChanged(I)V
    .registers 2

    return-void
.end method

.method public setAwake(Z)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/android/server/policy/FoldStatePolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mFoldingSensorPolicy:Lcom/android/server/policy/FoldingSensorPolicy;

    if-eqz p0, :cond_9

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldingSensorPolicy;->setAwake(Z)V

    :cond_9
    return-void
.end method

.method public setTableModeEnabled(Z)V
    .registers 4

    .line 180
    iget-boolean v0, p0, Lcom/android/server/policy/FoldStatePolicy;->mIsTableModeEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 183
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTableModeEnabled isTableModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    .line 184
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStatePolicy"

    .line 183
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-boolean p1, p0, Lcom/android/server/policy/FoldStatePolicy;->mIsTableModeEnabled:Z

    .line 186
    iget-object p0, p0, Lcom/android/server/policy/FoldStatePolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void
.end method

.method public updateFoldSensorListener(Z)V
    .registers 2

    .line 202
    iget-object p0, p0, Lcom/android/server/policy/FoldStatePolicy;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mFoldingSensorPolicy:Lcom/android/server/policy/FoldingSensorPolicy;

    if-eqz p0, :cond_9

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/policy/FoldingSensorPolicy;->updateFoldingSensorListener(Z)V

    :cond_9
    return-void
.end method
