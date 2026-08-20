.class public abstract Lcom/skms/android/agent/CcmInterface$Stub;
.super Landroid/os/Binder;
.source "CcmInterface.java"

# interfaces
.implements Lcom/skms/android/agent/CcmInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skms/android/agent/CcmInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skms/android/agent/CcmInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_handleCcm:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.skms.android.agent.CcmInterface"

    .line 26
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/skms/android/agent/CcmInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.skms.android.agent.CcmInterface"

    .line 37
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 38
    instance-of v1, v0, Lcom/skms/android/agent/CcmInterface;

    if-eqz v1, :cond_13

    .line 39
    check-cast v0, Lcom/skms/android/agent/CcmInterface;

    return-object v0

    .line 41
    :cond_13
    new-instance v0, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.skms.android.agent.CcmInterface"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2f

    if-eq p1, v0, :cond_19

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 66
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 70
    invoke-interface {p0, p1, p4}, Lcom/skms/android/agent/CcmInterface;->handleCcm([BI)I

    move-result p0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 57
    :cond_2f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
