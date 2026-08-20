.class public Lcom/sec/android/allshare/iface/ISubscriber$Default;
.super Ljava/lang/Object;
.source "ISubscriber.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/ISubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/iface/ISubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getServiceVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist requestCVAsync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z
    .registers 4
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestCVSync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;
    .registers 4
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist subscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z
    .registers 4
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 3
    .param p1, "subscriber"    # Ljava/lang/String;
    .param p2, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method
