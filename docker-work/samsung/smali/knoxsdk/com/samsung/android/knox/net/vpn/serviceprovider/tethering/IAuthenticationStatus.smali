.class public interface abstract Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus;
.super Ljava/lang/Object;
.source "IAuthenticationStatus.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus$Stub;,
        Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.vpn.serviceprovider.tethering.IAuthenticationStatus"


# virtual methods
.method public abstract blacklist getStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
