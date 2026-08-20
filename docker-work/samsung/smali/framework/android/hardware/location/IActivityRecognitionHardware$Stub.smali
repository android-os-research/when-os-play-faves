.class public abstract Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.super Landroid/os/Binder;
.source "IActivityRecognitionHardware.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IActivityRecognitionHardware"

.field static final greylist-max-o TRANSACTION_disableActivityEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_enableActivityEvent:I = 0x5

.field static final greylist-max-o TRANSACTION_flush:I = 0x7

.field static final greylist-max-o TRANSACTION_getSupportedActivities:I = 0x1

.field static final greylist-max-o TRANSACTION_isActivitySupported:I = 0x2

.field static final greylist-max-o TRANSACTION_registerSink:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterSink:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardware;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IActivityRecognitionHardware;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IActivityRecognitionHardware;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_1c

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 114
    :pswitch_5
    const-string v0, "flush"

    return-object v0

    .line 110
    :pswitch_8
    const-string v0, "disableActivityEvent"

    return-object v0

    .line 106
    :pswitch_b
    const-string v0, "enableActivityEvent"

    return-object v0

    .line 102
    :pswitch_e
    const-string/jumbo v0, "unregisterSink"

    return-object v0

    .line 98
    :pswitch_12
    const-string v0, "registerSink"

    return-object v0

    .line 94
    :pswitch_15
    const-string v0, "isActivitySupported"

    return-object v0

    .line 90
    :pswitch_18
    const-string v0, "getSupportedActivities"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 381
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    .line 130
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_d
    packed-switch p1, :pswitch_data_a2

    .line 141
    packed-switch p1, :pswitch_data_a8

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    .line 208
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->flush()Z

    move-result v2

    .line 209
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    goto/16 :goto_a1

    .line 197
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->disableActivityEvent(Ljava/lang/String;I)Z

    move-result v4

    .line 202
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    goto :goto_a1

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 188
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->enableActivityEvent(Ljava/lang/String;IJ)Z

    move-result v6

    .line 190
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_a1

    .line 173
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Z
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result v3

    .line 176
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    goto :goto_a1

    .line 163
    .end local v2    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .end local v3    # "_result":Z
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object v2

    .line 164
    .restart local v2    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result v3

    .line 166
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    goto :goto_a1

    .line 153
    .end local v2    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .end local v3    # "_result":Z
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->isActivitySupported(Ljava/lang/String;)Z

    move-result v3

    .line 156
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    goto :goto_a1

    .line 145
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_96
    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getSupportedActivities()[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 148
    nop

    .line 218
    .end local v2    # "_result":[Ljava/lang/String;
    :goto_a1
    return v1

    :pswitch_data_a2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_96
        :pswitch_84
        :pswitch_6e
        :pswitch_58
        :pswitch_3e
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
