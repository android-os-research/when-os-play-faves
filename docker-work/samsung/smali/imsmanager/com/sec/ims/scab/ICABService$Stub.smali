.class public abstract Lcom/sec/ims/scab/ICABService$Stub;
.super Landroid/os/Binder;
.source "ICABService.java"

# interfaces
.implements Lcom/sec/ims/scab/ICABService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/ICABService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/scab/ICABService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addBatchOfContacts:I = 0x5

.field static final TRANSACTION_businessLineReadyForSync:I = 0x2

.field static final TRANSACTION_deleteBatchOfContacts:I = 0x6

.field static final TRANSACTION_disableService:I = 0xa

.field static final TRANSACTION_enableService:I = 0x9

.field static final TRANSACTION_isPendingUploadContactsExists:I = 0x8

.field static final TRANSACTION_onBufferDBReadResult:I = 0x1

.field static final TRANSACTION_processUndownloadedBusinessContacts:I = 0x3

.field static final TRANSACTION_updateBatchOfContacts:I = 0x7

.field static final TRANSACTION_uploadAddressBook:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "com.sec.ims.scab.ICABService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/scab/ICABService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/scab/ICABService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "com.sec.ims.scab.ICABService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/scab/ICABService;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/scab/ICABService;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Lcom/sec/ims/scab/ICABService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/scab/ICABService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-string v0, "com.sec.ims.scab.ICABService"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    packed-switch p1, :pswitch_data_a2

    .line 97
    packed-switch p1, :pswitch_data_a8

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 181
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/ims/scab/ICABService$Stub;->disableService()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto/16 :goto_a1

    .line 175
    :pswitch_24
    invoke-virtual {p0}, Lcom/sec/ims/scab/ICABService$Stub;->enableService()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto/16 :goto_a1

    .line 168
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/ims/scab/ICABService$Stub;->isPendingUploadContactsExists()Z

    move-result v2

    .line 169
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 171
    goto :goto_a1

    .line 160
    .end local v2    # "_result":Z
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 161
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Lcom/sec/ims/scab/ICABService$Stub;->updateBatchOfContacts(Ljava/util/List;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_a1

    .line 151
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 152
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Lcom/sec/ims/scab/ICABService$Stub;->deleteBatchOfContacts(Ljava/util/List;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_a1

    .line 142
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 143
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Lcom/sec/ims/scab/ICABService$Stub;->addBatchOfContacts(Ljava/util/List;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    goto :goto_a1

    .line 133
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Lcom/sec/ims/scab/ICABService$Stub;->uploadAddressBook(Ljava/util/List;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_a1

    .line 124
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Lcom/sec/ims/scab/ICABService$Stub;->processUndownloadedBusinessContacts(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    goto :goto_a1

    .line 113
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 116
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/scab/ICABService$Stub;->businessLineReadyForSync(Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_a1

    .line 102
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 104
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 105
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/scab/ICABService$Stub;->onBufferDBReadResult(JZ)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    nop

    .line 190
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Z
    :goto_a1
    return v1

    :pswitch_data_a2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_7d
        :pswitch_6f
        :pswitch_61
        :pswitch_53
        :pswitch_45
        :pswitch_37
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
