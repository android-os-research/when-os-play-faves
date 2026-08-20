.class public abstract Landroid/service/attention/IAttentionCallback$Stub;
.super Landroid/os/Binder;
.source "IAttentionCallback.java"

# interfaces
.implements Landroid/service/attention/IAttentionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/IAttentionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/attention/IAttentionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFailure:I = 0x2

.field static final blacklist TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "android.service.attention.IAttentionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/attention/IAttentionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_4
    const-string v0, "android.service.attention.IAttentionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/attention/IAttentionCallback;

    if-eqz v1, :cond_14

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/service/attention/IAttentionCallback;

    return-object v1

    .line 47
    :cond_14
    new-instance v1, Landroid/service/attention/IAttentionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/attention/IAttentionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_e

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 64
    :pswitch_5
    const-string/jumbo v0, "onFailure"

    return-object v0

    .line 60
    :pswitch_9
    const-string/jumbo v0, "onSuccess"

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

    .line 51
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 75
    invoke-static {p1}, Landroid/service/attention/IAttentionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 79
    const-string v0, "android.service.attention.IAttentionCallback"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    packed-switch p1, :pswitch_data_38

    .line 91
    packed-switch p1, :pswitch_data_3e

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 106
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Landroid/service/attention/IAttentionCallback$Stub;->onFailure(I)V

    .line 109
    goto :goto_36

    .line 96
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 99
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/attention/IAttentionCallback$Stub;->onSuccess(IJ)V

    .line 101
    nop

    .line 116
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :goto_36
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
