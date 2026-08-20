.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;
.super Landroid/os/Binder;
.source "IMultimediaSessionService.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaSessionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addEventListener2:I = 0xb

.field static final TRANSACTION_addEventListener3:I = 0xd

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getMessagingSession:I = 0x6

.field static final TRANSACTION_getMessagingSessions:I = 0x5

.field static final TRANSACTION_getStreamingSession:I = 0x9

.field static final TRANSACTION_getStreamingSessions:I = 0x8

.field static final TRANSACTION_initiateMessagingSession:I = 0x7

.field static final TRANSACTION_initiateStreamingSession:I = 0xa

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeEventListener2:I = 0xc

.field static final TRANSACTION_removeEventListener3:I = 0xe

.field static final TRANSACTION_sendInstantMultimediaMessage:I = 0xf

.field static final TRANSACTION_setInactivityTimeout:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaSessionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 97
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 101
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_d
    packed-switch p1, :pswitch_data_158

    .line 113
    packed-switch p1, :pswitch_data_15e

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 109
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 269
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 270
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->setInactivityTimeout(J)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_157

    .line 254
    .end local v2    # "_arg0":J
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 258
    .local v3, "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 260
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_157

    .line 245
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_157

    .line 236
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v2

    .line 237
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_157

    .line 227
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v2

    .line 228
    .local v2, "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto/16 :goto_157

    .line 218
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v2

    .line 219
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto/16 :goto_157

    .line 206
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 209
    .restart local v3    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v4

    .line 211
    .local v4, "_result":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 213
    goto/16 :goto_157

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v4    # "_result":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v3

    .line 199
    .local v3, "_result":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 201
    goto/16 :goto_157

    .line 186
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getStreamingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 189
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 191
    goto/16 :goto_157

    .line 170
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 174
    .local v3, "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v6

    .line 179
    .local v6, "_result":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 181
    goto :goto_157

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v4    # "_arg2":[Ljava/lang/String;
    .end local v5    # "_arg3":[Ljava/lang/String;
    .end local v6    # "_result":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v3

    .line 163
    .local v3, "_result":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 165
    goto :goto_157

    .line 150
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getMessagingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 153
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 155
    goto :goto_157

    .line 142
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_11d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    move-result-object v2

    .line 143
    .local v2, "_result":Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 145
    goto :goto_157

    .line 134
    .end local v2    # "_result":Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_157

    .line 125
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 126
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    goto :goto_157

    .line 117
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_14c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 118
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    nop

    .line 280
    .end local v2    # "_result":Z
    :goto_157
    return v1

    :pswitch_data_158
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_14c
        :pswitch_13a
        :pswitch_128
        :pswitch_11d
        :pswitch_10b
        :pswitch_f9
        :pswitch_d7
        :pswitch_c4
        :pswitch_b1
        :pswitch_96
        :pswitch_83
        :pswitch_70
        :pswitch_5d
        :pswitch_4a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
