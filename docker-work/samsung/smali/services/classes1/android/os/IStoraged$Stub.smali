.class public abstract Landroid/os/IStoraged$Stub;
.super Landroid/os/Binder;
.source "IStoraged.java"

# interfaces
.implements Landroid/os/IStoraged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStoraged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStoraged$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IStoraged"

.field public static final TRANSACTION_getRecentPerf:I = 0x3

.field public static final TRANSACTION_onUserStarted:I = 0x1

.field public static final TRANSACTION_onUserStopped:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IStoraged"

    .line 32
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.os.IStoraged"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 44
    instance-of v1, v0, Landroid/os/IStoraged;

    if-eqz v1, :cond_13

    .line 45
    check-cast v0, Landroid/os/IStoraged;

    return-object v0

    .line 47
    :cond_13
    new-instance v0, Landroid/os/IStoraged$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IStoraged$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    const-string v1, "android.os.IStoraged"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_46

    if-eq p1, v0, :cond_38

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1f

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 89
    :cond_1f
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result p0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 81
    :cond_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-interface {p0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_45

    .line 72
    :cond_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 74
    invoke-interface {p0, p1}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_45
    return v0

    .line 63
    :cond_46
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
