.class public abstract Lcom/mediatek/common/geofence/IMtkGeofence$Stub;
.super Landroid/os/Binder;
.source "IMtkGeofence.java"

# interfaces
.implements Lcom/mediatek/common/geofence/IMtkGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/geofence/IMtkGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCircularFence:I = 0x1

.field static final blacklist TRANSACTION_pauseGeofence:I = 0x3

.field static final blacklist TRANSACTION_registerForMonitorStateChangeCallback:I = 0x5

.field static final blacklist TRANSACTION_removeGeofence:I = 0x2

.field static final blacklist TRANSACTION_resumeGeofence:I = 0x4

.field static final blacklist TRANSACTION_unregisterForMonitorStateChangeCallback:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/geofence/IMtkGeofence;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/geofence/IMtkGeofence;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/geofence/IMtkGeofence;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 35
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p3

    const-string v12, "com.mediatek.common.geofence.IMtkGeofence"

    .line 69
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_16

    const v0, 0xffffff

    if-gt v14, v0, :cond_16

    .line 70
    move-object/from16 v10, p2

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 69
    :cond_16
    move-object/from16 v10, p2

    .line 72
    :goto_18
    packed-switch v14, :pswitch_data_f4

    .line 80
    packed-switch v14, :pswitch_data_fa

    .line 162
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 76
    :pswitch_23
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v11

    .line 153
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;

    move-result-object v0

    .line 154
    .local v0, "_arg0":Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {v13, v0}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub;->unregisterForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z

    move-result v1

    .line 156
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_f2

    .line 143
    .end local v0    # "_arg0":Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    .end local v1    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {v13, v0}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub;->registerForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z

    move-result v1

    .line 146
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_f2

    .line 131
    .end local v0    # "_arg0":Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    .end local v1    # "_result":Z
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub;->resumeGeofence(II)Z

    move-result v2

    .line 136
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 138
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_f2

    .line 121
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {v13, v0}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub;->pauseGeofence(I)Z

    move-result v1

    .line 124
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto :goto_f2

    .line 111
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {v13, v0}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub;->removeGeofence(I)Z

    move-result v1

    .line 114
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto :goto_f2

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 87
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 89
    .local v17, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 91
    .local v19, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 93
    .local v21, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 95
    .local v23, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 97
    .local v24, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 99
    .local v25, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 101
    .local v26, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/geofence/IMtkGeofenceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/geofence/IMtkGeofenceCallback;

    move-result-object v27

    .line 102
    .local v27, "_arg8":Lcom/mediatek/common/geofence/IMtkGeofenceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v28, v11

    move/from16 v11, v26

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/common/geofence/IMtkGeofence$Stub;->addCircularFence(IDDDIIIILcom/mediatek/common/geofence/IMtkGeofenceCallback;)Z

    move-result v0

    .line 104
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    nop

    .line 165
    .end local v0    # "_result":Z
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":D
    .end local v19    # "_arg2":D
    .end local v21    # "_arg3":D
    .end local v23    # "_arg4":I
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":I
    .end local v26    # "_arg7":I
    .end local v27    # "_arg8":Lcom/mediatek/common/geofence/IMtkGeofenceCallback;
    :goto_f2
    return v28

    nop

    :pswitch_data_f4
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_8e
        :pswitch_78
        :pswitch_5d
        :pswitch_42
        :pswitch_27
    .end packed-switch
.end method
