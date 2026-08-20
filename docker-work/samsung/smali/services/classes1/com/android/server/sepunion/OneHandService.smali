.class public Lcom/android/server/sepunion/OneHandService;
.super Lcom/samsung/android/sepunion/IOneHandService$Stub;
.source "OneHandService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;
    }
.end annotation


# static fields
.field public static final SIDEGESTURE_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.action.SIDEGESTUREPAD_SERVICE"

.field public static final SIDEGESTURE_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.sidegesturepad.SGPService"

.field public static final SIDEGESTURE_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.sidegesturepad"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public static synthetic $r8$lambda$Ye2ixJ4m4mD0_2U8KVkFV765jHg(Lcom/android/server/sepunion/OneHandService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/OneHandService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/OneHandService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/OneHandService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartGestureService(Lcom/android/server/sepunion/OneHandService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/OneHandService;->startGestureService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/sepunion/OneHandService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IOneHandService$Stub;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;-><init>(Lcom/android/server/sepunion/OneHandService;Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    .line 148
    new-instance v0, Lcom/android/server/sepunion/OneHandService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/OneHandService$1;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 1

    .line 104
    invoke-virtual {p0}, Lcom/android/server/sepunion/OneHandService;->clearOneHandModeRunningState()V

    return-void
.end method


# virtual methods
.method public final clearOneHandModeRunningState()V
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1a

    .line 111
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1a
    return-void
.end method

.method public clickTile(Ljava/lang/String;)V
    .registers 4

    .line 72
    sget-object p0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickTile() componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "\n##### OneHandService  #####\n##### (dumpsys sepunion onehand) #####\n"

    .line 142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    Service alive="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {p0}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->isAlive()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "statusbar"

    .line 62
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    .line 64
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1c
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isInstalled()Z
    .registers 3

    .line 159
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_6
    const-string v0, "com.samsung.android.sidegesturepad"

    const/4 v1, 0x1

    .line 161
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_d

    return v1

    :catch_d
    const/4 p0, 0x0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    .line 94
    invoke-virtual {p0}, Lcom/android/server/sepunion/OneHandService;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 95
    sget-object p1, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase()"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 100
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    :cond_26
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public registerListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6

    .line 47
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cb="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mMonitor="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->registerWatcher(Landroid/os/IBinder;)V

    return-void
.end method

.method public final startGestureService()V
    .registers 4

    .line 169
    invoke-virtual {p0}, Lcom/android/server/sepunion/OneHandService;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 173
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.sidegesturepad"

    const-string v2, "com.samsung.android.sidegesturepad.SGPService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.SIDEGESTUREPAD_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x1000020

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "option"

    const-string/jumbo v2, "start"

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra"

    const-string/jumbo v2, "system"

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    goto :goto_4f

    :catch_38
    move-exception p0

    .line 180
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception on startGestureService() e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_4f
    sget-object p0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startGestureService()"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6

    .line 53
    sget-object v0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterListener() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cb="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->unregisterWatcher(Landroid/os/IBinder;)V

    return-void
.end method

.method public writeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 77
    sget-object p0, Lcom/android/server/sepunion/OneHandService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeSetting() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", key="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
