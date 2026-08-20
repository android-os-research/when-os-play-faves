.class public abstract Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;
.super Landroid/os/Binder;
.source "IGroupFileTransferListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeleted:I = 0x4

.field static final TRANSACTION_onDeliveryInfoChanged:I = 0x2

.field static final TRANSACTION_onDeliveryInfoChanged1:I = 0x5

.field static final TRANSACTION_onProgressUpdate:I = 0x3

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    .line 61
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_13

    const v0, 0xffffff

    if-gt v8, v0, :cond_13

    .line 62
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    :cond_13
    packed-switch v8, :pswitch_data_ea

    .line 72
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_f0

    .line 151
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 68
    :pswitch_20
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v11

    .line 135
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "_arg1":Ljava/lang/String;
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/gsma/services/rcs/contact/ContactId;

    .line 141
    .local v14, "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 143
    .local v15, "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 144
    .local v16, "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeliveryInfoChanged1(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto/16 :goto_e9

    .line 124
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v15    # "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .end local v16    # "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 127
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {v7, v0, v1}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeleted(Ljava/lang/String;Ljava/util/List;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    goto/16 :goto_e9

    .line 109
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 115
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 116
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_e9

    .line 92
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":J
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "_arg1":Ljava/lang/String;
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/gsma/services/rcs/contact/ContactId;

    .line 98
    .local v14, "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    .line 100
    .local v15, "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 101
    .restart local v16    # "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeliveryInfoChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    goto :goto_e9

    .line 77
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v15    # "_arg3":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .end local v16    # "_arg4":Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;
    :pswitch_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 83
    .local v2, "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 84
    .local v3, "_arg3":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 85
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    nop

    .line 154
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .end local v3    # "_arg3":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    :goto_e9
    return v11

    :pswitch_data_ea
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_91
        :pswitch_70
        :pswitch_5d
        :pswitch_26
    .end packed-switch
.end method
