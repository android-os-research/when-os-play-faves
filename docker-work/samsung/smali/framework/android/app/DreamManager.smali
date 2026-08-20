.class public Landroid/app/DreamManager;
.super Ljava/lang/Object;
.source "DreamManager.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/service/dreams/IDreamManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    nop

    .line 50
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    .line 51
    iput-object p1, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist areDreamsSupported()Z
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isDreaming()Z
    .registers 2

    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 174
    :catch_7
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScreensaverEnabled()Z
    .registers 5

    .line 61
    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method public blacklist setActiveDream(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "dreamComponent"    # Landroid/content/ComponentName;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 137
    .local v0, "dreams":[Landroid/content/ComponentName;
    :try_start_6
    iget-object v1, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 138
    if-eqz p1, :cond_12

    move-object v3, v0

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 137
    :goto_13
    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 141
    goto :goto_1b

    .line 139
    :catch_17
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 142
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public blacklist setDreamOverlay(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "dreamOverlayComponent"    # Landroid/content/ComponentName;

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->registerDreamOverlayService(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 159
    goto :goto_a

    .line 157
    :catch_6
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setScreensaverEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 73
    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    const/4 v1, -0x2

    .line 73
    const-string/jumbo v2, "screensaver_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 75
    return-void
.end method

.method public blacklist startDream(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 103
    goto :goto_a

    .line 101
    :catch_6
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist stopDream()V
    .registers 2

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 120
    goto :goto_a

    .line 118
    :catch_6
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
