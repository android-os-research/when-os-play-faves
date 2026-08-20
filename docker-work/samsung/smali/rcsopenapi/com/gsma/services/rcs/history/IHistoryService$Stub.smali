.class public abstract Lcom/gsma/services/rcs/history/IHistoryService$Stub;
.super Landroid/os/Binder;
.source "IHistoryService.java"

# interfaces
.implements Lcom/gsma/services/rcs/history/IHistoryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/history/IHistoryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/history/IHistoryService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createUniqueId:I = 0x3

.field static final TRANSACTION_registerExtraHistoryLogMember:I = 0x1

.field static final TRANSACTION_unRegisterExtraHistoryLogMember:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.gsma.services.rcs.history.IHistoryService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/history/IHistoryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/history/IHistoryService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_4
    const-string v0, "com.gsma.services.rcs.history.IHistoryService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/history/IHistoryService;

    if-eqz v1, :cond_14

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/history/IHistoryService;

    return-object v1

    .line 47
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/history/IHistoryService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/history/IHistoryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 51
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.gsma.services.rcs.history.IHistoryService"

    .line 56
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 57
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    :cond_15
    packed-switch v7, :pswitch_data_80

    .line 67
    packed-switch v7, :pswitch_data_86

    .line 108
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 63
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v11

    .line 99
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {v6, v0}, Lcom/gsma/services/rcs/history/IHistoryService$Stub;->createUniqueId(I)J

    move-result-wide v1

    .line 102
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    goto :goto_7e

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {v6, v0}, Lcom/gsma/services/rcs/history/IHistoryService$Stub;->unRegisterExtraHistoryLogMember(I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    goto :goto_7e

    .line 72
    .end local v0    # "_arg0":I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 74
    .local v12, "_arg0":I
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/Uri;

    .line 76
    .local v13, "_arg1":Landroid/net/Uri;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/Uri;

    .line 78
    .local v14, "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 81
    .local v5, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v16

    .line 82
    .local v16, "_arg4":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v17, v5

    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .local v17, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/history/IHistoryService$Stub;->registerExtraHistoryLogMember(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    nop

    .line 111
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/net/Uri;
    .end local v14    # "_arg2":Landroid/net/Uri;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/util/Map;
    .end local v17    # "cl":Ljava/lang/ClassLoader;
    :goto_7e
    return v11

    nop

    :pswitch_data_80
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_44
        :pswitch_36
        :pswitch_24
    .end packed-switch
.end method
