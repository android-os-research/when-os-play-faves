.class public Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Default;
.super Ljava/lang/Object;
.source "IDnsResolverUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onDnsHealthEvent(Landroid/net/resolv/aidl/DnsHealthEventParcel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNat64PrefixEvent(Landroid/net/resolv/aidl/Nat64PrefixEventParcel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onPrivateDnsValidationEvent(Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
