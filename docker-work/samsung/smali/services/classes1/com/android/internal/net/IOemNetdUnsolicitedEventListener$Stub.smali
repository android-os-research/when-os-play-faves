.class public abstract Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "IOemNetdUnsolicitedEventListener.java"

# interfaces
.implements Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onRegistered:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_4
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 42
    instance-of v1, v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    if-eqz v1, :cond_13

    .line 43
    check-cast v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    return-object v0

    .line 45
    :cond_13
    new-instance v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1d

    if-eq p1, v1, :cond_19

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 69
    :cond_19
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;->onRegistered()V

    return v1

    .line 61
    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
