.class public abstract Landroid/gsi/IProgressCallback$Stub;
.super Landroid/os/Binder;
.source "IProgressCallback.java"

# interfaces
.implements Landroid/gsi/IProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IProgressCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.gsi.IProgressCallback"

    .line 37
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.gsi.IProgressCallback"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 49
    instance-of v1, v0, Landroid/gsi/IProgressCallback;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Landroid/gsi/IProgressCallback;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Landroid/gsi/IProgressCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/gsi/IProgressCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.gsi.IProgressCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 62
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2b

    if-eq p1, v0, :cond_19

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 77
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/gsi/IProgressCallback;->onProgress(JJ)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 68
    :cond_2b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
