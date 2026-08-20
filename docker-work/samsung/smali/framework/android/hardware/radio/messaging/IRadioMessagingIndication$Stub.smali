.class public abstract Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioMessagingIndication.java"

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessagingIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessagingIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cdmaNewSms:I = 0x1

.field static final blacklist TRANSACTION_cdmaRuimSmsStorageFull:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_newBroadcastSms:I = 0x3

.field static final blacklist TRANSACTION_newSms:I = 0x4

.field static final blacklist TRANSACTION_newSmsOnSim:I = 0x5

.field static final blacklist TRANSACTION_newSmsStatusReport:I = 0x6

.field static final blacklist TRANSACTION_simSmsStorageFull:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/messaging/IRadioMessagingIndication;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_d
    sparse-switch p1, :sswitch_data_98

    .line 106
    packed-switch p1, :pswitch_data_a6

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 95
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v1

    .line 101
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 169
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->simSmsStorageFull(I)V

    .line 172
    goto :goto_97

    .line 159
    .end local v2    # "_arg0":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 162
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newSmsStatusReport(I[B)V

    .line 164
    goto :goto_97

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newSmsOnSim(II)V

    .line 154
    goto :goto_97

    .line 139
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 142
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newSms(I[B)V

    .line 144
    goto :goto_97

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 132
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->newBroadcastSms(I[B)V

    .line 134
    goto :goto_97

    .line 121
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 124
    goto :goto_97

    .line 111
    .end local v2    # "_arg0":I
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 114
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 116
    nop

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :goto_97
    return v1

    :sswitch_data_98
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_84
        :pswitch_79
        :pswitch_6a
        :pswitch_5b
        :pswitch_4c
        :pswitch_3d
        :pswitch_32
    .end packed-switch
.end method
