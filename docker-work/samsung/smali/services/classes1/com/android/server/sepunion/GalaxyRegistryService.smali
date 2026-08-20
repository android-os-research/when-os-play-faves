.class public Lcom/android/server/sepunion/GalaxyRegistryService;
.super Lcom/samsung/android/sepunion/IGalaxyRegistryService$Stub;
.source "GalaxyRegistryService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;
    }
.end annotation


# static fields
.field public static final GALAXY_REGISTRY_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.galaxyregistry"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mMonitor:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;

.field public mTargetClass:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/GalaxyRegistryService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartService(Lcom/android/server/sepunion/GalaxyRegistryService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->startService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IGalaxyRegistryService$Stub;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;-><init>(Lcom/android/server/sepunion/GalaxyRegistryService;Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mMonitor:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;

    .line 113
    new-instance v0, Lcom/android/server/sepunion/GalaxyRegistryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/GalaxyRegistryService$1;-><init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mContext:Landroid/content/Context;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "\n##### GalaxyRegistryService  #####\n##### (dumpsys sepunion galaxyregistry) #####\n"

    .line 107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    Service alive="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mMonitor:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;

    invoke-virtual {p0}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->isAlive()Z

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

.method public final getTargetClass()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 142
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_8
    const-string v1, "com.samsung.android.app.galaxyregistry"

    const/16 v2, 0x80

    .line 145
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 146
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_36

    const-string v1, "com.samsung.android.app.galaxyregistry.SYSTEM_SERVICE_CLASS"

    .line 149
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 152
    sget-object v1, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is not installed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-object v0
.end method

.method public final isInstalled()Z
    .registers 5

    const-string v0, "com.samsung.android.app.galaxyregistry"

    .line 124
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 127
    :try_start_b
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 129
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_22

    array-length v2, v2

    if-lez v2, :cond_22

    const-string v2, "android"

    .line 130
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 133
    :cond_22
    sget-object p0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    const-string v0, "app has invalid signature"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_29} :catch_2a

    goto :goto_45

    :catch_2a
    move-exception p0

    .line 135
    sget-object v0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is not installed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return v1
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    .line 70
    invoke-virtual {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 71
    sget-object p1, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhase()"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 76
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_26
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

    .line 46
    sget-object v0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

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

    iget-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mMonitor:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mMonitor:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->registerWatcher(Landroid/os/IBinder;)V

    return-void
.end method

.method public final startService()V
    .registers 5

    .line 159
    invoke-virtual {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 160
    sget-object p0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    const-string v0, "failed to start service - app is not installed"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->getTargetClass()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 167
    sget-object p0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    const-string v0, "failed to start service - target class is not specified"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_20
    :try_start_20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyregistry"

    invoke-virtual {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->getTargetClass()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v1, 0x1000020

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "option"

    const-string/jumbo v2, "start"

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra"

    const-string/jumbo v2, "system"

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4f} :catch_50

    goto :goto_6b

    :catch_50
    move-exception p0

    .line 179
    sget-object v0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception on startService() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_6b
    sget-object p0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startService()"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6

    .line 52
    sget-object v0, Lcom/android/server/sepunion/GalaxyRegistryService;->TAG:Ljava/lang/String;

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

    .line 53
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService;->mMonitor:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->unregisterWatcher(Landroid/os/IBinder;)V

    return-void
.end method
