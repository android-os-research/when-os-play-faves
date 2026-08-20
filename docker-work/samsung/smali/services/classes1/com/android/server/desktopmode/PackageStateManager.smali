.class public Lcom/android/server/desktopmode/PackageStateManager;
.super Lcom/android/internal/content/PackageMonitor;
.source "PackageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/PackageStateManager$StateListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPackageState:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetComponent(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/PackageStateManager;->setComponent(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSettingsComponent(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageState(Lcom/android/server/desktopmode/PackageStateManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/PackageStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Landroid/content/pm/IPackageManager;)V
    .registers 9

    .line 57
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 60
    new-instance v2, Lcom/android/server/desktopmode/PackageStateManager$StateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/PackageStateManager$StateListener;-><init>(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/PackageStateManager$StateListener-IA;)V

    invoke-interface {p2, v2}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 61
    iput-object p4, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 64
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 71
    monitor-enter v0

    :try_start_27
    const-string p1, "com.sec.android.app.desktoplauncher"

    .line 72
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.sec.android.desktopmode.uiservice"

    .line 73
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_41

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->register(Landroid/os/Handler;)V

    return-void

    :catchall_41
    move-exception p0

    .line 74
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/PackageStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 238
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPackageState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 240
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_41

    .line 241
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_41
    move-exception p0

    .line 240
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final isPackageAvailable(Ljava/lang/String;)Z
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isEmergencyModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 84
    :cond_e
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v0

    .line 86
    :try_start_18
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 90
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_37

    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz p0, :cond_37

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_34} :catch_38

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_37
    return v2

    .line 100
    :catch_38
    sget-object p0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPackageAvailable failed: unknown package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return v1
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 5

    const-string p2, "com.sec.android.app.desktoplauncher"

    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 229
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_23

    sget-object p2, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageDataCleared(), packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_23
    iget-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/State;)V

    .line 231
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyLauncherPackageReplaced(Z)V

    :cond_32
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 5

    const-string p2, "com.sec.android.app.desktoplauncher"

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 220
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_23

    sget-object p2, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageUpdateFinished(), packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_23
    iget-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->setSettingsComponent(Lcom/android/server/desktopmode/State;)V

    .line 222
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyLauncherPackageReplaced(Z)V

    :cond_32
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 203
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_18

    sget-object p1, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onReceive(), action=com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager;->onSomePackagesChanged()V

    goto :goto_1f

    .line 207
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1f
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 3

    .line 213
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSomePackagesChanged()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState()V

    return-void
.end method

.method public final register(Landroid/os/Handler;)V
    .registers 13

    .line 179
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 180
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 181
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 182
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 183
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 184
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 185
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 186
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    .line 189
    invoke-virtual {v3, v2, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_36

    .line 192
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_67

    .line 193
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 195
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

    .line 196
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v5, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v6, p0

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_67
    move-exception p0

    .line 192
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public final setComponent(Ljava/lang/String;Z)V
    .registers 6

    .line 165
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComponent(component= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "com.sec.android.desktopmode.uiservice"

    .line 168
    invoke-static {v1, p1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p2, :cond_35

    move p2, v1

    goto :goto_36

    :cond_35
    const/4 p2, 0x2

    .line 170
    :goto_36
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 172
    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p0

    .line 167
    invoke-interface {v0, p1, p2, v1, p0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_43} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_43} :catch_44

    goto :goto_4b

    .line 174
    :catch_44
    sget-object p0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to setComponent"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void
.end method

.method public final setComponentFromList(Lcom/android/server/desktopmode/State;II)V
    .registers 10

    .line 146
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 147
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_3d

    aget-object v2, p2, v1

    .line 148
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 151
    :try_start_16
    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v5

    .line 151
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_3a

    .line 155
    :cond_27
    iget-object v3, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 156
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v4

    const/4 v5, 0x1

    .line 155
    invoke-interface {v3, v2, p3, v5, v4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception v2

    .line 158
    sget-object v3, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to enable/disable components"

    invoke-static {v3, v4, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_3d
    return-void
.end method

.method public final setSettingsComponent(Lcom/android/server/desktopmode/State;)V
    .registers 4

    .line 137
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 138
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    const v1, 0x1070035

    .line 140
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/desktopmode/PackageStateManager;->setComponentFromList(Lcom/android/server/desktopmode/State;II)V

    return-void
.end method

.method public final updatePackageState()V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 109
    :try_start_4
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/PackageStateManager;->updatePackageState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    goto :goto_e

    :cond_22
    if-eqz v1, :cond_2e

    .line 115
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 117
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_38

    if-eqz v1, :cond_37

    .line 119
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, v1}, Lcom/android/server/desktopmode/IStateManager;->setPackageState(Ljava/util/Map;)V

    :cond_37
    return-void

    :catchall_38
    move-exception p0

    .line 117
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final updatePackageState(Ljava/lang/String;)Z
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_44

    .line 127
    iget-object p0, p0, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_41

    sget-object p0, Lcom/android/server/desktopmode/PackageStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePackageState(), packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", available="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 p0, 0x1

    .line 130
    monitor-exit v0

    return p0

    :cond_44
    const/4 p0, 0x0

    .line 132
    monitor-exit v0

    return p0

    :catchall_47
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method
