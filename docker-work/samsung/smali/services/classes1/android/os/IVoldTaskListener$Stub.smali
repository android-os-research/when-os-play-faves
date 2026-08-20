.class public abstract Landroid/os/IVoldTaskListener$Stub;
.super Landroid/os/Binder;
.source "IVoldTaskListener.java"

# interfaces
.implements Landroid/os/IVoldTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldTaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldTaskListener"

.field public static final TRANSACTION_onFinished:I = 0x2

.field public static final TRANSACTION_onStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IVoldTaskListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.os.IVoldTaskListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 40
    instance-of v1, v0, Landroid/os/IVoldTaskListener;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Landroid/os/IVoldTaskListener;

    return-object v0

    .line 43
    :cond_13
    new-instance v0, Landroid/os/IVoldTaskListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVoldTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "android.os.IVoldTaskListener"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_42

    if-eq p1, v0, :cond_2f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 78
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 80
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PersistableBundle;

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V

    goto :goto_41

    .line 68
    :cond_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 70
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PersistableBundle;

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 72
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V

    :goto_41
    return v0

    .line 59
    :cond_42
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
