.class public final Lcom/android/server/media/RemoteDisplayProviderProxy;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;,
        Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;,
        Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "RemoteDisplayProvider"


# instance fields
.field public mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

.field public mBound:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public mConnectionReady:Z

.field public final mContext:Landroid/content/Context;

.field public mDiscoveryMode:I

.field public mDisplayState:Landroid/media/RemoteDisplayState;

.field public mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

.field public final mDisplayStateChanged:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mRunning:Z

.field public mScheduledDisplayStateChangedCallback:Z

.field public mSelectedDisplayId:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayState(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/media/RemoteDisplayState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStateCallback(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmScheduledDisplayStateChangedCallback(Lcom/android/server/media/RemoteDisplayProviderProxy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConnectionDied(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onConnectionDied(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConnectionReady(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onConnectionReady(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "RemoteDisplayProvider"

    const/4 v1, 0x3

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 68
    iput p3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public adjustDisplayVolume(I)V
    .registers 3

    .line 122
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 123
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->adjustVolume(Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public final bind()V
    .registers 9

    const-string v0, ": Bind failed"

    .line 185
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-nez v1, :cond_6c

    .line 186
    sget-boolean v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    const-string v2, "RemoteDisplayProvider"

    if-eqz v1, :cond_20

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_20
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.media.remotedisplay.RemoteDisplayProvider"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    const v5, 0x4000001

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, p0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-nez v3, :cond_6c

    if-eqz v1, :cond_6c

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_54} :catch_55

    goto :goto_6c

    :catch_55
    move-exception v1

    .line 200
    sget-boolean v3, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v3, :cond_6c

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6c
    :goto_6c
    return-void
.end method

.method public final disconnect()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-eqz v0, :cond_19

    .line 285
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->disconnect(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 289
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->dispose()V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayState(Landroid/media/RemoteDisplayState;)V

    :cond_19
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActiveConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mConnectionReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDiscoveryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSelectedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mDisplayState="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayState()Landroid/media/RemoteDisplayState;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    return-object p0
.end method

.method public getFlattenedComponentName()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 129
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final onConnectionDied(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-ne v0, p1, :cond_21

    .line 267
    sget-boolean p1, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz p1, :cond_1e

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service connection died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteDisplayProvider"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    :cond_21
    return-void
.end method

.method public final onConnectionReady(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-ne v0, p1, :cond_17

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 256
    iget p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    if-eqz p1, :cond_e

    .line 257
    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setDiscoveryMode(I)V

    .line 259
    :cond_e
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz p1, :cond_17

    .line 260
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->connect(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-ne v0, p1, :cond_24

    .line 276
    sget-boolean p1, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz p1, :cond_21

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": State changed, state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteDisplayProvider"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_21
    invoke-virtual {p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayState(Landroid/media/RemoteDisplayState;)V

    :cond_24
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 221
    sget-boolean p1, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    const-string v0, "RemoteDisplayProvider"

    if-eqz p1, :cond_1a

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-eqz v1, :cond_60

    .line 226
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 228
    invoke-static {p2}, Landroid/media/IRemoteDisplayProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayProvider;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 230
    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-direct {v1, p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V

    .line 231
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->register()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 232
    iput-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    goto :goto_60

    :cond_35
    if-eqz p1, :cond_60

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Registration failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 239
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Service returned invalid remote display provider binder"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 246
    sget-boolean p1, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz p1, :cond_1a

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteDisplayProvider"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    return-void
.end method

.method public rebindIfDisconnected()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 160
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    :cond_10
    return-void
.end method

.method public setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    return-void
.end method

.method public setDiscoveryMode(I)V
    .registers 3

    .line 93
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    if-eq v0, p1, :cond_12

    .line 94
    iput p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 95
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setDiscoveryMode(I)V

    .line 98
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    :cond_12
    return-void
.end method

.method public final setDisplayState(Landroid/media/RemoteDisplayState;)V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 297
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 298
    iget-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    if-nez p1, :cond_18

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    .line 300
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method public setDisplayVolume(I)V
    .registers 3

    .line 116
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 117
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setVolume(Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public setSelectedDisplay(Ljava/lang/String;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 104
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 105
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->disconnect(Ljava/lang/String;)V

    .line 107
    :cond_15
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 108
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    .line 109
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->connect(Ljava/lang/String;)V

    .line 111
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    :cond_25
    return-void
.end method

.method public final shouldBind()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    if-eqz v0, :cond_e

    .line 176
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .registers 3

    .line 137
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    if-nez v0, :cond_24

    .line 138
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteDisplayProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    :cond_24
    return-void
.end method

.method public stop()V
    .registers 3

    .line 148
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    if-eqz v0, :cond_24

    .line 149
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteDisplayProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unbind()V
    .registers 3

    .line 208
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-eqz v0, :cond_29

    .line 209
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Unbinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteDisplayProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 215
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_29
    return-void
.end method

.method public final updateBinding()V
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    goto :goto_d

    .line 169
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    :goto_d
    return-void
.end method
