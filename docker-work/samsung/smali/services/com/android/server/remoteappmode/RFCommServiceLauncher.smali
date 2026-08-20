.class public Lcom/android/server/remoteappmode/RFCommServiceLauncher;
.super Ljava/lang/Object;
.source "RFCommServiceLauncher.java"


# static fields
.field public static final ACTION_RFCOMM_SERVICE_DISCONNECTED:Ljava/lang/String; = "com.samsung.android.mdx.instanthotspot.action.RFCOMM_SERVICE_DISCONNECTED"

.field public static final SERVICE_CLS_NAME:Ljava/lang/String; = "com.samsung.android.mdx.windowslink.interactor.instanthotspot.HotspotRFCommService"

.field public static final SERVICE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.mdx"

.field public static final TAG:Ljava/lang/String; = "RFCommServiceLauncher"


# instance fields
.field public mBounded:Z

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBounded(Lcom/android/server/remoteappmode/RFCommServiceLauncher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBroadcast(Lcom/android/server/remoteappmode/RFCommServiceLauncher;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    .line 62
    new-instance v0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;-><init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mConnection:Landroid/content/ServiceConnection;

    .line 34
    iput-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .registers 7

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService - mBounded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFCommServiceLauncher"

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    if-nez v0, :cond_49

    .line 42
    :try_start_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.mdx"

    const-string v4, "com.samsung.android.mdx.windowslink.interactor.instanthotspot.HotspotRFCommService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_33} :catch_34

    goto :goto_49

    :catch_34
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindService failed,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void
.end method

.method public final sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 87
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.mdx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 88
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_d

    :cond_37
    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .registers 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindService - mBounded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFCommServiceLauncher"

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    if-eqz v0, :cond_25

    .line 56
    iget-object v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    :cond_25
    return-void
.end method
