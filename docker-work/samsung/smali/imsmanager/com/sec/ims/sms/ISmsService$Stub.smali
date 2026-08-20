.class public abstract Lcom/sec/ims/sms/ISmsService$Stub;
.super Landroid/os/Binder;
.source "ISmsService.java"

# interfaces
.implements Lcom/sec/ims/sms/ISmsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/sms/ISmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/sms/ISmsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deRegisterForSMSStateChange:I = 0x2

.field static final TRANSACTION_getSmsFallback:I = 0x3

.field static final TRANSACTION_registerForSMSStateChange:I = 0x1

.field static final TRANSACTION_sendDeliverReport:I = 0x6

.field static final TRANSACTION_sendRPSMMA:I = 0x7

.field static final TRANSACTION_sendSMSOverIMS:I = 0x4

.field static final TRANSACTION_sendSMSResponse:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.sec.ims.sms.ISmsService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/sms/ISmsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/sms/ISmsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "com.sec.ims.sms.ISmsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/sms/ISmsService;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/sms/ISmsService;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.sec.ims.sms.ISmsService"

    .line 67
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 68
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 67
    :cond_16
    move-object/from16 v11, p2

    .line 70
    :goto_18
    packed-switch v7, :pswitch_data_c4

    .line 78
    packed-switch v7, :pswitch_data_ca

    .line 164
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 74
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v10

    .line 154
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {v6, v0, v1}, Lcom/sec/ims/sms/ISmsService$Stub;->sendRPSMMA(ILjava/lang/String;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto/16 :goto_c3

    .line 143
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 146
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {v6, v0, v1}, Lcom/sec/ims/sms/ISmsService$Stub;->sendDeliverReport(I[B)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto/16 :goto_c3

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 134
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {v6, v0, v1}, Lcom/sec/ims/sms/ISmsService$Stub;->sendSMSResponse(ZI)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_c3

    .line 115
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 117
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 119
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 124
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ims/sms/ISmsService$Stub;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;I)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_c3

    .line 105
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {v6, v0}, Lcom/sec/ims/sms/ISmsService$Stub;->getSmsFallback(I)Z

    move-result v1

    .line 108
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    goto :goto_c3

    .line 94
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/sms/ISmsServiceEventListener;

    move-result-object v1

    .line 97
    .local v1, "_arg1":Lcom/sec/ims/sms/ISmsServiceEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {v6, v0, v1}, Lcom/sec/ims/sms/ISmsService$Stub;->deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    goto :goto_c3

    .line 83
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/ims/sms/ISmsServiceEventListener;
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/sms/ISmsServiceEventListener;

    move-result-object v1

    .line 86
    .restart local v1    # "_arg1":Lcom/sec/ims/sms/ISmsServiceEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {v6, v0, v1}, Lcom/sec/ims/sms/ISmsService$Stub;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    nop

    .line 167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/sec/ims/sms/ISmsServiceEventListener;
    :goto_c3
    return v10

    :pswitch_data_c4
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_97
        :pswitch_85
        :pswitch_5f
        :pswitch_4d
        :pswitch_3a
        :pswitch_27
    .end packed-switch
.end method
