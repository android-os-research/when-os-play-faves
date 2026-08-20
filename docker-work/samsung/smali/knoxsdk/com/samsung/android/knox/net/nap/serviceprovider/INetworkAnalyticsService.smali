.class public interface abstract Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
.super Ljava/lang/Object;
.source "INetworkAnalyticsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;,
        Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.nap.serviceprovider.INetworkAnalyticsService"


# virtual methods
.method public abstract greylist onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onDeactivateProfile(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
