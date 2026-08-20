.class public interface abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;
.super Ljava/lang/Object;
.source "ISupplicant.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub;,
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final EXT_RADIO_WORK_TIMEOUT_IN_SECS:I = 0xa

.field public static final HASH:Ljava/lang/String; = "5b8bcab6b43177dffdec5873e84205b04757cc9d"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$hardware$wifi$supplicant$ISupplicant"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 570
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract addStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isDebugShowKeysEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isDebugShowTimestampEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract listInterfaces()[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeInterface(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setConcurrencyPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDebugParams(IZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract terminate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
