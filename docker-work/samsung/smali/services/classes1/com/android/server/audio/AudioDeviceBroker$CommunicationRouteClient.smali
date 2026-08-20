.class public Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommunicationRouteClient"
.end annotation


# instance fields
.field public final mCb:Landroid/os/IBinder;

.field public mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;)V
    .registers 5

    .line 1928
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1929
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 1930
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPid:I

    .line 1931
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 1955
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 1

    .line 1959
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    return-object p0
.end method

.method public getDevice()Landroid/media/AudioDeviceAttributes;
    .registers 1

    .line 1967
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 1963
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPid:I

    return p0
.end method

.method public registerDeathRecipient()Z
    .registers 4

    const/4 v0, 0x0

    .line 1937
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    const/4 v0, 0x1

    goto :goto_25

    .line 1940
    :catch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommunicationRouteClient could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " binder death"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return v0
.end method

.method public requestsBluetoothSco()Z
    .registers 2

    .line 1971
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_d

    .line 1972
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public requestsSpeakerphone()Z
    .registers 2

    .line 1977
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_d

    .line 1978
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public unregisterDeathRecipient()V
    .registers 3

    .line 1947
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    const-string p0, "AS.AudioDeviceBroker"

    const-string v0, "CommunicationRouteClient could not not unregistered to binder"

    .line 1949
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method
