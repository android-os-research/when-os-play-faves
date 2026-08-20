.class public abstract Landroid/view/IWindowFocusObserver$Stub;
.super Landroid/os/Binder;
.source "IWindowFocusObserver.java"

# interfaces
.implements Landroid/view/IWindowFocusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowFocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowFocusObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowFocusObserver"

.field static final greylist-max-o TRANSACTION_focusGained:I = 0x1

.field static final greylist-max-o TRANSACTION_focusLost:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.view.IWindowFocusObserver"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowFocusObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IWindowFocusObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "android.view.IWindowFocusObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowFocusObserver;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowFocusObserver;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Landroid/view/IWindowFocusObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowFocusObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 52
    packed-switch p0, :pswitch_data_c

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 60
    :pswitch_5
    const-string v0, "focusLost"

    return-object v0

    .line 56
    :pswitch_8
    const-string v0, "focusGained"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 71
    invoke-static {p1}, Landroid/view/IWindowFocusObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "android.view.IWindowFocusObserver"

    .line 76
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_d
    packed-switch p1, :pswitch_data_3a

    .line 87
    packed-switch p1, :pswitch_data_40

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 101
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 102
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2}, Landroid/view/IWindowFocusObserver$Stub;->focusLost(Landroid/os/IBinder;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_38

    .line 92
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 93
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2}, Landroid/view/IWindowFocusObserver$Stub;->focusGained(Landroid/os/IBinder;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    nop

    .line 112
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_38
    return v1

    nop

    :pswitch_data_3a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
