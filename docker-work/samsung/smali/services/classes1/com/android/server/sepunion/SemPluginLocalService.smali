.class public Lcom/android/server/sepunion/SemPluginLocalService;
.super Lcom/samsung/android/sepunion/SemPluginManagerLocal;
.source "SemPluginLocalService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public mPluginServiceReady:Z

.field public mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/sepunion/SemPluginLocalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemPluginLocalService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mPluginServiceReady:Z

    .line 28
    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->initialize()V

    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 164
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 166
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->addLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 104
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 106
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 188
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 191
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 193
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p4, :cond_1b

    const-string v0, "cover"

    .line 271
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1b

    .line 272
    iget-object p4, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez p4, :cond_14

    .line 273
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 275
    :cond_14
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-eqz p0, :cond_1b

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 201
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 204
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 206
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getSemPluginManagerService()Lcom/android/server/sepunion/SemPluginManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz v0, :cond_d

    .line 40
    invoke-virtual {v0}, Lcom/android/server/sepunion/SemPluginManagerService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 83
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 264
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 266
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0
.end method

.method public getCoverSwitchState()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 89
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 91
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchState()Z

    move-result p0

    return p0
.end method

.method public final getSemPluginManagerService()Lcom/android/server/sepunion/SemPluginManagerService;
    .registers 2

    const-string/jumbo v0, "plugin"

    .line 48
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mSemPluginManagerService:Lcom/android/server/sepunion/SemPluginManagerService;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 112
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 114
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getVersion()I

    move-result p0

    return p0
.end method

.method public initialize()V
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-void
.end method

.method public isCoverManagerDisabled()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 96
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 98
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->isCoverManagerDisabled()Z

    move-result p0

    return p0
.end method

.method public onCoverAppCovered(Z)I
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 240
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 242
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onCoverAppCovered(Z)I

    move-result p0

    return p0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 57
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 59
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 65
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 67
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 248
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 250
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 136
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 139
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 141
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 172
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 174
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->removeLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 214
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 217
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 219
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public sendDataToCover(I[B)V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 120
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 122
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendDataToCover(I[B)V

    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 156
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 158
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 128
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 130
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendPowerKeyToCover()V

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 180
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 182
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendSystemEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 227
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 230
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 232
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 73
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 75
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 256
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 258
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    .line 148
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 150
    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method
