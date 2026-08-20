.class public abstract Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsRegistrationListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onRedirectIncomingCallIndication:I = 0x2

.field static final blacklist TRANSACTION_onRegistrationErrorCodeIndication:I = 0x3

.field static final blacklist TRANSACTION_onRegistrationImsStateChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.mediatek.ims.internal.IMtkImsRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsRegistrationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
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

    .line 70
    const-string v0, "com.mediatek.ims.internal.IMtkImsRegistrationListener"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_d
    packed-switch p1, :pswitch_data_60

    .line 82
    packed-switch p1, :pswitch_data_66

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 113
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->onRegistrationErrorCodeIndication(I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_5e

    .line 102
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->onRedirectIncomingCallIndication(I[Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_5e

    .line 87
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    .line 91
    .local v3, "_arg1":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .local v4, "_arg2":I
    sget-object v5, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 94
    .local v5, "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    nop

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/net/Uri;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
