.class public abstract Lcom/samsung/accessory/manager/authentication/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# instance fields
.field public mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

.field public mContext:Landroid/content/Context;

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p0, :cond_7

    .line 98
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->close()V

    :cond_7
    return-void
.end method

.method public connect()V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect(Ljava/lang/String;)Z

    :cond_8
    return-void
.end method

.method public disconnect()V
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p0, :cond_7

    .line 93
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disconnect()Z

    :cond_7
    return-void
.end method

.method public getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    return-object p0
.end method

.method public getConnectivityType()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    return p0
.end method

.method public abstract onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
.end method

.method public abstract onInterrupted()V
.end method

.method public openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result p0

    return p0
.end method

.method public sendEndCommand()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p0, :cond_7

    .line 83
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopUsbAuth()V

    :cond_7
    return-void
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 65
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object p0

    return-object p0
.end method

.method public sendStopAuth()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopAuth()Z

    move-result p0

    return p0
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 78
    :cond_c
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object p0

    return-object p0
.end method

.method public setConnection()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_5

    return-void

    .line 39
    :cond_5
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    goto :goto_3f

    .line 50
    :cond_14
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_3f

    .line 47
    :cond_1f
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_3f

    .line 44
    :cond_2a
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_3f

    .line 41
    :cond_35
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    :goto_3f
    return-void
.end method

.method public final setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    return-void
.end method

.method public abstract setInterrupt(Z)V
.end method

.method public setSessionState(I)V
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p0, :cond_7

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setSessionState(I)V

    :cond_7
    return-void
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 2

    .line 25
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    return-void
.end method
