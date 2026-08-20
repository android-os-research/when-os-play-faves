.class public Lcom/sec/ims/ICentralMsgStoreService$Default;
.super Ljava/lang/Object;
.source "ICentralMsgStoreService.java"

# interfaces
.implements Lcom/sec/ims/ICentralMsgStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ICentralMsgStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "threadId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public deleteSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public getRestartScreenName(Ljava/lang/String;)I
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public manualSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "rowIDs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public notifyUIScreen(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "screenName"    # I
    .param p3, "style"    # Ljava/lang/String;
    .param p4, "para1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "bufferRowId"    # Ljava/lang/String;
    .param p4, "appMessageId"    # Ljava/lang/String;
    .param p5, "syncAction"    # I
    .param p6, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public onRCSDBReady(Ljava/lang/String;)V
    .registers 2
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "screenName"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onUserEnterApp(Ljava/lang/String;)V
    .registers 2
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public onUserLeaveApp(Ljava/lang/String;)V
    .registers 2
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public readMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "instance"    # Lcom/sec/ims/ICentralMsgStoreService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public restartService(Ljava/lang/String;)V
    .registers 2
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public resumeSync(Ljava/lang/String;)V
    .registers 2
    .param p1, "appType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public unReadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "jsonSummary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
