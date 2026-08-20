.class public final Lcom/android/server/midi/MidiService$DeviceConnection;
.super Ljava/lang/Object;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceConnection"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MidiService.DeviceConnection"


# instance fields
.field public mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

.field public final mClient:Lcom/android/server/midi/MidiService$Client;

.field public final mDevice:Lcom/android/server/midi/MidiService$Device;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 5

    .line 620
    iput-object p1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    .line 621
    iput-object p2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 622
    iput-object p3, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    .line 623
    iput-object p4, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    return-void
.end method


# virtual methods
.method public getClient()Lcom/android/server/midi/MidiService$Client;
    .registers 1

    .line 631
    iget-object p0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    return-object p0
.end method

.method public getDevice()Lcom/android/server/midi/MidiService$Device;
    .registers 1

    .line 627
    iget-object p0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 1

    .line 635
    iget-object p0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 5

    const-string v0, "MidiService.DeviceConnection"

    const-string/jumbo v1, "notifyClient"

    .line 639
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    if-nez p1, :cond_11

    move-object v2, v1

    goto :goto_13

    .line 643
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    :goto_13
    invoke-interface {v0, p1, v2}, Landroid/media/midi/IMidiDeviceOpenCallback;->onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_16

    .line 647
    :catch_16
    iput-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_26
    const-string/jumbo p0, "null"

    :goto_29
    return-object p0
.end method
