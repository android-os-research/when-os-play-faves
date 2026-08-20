.class public final Lcom/android/server/tv/TvRemoteProviderProxy;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.tv.remoteprovider.TvRemoteProvider"

.field public static final TAG:Ljava/lang/String; = "TvRemoteProviderProxy"


# instance fields
.field public mBound:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mRunning:Z

.field public final mUid:I

.field public final mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "TvRemoteProviderProxy"

    const/4 v1, 0x2

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/ComponentName;II)V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    .line 58
    iput-object p3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 59
    iput p4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    .line 60
    iput p5, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I

    return-void
.end method


# virtual methods
.method public final bind()V
    .registers 9

    const-string v0, ": Bind failed"

    .line 106
    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-nez v1, :cond_6c

    .line 107
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    const-string v2, "TvRemoteProviderProxy"

    if-eqz v1, :cond_20

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_20
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    const v5, 0x4000001

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, p0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v1, :cond_6c

    if-nez v3, :cond_6c

    .line 118
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

    .line 121
    sget-boolean v3, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v3, :cond_6c

    .line 122
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

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mConnected="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 73
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

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 141
    sget-boolean p1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    const-string v0, "TvRemoteProviderProxy"

    if-eqz p1, :cond_1a

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onServiceConnected()"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnected:Z

    .line 147
    invoke-static {p2}, Landroid/media/tv/ITvRemoteProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteProvider;

    move-result-object p1

    if-nez p1, :cond_38

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Invalid binder"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_38
    :try_start_38
    new-instance p2, Lcom/android/server/tv/TvRemoteServiceInput;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    invoke-direct {p2, v1, p1}, Lcom/android/server/tv/TvRemoteServiceInput;-><init>(Ljava/lang/Object;Landroid/media/tv/ITvRemoteProvider;)V

    invoke-interface {p1, p2}, Landroid/media/tv/ITvRemoteProvider;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_57

    .line 156
    :catch_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Failed remote call to setRemoteServiceInputSink"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnected:Z

    .line 164
    sget-boolean p1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz p1, :cond_1d

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": onServiceDisconnected()"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TvRemoteProviderProxy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public rebindIfDisconnected()V
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnected:Z

    if-nez v0, :cond_e

    .line 100
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    :cond_e
    return-void
.end method

.method public start()V
    .registers 3

    .line 77
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-nez v0, :cond_24

    .line 78
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    :cond_24
    return-void
.end method

.method public stop()V
    .registers 3

    .line 88
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-eqz v0, :cond_24

    .line 89
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    :cond_24
    return-void
.end method

.method public final unbind()V
    .registers 3

    .line 129
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v0, :cond_26

    .line 130
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Unbinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    .line 135
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_26
    return-void
.end method
