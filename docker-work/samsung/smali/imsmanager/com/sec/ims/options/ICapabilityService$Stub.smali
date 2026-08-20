.class public abstract Lcom/sec/ims/options/ICapabilityService$Stub;
.super Landroid/os/Binder;
.source "ICapabilityService.java"

# interfaces
.implements Lcom/sec/ims/options/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/ICapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/options/ICapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addFakeCapabilityInfo:I = 0xd

.field static final TRANSACTION_deRegisterService:I = 0x11

.field static final TRANSACTION_getAllCapabilities:I = 0x9

.field static final TRANSACTION_getCapabilities:I = 0x2

.field static final TRANSACTION_getCapabilitiesByContactId:I = 0x8

.field static final TRANSACTION_getCapabilitiesById:I = 0x3

.field static final TRANSACTION_getCapabilitiesByNumber:I = 0x4

.field static final TRANSACTION_getCapabilitiesWithDelay:I = 0x5

.field static final TRANSACTION_getCapabilitiesWithFeature:I = 0x6

.field static final TRANSACTION_getCapabilitiesWithFeatureByUriList:I = 0x7

.field static final TRANSACTION_getOwnCapabilities:I = 0x1

.field static final TRANSACTION_isOwnInfoPublished:I = 0xf

.field static final TRANSACTION_registerListener:I = 0xa

.field static final TRANSACTION_registerListenerWithToken:I = 0xb

.field static final TRANSACTION_registerService:I = 0x10

.field static final TRANSACTION_setUserActivity:I = 0xe

.field static final TRANSACTION_unregisterListener:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "com.sec.ims.options.ICapabilityService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/options/ICapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    const-string v0, "com.sec.ims.options.ICapabilityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/options/ICapabilityService;

    if-eqz v1, :cond_14

    .line 97
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/options/ICapabilityService;

    return-object v1

    .line 99
    :cond_14
    new-instance v1, Lcom/sec/ims/options/ICapabilityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/options/ICapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
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

    .line 107
    const-string v0, "com.sec.ims.options.ICapabilityService"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    packed-switch p1, :pswitch_data_1a4

    .line 119
    packed-switch p1, :pswitch_data_1aa

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 320
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/ICapabilityService$Stub;->deRegisterService(Ljava/util/List;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_1a3

    .line 309
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/ICapabilityService$Stub;->registerService(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_1a3

    .line 301
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual {p0}, Lcom/sec/ims/options/ICapabilityService$Stub;->isOwnInfoPublished()Z

    move-result v2

    .line 302
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 304
    goto/16 :goto_1a3

    .line 291
    .end local v2    # "_result":Z
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 293
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/ICapabilityService$Stub;->setUserActivity(ZI)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_1a3

    .line 278
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_5d
    sget-object v2, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 280
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 282
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/options/ICapabilityService$Stub;->addFakeCapabilityInfo(Ljava/util/List;ZI)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto/16 :goto_1a3

    .line 267
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/ICapabilityService$Stub;->unregisterListener(Ljava/lang/String;I)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_1a3

    .line 254
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityServiceEventListener;

    move-result-object v2

    .line 256
    .local v2, "_arg0":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 259
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/options/ICapabilityService$Stub;->registerListenerWithToken(Lcom/sec/ims/options/ICapabilityServiceEventListener;Ljava/lang/String;I)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_1a3

    .line 242
    .end local v2    # "_arg0":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityServiceEventListener;

    move-result-object v2

    .line 244
    .restart local v2    # "_arg0":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/ICapabilityService$Stub;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    goto/16 :goto_1a3

    .line 232
    .end local v2    # "_arg0":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/ICapabilityService$Stub;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    .line 235
    .local v3, "_result":[Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 237
    goto/16 :goto_1a3

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lcom/sec/ims/options/Capabilities;
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 225
    .local v5, "_result":[Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 227
    goto/16 :goto_1a3

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[Lcom/sec/ims/options/Capabilities;
    :pswitch_ed
    sget-object v2, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 204
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 209
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 211
    .local v6, "_result":[Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 213
    goto/16 :goto_1a3

    .line 188
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":[Lcom/sec/ims/options/Capabilities;
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 195
    .local v5, "_result":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    goto/16 :goto_1a3

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/sec/ims/options/Capabilities;
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 179
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 181
    .restart local v5    # "_result":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 183
    goto :goto_1a3

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/sec/ims/options/Capabilities;
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 167
    .restart local v5    # "_result":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    goto :goto_1a3

    .line 148
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/sec/ims/options/Capabilities;
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 151
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 153
    .local v4, "_result":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    goto :goto_1a3

    .line 134
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/sec/ims/options/Capabilities;
    :pswitch_173
    sget-object v2, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 136
    .local v2, "_arg0":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/options/ICapabilityService$Stub;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 141
    .restart local v5    # "_result":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    goto :goto_1a3

    .line 124
    .end local v2    # "_arg0":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/sec/ims/options/Capabilities;
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/ICapabilityService$Stub;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    .line 127
    .local v3, "_result":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    nop

    .line 331
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/sec/ims/options/Capabilities;
    :goto_1a3
    return v1

    :pswitch_data_1a4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_191
        :pswitch_173
        :pswitch_15d
        :pswitch_143
        :pswitch_129
        :pswitch_10e
        :pswitch_ed
        :pswitch_d2
        :pswitch_bf
        :pswitch_a4
        :pswitch_89
        :pswitch_76
        :pswitch_5d
        :pswitch_4a
        :pswitch_3e
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
