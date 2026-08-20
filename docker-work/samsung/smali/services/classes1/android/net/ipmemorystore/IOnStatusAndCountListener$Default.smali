.class public Landroid/net/ipmemorystore/IOnStatusAndCountListener$Default;
.super Ljava/lang/Object;
.source "IOnStatusAndCountListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnStatusAndCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnStatusAndCountListener;
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

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
