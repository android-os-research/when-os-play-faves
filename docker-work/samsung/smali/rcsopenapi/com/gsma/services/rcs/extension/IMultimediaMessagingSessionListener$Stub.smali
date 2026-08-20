.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;
.super Landroid/os/Binder;
.source "IMultimediaMessagingSessionListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onMessageReceived:I = 0x2

.field static final TRANSACTION_onMessagesFlushed:I = 0x3

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 54
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_d
    packed-switch p1, :pswitch_data_78

    .line 66
    packed-switch p1, :pswitch_data_7e

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 101
    :pswitch_1c
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 103
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    goto :goto_76

    .line 86
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_32
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 88
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 92
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    goto :goto_76

    .line 71
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_50
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 73
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    .line 77
    .local v4, "_arg2":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    sget-object v5, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 78
    .local v5, "_arg3":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 79
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    nop

    .line 114
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .end local v5    # "_arg3":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_50
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
