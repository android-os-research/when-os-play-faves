.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;
.super Landroid/os/Binder;
.source "ISmartcardService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getReader:I = 0x2

.field static final TRANSACTION_getReaders:I = 0x1

.field static final TRANSACTION_isNfcEventAllowed:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardService"

    .line 64
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_14

    const v4, 0xffffff

    if-gt v0, v4, :cond_14

    .line 65
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 64
    :cond_14
    move-object/from16 v4, p2

    .line 67
    :goto_16
    packed-switch v0, :pswitch_data_80

    .line 75
    packed-switch v0, :pswitch_data_86

    .line 116
    move-object/from16 v7, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 71
    :pswitch_23
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v3

    .line 99
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 103
    .local v12, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v14

    .line 107
    .local v14, "_arg3":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v5, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    move-object v15, v5

    .line 108
    .local v15, "_arg4":Lorg/simalliance/openmobileapi/service/SmartcardError;
    move-object/from16 v5, p0

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-virtual/range {v5 .. v10}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z

    move-result-object v5

    .line 109
    .local v5, "_result":[Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 111
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v1, v15, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 112
    move-object/from16 v7, p0

    goto :goto_7e

    .line 87
    .end local v5    # "_result":[Z
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":[B
    .end local v13    # "_arg2":[Ljava/lang/String;
    .end local v14    # "_arg3":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v15    # "_arg4":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "_arg0":Ljava/lang/String;
    new-instance v6, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v6}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 90
    .local v6, "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v8

    .line 91
    .local v8, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 93
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v1, v6, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 94
    goto :goto_7e

    .line 79
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v8    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :pswitch_71
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getReaders()[Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 82
    nop

    .line 119
    .end local v5    # "_result":[Ljava/lang/String;
    :goto_7e
    return v3

    nop

    :pswitch_data_80
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_71
        :pswitch_58
        :pswitch_27
    .end packed-switch
.end method
