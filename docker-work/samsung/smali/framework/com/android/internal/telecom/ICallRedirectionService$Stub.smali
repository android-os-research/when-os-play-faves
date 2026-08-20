.class public abstract Lcom/android/internal/telecom/ICallRedirectionService$Stub;
.super Landroid/os/Binder;
.source "ICallRedirectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallRedirectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallRedirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallRedirectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyTimeout:I = 0x2

.field static final blacklist TRANSACTION_placeCall:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.android.internal.telecom.ICallRedirectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallRedirectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallRedirectionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallRedirectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallRedirectionService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallRedirectionService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallRedirectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallRedirectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_e

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string/jumbo v0, "notifyTimeout"

    return-object v0

    .line 62
    :pswitch_9
    const-string/jumbo v0, "placeCall"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 77
    invoke-static {p1}, Lcom/android/internal/telecom/ICallRedirectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const-string v0, "com.android.internal.telecom.ICallRedirectionService"

    .line 82
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    packed-switch p1, :pswitch_data_44

    .line 93
    packed-switch p1, :pswitch_data_4a

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 89
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 111
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallRedirectionService$Stub;->notifyTimeout()V

    .line 112
    goto :goto_43

    .line 98
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallRedirectionAdapter;

    move-result-object v2

    .line 100
    .local v2, "_arg0":Lcom/android/internal/telecom/ICallRedirectionAdapter;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 102
    .local v3, "_arg1":Landroid/net/Uri;
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 104
    .local v4, "_arg2":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 105
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/ICallRedirectionService$Stub;->placeCall(Lcom/android/internal/telecom/ICallRedirectionAdapter;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 107
    nop

    .line 119
    .end local v2    # "_arg0":Lcom/android/internal/telecom/ICallRedirectionAdapter;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "_arg3":Z
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
