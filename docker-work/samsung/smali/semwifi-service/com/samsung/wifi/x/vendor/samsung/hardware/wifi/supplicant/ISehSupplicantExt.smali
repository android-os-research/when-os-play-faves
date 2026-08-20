.class public interface abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;
.super Ljava/lang/Object;
.source "ISehSupplicantExt.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt$Stub;,
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "72b0193a7f92a79bcf2c7aa6415ee61b1579065d"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "vendor$samsung$hardware$wifi$supplicant$ISehSupplicantExt"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 257
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantExt;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;
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

.method public abstract getP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
