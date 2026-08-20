.class public abstract Landroid/app/ambientcontext/IAmbientContextManager$Stub;
.super Landroid/os/Binder;
.source "IAmbientContextManager.java"

# interfaces
.implements Landroid/app/ambientcontext/IAmbientContextManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ambientcontext/IAmbientContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/IAmbientContextManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_queryServiceStatus:I = 0x3

.field static final blacklist TRANSACTION_registerObserver:I = 0x1

.field static final blacklist TRANSACTION_startConsentActivity:I = 0x4

.field static final blacklist TRANSACTION_unregisterObserver:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.app.ambientcontext.IAmbientContextManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ambientcontext/IAmbientContextManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.app.ambientcontext.IAmbientContextManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ambientcontext/IAmbientContextManager;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/app/ambientcontext/IAmbientContextManager;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/app/ambientcontext/IAmbientContextManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_16

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "startConsentActivity"

    return-object v0

    .line 74
    :pswitch_9
    const-string/jumbo v0, "queryServiceStatus"

    return-object v0

    .line 70
    :pswitch_d
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 66
    :pswitch_11
    const-string/jumbo v0, "registerObserver"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 248
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-string v0, "android.app.ambientcontext.IAmbientContextManager"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_7a

    .line 105
    packed-switch p1, :pswitch_data_80

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 145
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 147
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->startConsentActivity([ILjava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_78

    .line 132
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 137
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_78

    .line 123
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->unregisterObserver(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_78

    .line 110
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_56
    sget-object v2, Landroid/app/ambientcontext/AmbientContextEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 112
    .local v2, "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 114
    .local v3, "_arg1":Landroid/app/PendingIntent;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 115
    .restart local v4    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    nop

    .line 158
    .end local v2    # "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :goto_78
    return v1

    nop

    :pswitch_data_7a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_56
        :pswitch_48
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
