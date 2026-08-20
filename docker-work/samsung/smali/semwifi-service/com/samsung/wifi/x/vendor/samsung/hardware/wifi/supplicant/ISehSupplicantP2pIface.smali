.class public interface abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;
.super Ljava/lang/Object;
.source "ISehSupplicantP2pIface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Stub;,
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "72b0193a7f92a79bcf2c7aa6415ee61b1579065d"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "vendor$samsung$hardware$wifi$supplicant$ISehSupplicantP2pIface"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNoa(Ljava/lang/String;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNoaBandwidth(Ljava/lang/String;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startListenOffloading(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopListenOffloading()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
