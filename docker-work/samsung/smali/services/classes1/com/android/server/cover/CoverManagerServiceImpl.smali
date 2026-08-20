.class public Lcom/android/server/cover/CoverManagerServiceImpl;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerServiceImpl.java"


# static fields
.field public static final COVER_ABSENT:I = -0x1

.field public static final SERVICE_VERSION:I = 0x10b0000


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverStateLock:Ljava/lang/Object;

.field public mSystemReady:Z

.field public mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 30
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 41
    const-class p1, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 186
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->addLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 126
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 212
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 250
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const-string v0, "cover"

    .line 253
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 221
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_a

    .line 92
    new-instance p0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    return-object p0

    .line 94
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0
.end method

.method public getCoverSwitchState()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 110
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getCoverSwitchState()Z

    move-result p0

    return p0
.end method

.method public getVersion()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_7

    const/high16 p0, 0x10b0000

    return p0

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->getVersion()I

    move-result p0

    return p0
.end method

.method public isCoverManagerDisabled()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->isCoverManagerDisabled()Z

    move-result p0

    return p0
.end method

.method public onCoverAppCovered(Z)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 245
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->onCoverAppCovered(Z)I

    move-result p0

    return p0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 55
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 63
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 71
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 159
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 195
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->removeLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 229
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public sendDataToCover(I[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 142
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendDataToCover(I[B)V

    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 177
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 150
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendPowerKeyToCover()V

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_5

    return-void

    .line 203
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->sendSystemEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 237
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public systemRunning()V
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    :cond_7
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 87
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUnionLocal:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 168
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method
