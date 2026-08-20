.class public interface abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;
.super Ljava/lang/Object;
.source "ISupplicantStaNetworkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub;,
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "5b8bcab6b43177dffdec5873e84205b04757cc9d"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android$hardware$wifi$supplicant$ISupplicantStaNetworkCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 285
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

.method public abstract onNetworkEapIdentityRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNetworkEapSimGsmAuthRequest(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimGsmAuthParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNetworkEapSimUmtsAuthRequest(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimUmtsAuthParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServerCertificateAvailable(I[B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTransitionDisable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
