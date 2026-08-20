.class public abstract Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "ISmsServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/sms/ISmsServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/sms/ISmsServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/sms/ISmsServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onReceiveIncomingSMS:I = 0x1

.field static final TRANSACTION_onReceiveSMSAck:I = 0x2

.field static final TRANSACTION_onReceiveSMSDeliveryReportAck:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.sec.ims.sms.ISmsServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/sms/ISmsServiceEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    const-string v0, "com.sec.ims.sms.ISmsServiceEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    if-eqz v1, :cond_14

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/sms/ISmsServiceEventListener;

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
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

    .line 53
    move-object/from16 v6, p0

    move/from16 v7, p1

    const-string v8, "com.sec.ims.sms.ISmsServiceEventListener"

    .line 54
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v7, v9, :cond_14

    const v0, 0xffffff

    if-gt v7, v0, :cond_14

    .line 55
    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 54
    :cond_14
    move-object/from16 v10, p2

    .line 57
    :goto_16
    packed-switch v7, :pswitch_data_7c

    .line 65
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_82

    .line 112
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 61
    :pswitch_23
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v9

    .line 100
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;->onReceiveSMSDeliveryReportAck(III)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    goto :goto_7b

    .line 83
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 85
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 87
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 89
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 91
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 92
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;->onReceiveSMSAck(IILjava/lang/String;[BI)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    goto :goto_7b

    .line 70
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":I
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 75
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 76
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;->onReceiveIncomingSMS(ILjava/lang/String;[B)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    nop

    .line 115
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    :goto_7b
    return v9

    :pswitch_data_7c
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_65
        :pswitch_3f
        :pswitch_29
    .end packed-switch
.end method
