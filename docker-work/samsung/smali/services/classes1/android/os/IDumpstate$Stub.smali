.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_cancelBugreport:I = 0x2

.field public static final TRANSACTION_startBugreport:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IDumpstate"

    .line 59
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.os.IDumpstate"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 71
    instance-of v1, v0, Landroid/os/IDumpstate;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Landroid/os/IDumpstate;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Landroid/os/IDumpstate$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDumpstate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.os.IDumpstate"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 84
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_59

    if-eq p1, v0, :cond_2e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 120
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-interface {p0, p1, p4}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_58

    .line 99
    :cond_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v7

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 113
    invoke-interface/range {v1 .. v8}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_58
    return v0

    .line 90
    :cond_59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
