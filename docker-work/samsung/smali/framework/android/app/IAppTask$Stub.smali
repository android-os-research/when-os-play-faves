.class public abstract Landroid/app/IAppTask$Stub;
.super Landroid/os/Binder;
.source "IAppTask.java"

# interfaces
.implements Landroid/app/IAppTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppTask$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IAppTask"

.field static final greylist-max-o TRANSACTION_finishAndRemoveTask:I = 0x1

.field static final greylist-max-o TRANSACTION_getTaskInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_moveToFront:I = 0x3

.field static final greylist-max-o TRANSACTION_setExcludeFromRecents:I = 0x5

.field static final greylist-max-o TRANSACTION_startActivity:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAppTask$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.app.IAppTask"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IAppTask;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/app/IAppTask;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/app/IAppTask$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAppTask$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_18

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_5
    const-string/jumbo v0, "setExcludeFromRecents"

    return-object v0

    .line 79
    :pswitch_9
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 75
    :pswitch_d
    const-string/jumbo v0, "moveToFront"

    return-object v0

    .line 71
    :pswitch_11
    const-string v0, "getTaskInfo"

    return-object v0

    .line 67
    :pswitch_14
    const-string v0, "finishAndRemoveTask"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 282
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 94
    invoke-static {p1}, Landroid/app/IAppTask$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 98
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.app.IAppTask"

    .line 99
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 100
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_15
    packed-switch v8, :pswitch_data_98

    .line 110
    packed-switch v8, :pswitch_data_9e

    .line 167
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 106
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v12

    .line 159
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 160
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v7, v0}, Landroid/app/IAppTask$Stub;->setExcludeFromRecents(Z)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_97

    .line 139
    .end local v0    # "_arg0":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 141
    .local v13, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 147
    .local v16, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 149
    .local v17, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 150
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IAppTask$Stub;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 152
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    goto :goto_97

    .line 128
    .end local v0    # "_result":I
    .end local v13    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/content/Intent;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 130
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {v7, v0, v1}, Landroid/app/IAppTask$Stub;->moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_97

    .line 120
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_85
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAppTask$Stub;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 121
    .local v0, "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    goto :goto_97

    .line 114
    .end local v0    # "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    :pswitch_90
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAppTask$Stub;->finishAndRemoveTask()V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    nop

    .line 170
    :goto_97
    return v12

    :pswitch_data_98
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_90
        :pswitch_85
        :pswitch_6f
        :pswitch_32
        :pswitch_24
    .end packed-switch
.end method
