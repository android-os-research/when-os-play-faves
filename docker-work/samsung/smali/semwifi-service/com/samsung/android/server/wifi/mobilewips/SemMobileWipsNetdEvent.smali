.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;
.super Ljava/lang/Object;
.source "SemMobileWipsNetdEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;
    }
.end annotation


# static fields
.field static final NW_EVENT_KEY:Ljava/lang/String; = "network_event"

.field static final NW_RECEIVE_EVENT_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MobileWips::netd"


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private mIsCallbackRegistered:Z

.field private mIsEnabled:Z

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

.field private mNetdThread:Landroid/os/HandlerThread;

.field private mPaused:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetISemMobileWipsCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaused(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/content/Context;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    .line 50
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const-string v0, "connmetrics"

    .line 97
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mContext:Landroid/content/Context;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 100
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "MobileWips::netd"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdThread:Landroid/os/HandlerThread;

    .line 101
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance p1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    return-void
.end method

.method private checkSetNetdEventCallback(Z)Z
    .registers 4

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsCallbackRegistered:Z

    const-string v1, "MobileWips::netd"

    if-ne p1, v0, :cond_21

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Netd event callback registeration ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") not changed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 164
    :cond_21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v0, 0x0

    if-nez p1, :cond_39

    const-string p1, "connmetrics"

    .line 166
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 165
    invoke-static {p1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-nez p1, :cond_39

    const-string p0, "Failed to register callback with IIpConnectivityMetrics."

    .line 169
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return v0
.end method


# virtual methods
.method public getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    return-object p0
.end method

.method public removeMessages(I)V
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)V
    .registers 3

    .line 118
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 119
    iput p1, v0, Landroid/os/Message;->what:I

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .registers 5

    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mNetdEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setNetdEventStatus(I)Z
    .registers 5

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetdEventStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileWips::netd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_46

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNetdEventStatus::wrong value"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 147
    :pswitch_30
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsEnabled:Z

    goto :goto_45

    .line 144
    :pswitch_33
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mIsEnabled:Z

    goto :goto_45

    .line 141
    :pswitch_36
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    goto :goto_45

    .line 138
    :pswitch_39
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->mPaused:Z

    goto :goto_45

    .line 135
    :pswitch_3c
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->checkSetNetdEventCallback(Z)Z

    move-result v2

    goto :goto_45

    .line 132
    :pswitch_41
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->checkSetNetdEventCallback(Z)Z

    move-result v2

    :goto_45
    return v2

    :pswitch_data_46
    .packed-switch 0x2b
        :pswitch_41
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method
