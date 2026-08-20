.class public Lcom/samsung/android/ibs/IntelligentBatterySaver;
.super Ljava/lang/Object;
.source "IntelligentBatterySaver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IntelligentBatterySaver"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIbsServices:Landroid/os/IIntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/ibs/IntelligentBatterySaver;->getIbsServices()V

    return-void
.end method


# virtual methods
.method public addBlockList(ILjava/lang/String;)Z
    .registers 3

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2}, Landroid/os/IIntelligentBatterySaverService;->addSqdBlockList(ILjava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call addSqdBlockList failed!"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getBlockList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getSqdBlockList()Ljava/util/Map;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getSqdBlockList failed!"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGain()[J
    .registers 2

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getGain()[J

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getGain failed!"

    .line 121
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIbsServices()V
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    if-nez v0, :cond_17

    const-string v0, "IntelligentBatterySaverService"

    .line 238
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIntelligentBatterySaverService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIntelligentBatterySaverService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    const-string p0, "IntelligentBatterySaver"

    const-string v0, "get Ibs services success"

    .line 239
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public getOperationHistory()Landroid/os/Bundle;
    .registers 2

    .line 199
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getOperationHistory()Landroid/os/Bundle;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getOperationHistory failed!"

    .line 201
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSleepTime()Landroid/os/Bundle;
    .registers 2

    .line 212
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getSleepTime()Landroid/os/Bundle;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getSleepTime failed!"

    .line 214
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersionCode()I
    .registers 1

    const/16 p0, 0x6b

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 1

    const-string p0, "1.0.7"

    return-object p0
.end method

.method public isEnableSerive()Z
    .registers 2

    .line 186
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->isEnableSerive()Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call isEnableSerive failed!"

    .line 188
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSqdUiControlEnabled()Z
    .registers 2

    .line 86
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->isSqdUiControlEnabled()Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call isSqdUiControlEnable failed!"

    .line 88
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public removeBlockList(ILjava/lang/String;)Z
    .registers 3

    .line 55
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2}, Landroid/os/IIntelligentBatterySaverService;->removeSqdBlockList(ILjava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call removeSqdBlockList failed!"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRubinEvent(Ljava/lang/String;)V
    .registers 2

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setRubinEvent(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setRubinEvent failed!"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public setSarrUiControlEnable(Z)V
    .registers 2

    .line 135
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setSarrUiControlEnable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSarrUiControlEnable failed!"

    .line 137
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public setSleepModeEnabled(Z)V
    .registers 2

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setSleepModeEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSleepModeEnabled failed!"

    .line 150
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public setSleepTime(JJ)V
    .registers 5

    .line 161
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IIntelligentBatterySaverService;->setSleepTime(JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSleepTime failed!"

    .line 163
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public setSqdUiControlEnabled(Z)V
    .registers 2

    .line 71
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setSqdUiControlEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSqdUiControlEnabled failed!"

    .line 73
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method
