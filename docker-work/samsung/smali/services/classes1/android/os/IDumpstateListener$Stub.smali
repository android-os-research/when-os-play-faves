.class public abstract Landroid/os/IDumpstateListener$Stub;
.super Landroid/os/Binder;
.source "IDumpstateListener.java"

# interfaces
.implements Landroid/os/IDumpstateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onError:I = 0x2

.field public static final TRANSACTION_onFinished:I = 0x3

.field public static final TRANSACTION_onProgress:I = 0x1

.field public static final TRANSACTION_onScreenshotTaken:I = 0x4

.field public static final TRANSACTION_onUiIntensiveBugreportDumpsFinished:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IDumpstateListener"

    .line 53
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.os.IDumpstateListener"

    .line 64
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 65
    instance-of v1, v0, Landroid/os/IDumpstateListener;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/os/IDumpstateListener;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/os/IDumpstateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDumpstateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "android.os.IDumpstateListener"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 78
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4e

    if-eq p1, v0, :cond_43

    const/4 v1, 0x2

    if-eq p1, v1, :cond_38

    const/4 v1, 0x3

    if-eq p1, v1, :cond_34

    const/4 v1, 0x4

    if-eq p1, v1, :cond_29

    const/4 v1, 0x5

    if-eq p1, v1, :cond_25

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 121
    :cond_25
    invoke-interface {p0}, Landroid/os/IDumpstateListener;->onUiIntensiveBugreportDumpsFinished()V

    goto :goto_4d

    .line 114
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onScreenshotTaken(Z)V

    goto :goto_4d

    .line 108
    :cond_34
    invoke-interface {p0}, Landroid/os/IDumpstateListener;->onFinished()V

    goto :goto_4d

    .line 101
    :cond_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onError(I)V

    goto :goto_4d

    .line 93
    :cond_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onProgress(I)V

    :goto_4d
    return v0

    .line 84
    :cond_4e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
