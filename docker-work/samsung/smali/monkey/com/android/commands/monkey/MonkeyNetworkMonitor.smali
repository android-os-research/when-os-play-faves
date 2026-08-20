.class public Lcom/android/commands/monkey/MonkeyNetworkMonitor;
.super Landroid/content/IIntentReceiver$Stub;
.source "MonkeyNetworkMonitor.java"


# static fields
.field private static final LDEBUG:Z = false


# instance fields
.field private final filter:Landroid/content/IntentFilter;

.field private mCollectionStartTime:J

.field private mElapsedTime:J

.field private mEventTime:J

.field private mLastNetworkType:I

.field private mMobileElapsedTime:J

.field private mWifiElapsedTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    .line 40
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    .line 41
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    return-void
.end method

.method private updateNetworkStats()V
    .registers 7

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 62
    .local v0, "timeNow":J
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    sub-long v2, v0, v2

    .line 63
    .local v2, "delta":J
    iget v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    packed-switch v4, :pswitch_data_22

    goto :goto_1a

    .line 70
    :pswitch_e
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    .line 71
    goto :goto_1a

    .line 66
    :pswitch_14
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    .line 67
    nop

    .line 76
    :goto_1a
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    .line 77
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public dump()V
    .registers 7

    .line 102
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## Network stats: elapsed time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms mobile, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms wifi, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms not connected)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 49
    .local v0, "ni":Landroid/net/NetworkInfo;
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    .line 50
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    goto :goto_25

    .line 53
    :cond_1a
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_25

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    .line 57
    :cond_25
    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    .line 58
    return-void
.end method

.method public register(Landroid/app/IActivityManager;)V
    .registers 12
    .param p1, "am"    # Landroid/app/IActivityManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v6, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public start()V
    .registers 3

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    .line 81
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    .line 82
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    .line 84
    return-void
.end method

.method public stop()V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    .line 99
    return-void
.end method

.method public unregister(Landroid/app/IActivityManager;)V
    .registers 2
    .param p1, "am"    # Landroid/app/IActivityManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 95
    return-void
.end method
