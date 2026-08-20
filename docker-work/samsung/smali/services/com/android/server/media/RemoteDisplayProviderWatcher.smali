.class public final Lcom/android/server/media/RemoteDisplayProviderWatcher;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "RemoteDisplayProvider"


# instance fields
.field public final mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/RemoteDisplayProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field public mRunning:Z

.field public final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field public final mScanPackagesRunnable:Ljava/lang/Runnable;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$mscanPackages(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->scanPackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "RemoteDisplayProvider"

    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    .line 62
    iput-object p3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 63
    iput p4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Watcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mProviders.size()="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 177
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 179
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 180
    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public final scanPackages()V
    .registers 8

    .line 109
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 116
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.media.remotedisplay.RemoteDisplayProvider"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 119
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_19

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 121
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5c

    .line 123
    new-instance v2, Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-direct {v2, v4, v5, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 127
    invoke-virtual {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 128
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    invoke-interface {v1, v2}, Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;->addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    :goto_5a
    move v3, v4

    goto :goto_19

    :cond_5c
    if-lt v2, v3, :cond_19

    .line 131
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 132
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 133
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->rebindIfDisconnected()V

    .line 134
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_5a

    .line 140
    :cond_74
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9e

    .line 141
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_84
    if-lt v0, v3, :cond_9e

    .line 142
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 143
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    invoke-interface {v2, v1}, Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;->removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 144
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_84

    :cond_9e
    return-void
.end method

.method public start()V
    .registers 8

    .line 75
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    if-nez v0, :cond_43

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 78
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 79
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 80
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 81
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 82
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 83
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 84
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_43
    return-void
.end method

.method public stop()V
    .registers 3

    .line 95
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 98
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_2d

    .line 103
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_2d
    return-void
.end method

.method public final verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .registers 7

    .line 151
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/"

    const-string v3, "RemoteDisplayProvider"

    if-eqz v0, :cond_3f

    const-string v4, "android.permission.BIND_REMOTE_DISPLAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3f

    .line 162
    :cond_12
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.permission.REMOTE_DISPLAY_PROVIDER"

    invoke-virtual {p0, v4, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3d

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring remote display provider service because it does not have the REMOTE_DISPLAY_PROVIDER permission: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3d
    const/4 p0, 0x1

    return p0

    .line 157
    :cond_3f
    :goto_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring remote display provider service because it did not require the BIND_REMOTE_DISPLAY permission in its manifest: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
