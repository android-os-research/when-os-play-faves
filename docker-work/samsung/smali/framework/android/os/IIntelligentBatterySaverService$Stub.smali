.class public abstract Landroid/os/IIntelligentBatterySaverService$Stub;
.super Landroid/os/Binder;
.source "IIntelligentBatterySaverService.java"

# interfaces
.implements Landroid/os/IIntelligentBatterySaverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIntelligentBatterySaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIntelligentBatterySaverService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addSqdBlockList:I = 0x3

.field static final blacklist TRANSACTION_getGain:I = 0x6

.field static final blacklist TRANSACTION_getOperationHistory:I = 0xc

.field static final blacklist TRANSACTION_getSleepTime:I = 0xd

.field static final blacklist TRANSACTION_getSqdBlockList:I = 0x5

.field static final blacklist TRANSACTION_isEnableSerive:I = 0xb

.field static final blacklist TRANSACTION_isSqdUiControlEnabled:I = 0x2

.field static final blacklist TRANSACTION_removeSqdBlockList:I = 0x4

.field static final blacklist TRANSACTION_setRubinEvent:I = 0xa

.field static final blacklist TRANSACTION_setSarrUiControlEnable:I = 0x7

.field static final blacklist TRANSACTION_setSleepModeEnabled:I = 0x8

.field static final blacklist TRANSACTION_setSleepTime:I = 0x9

.field static final blacklist TRANSACTION_setSqdUiControlEnabled:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.os.IIntelligentBatterySaverService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIntelligentBatterySaverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IIntelligentBatterySaverService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    const-string v0, "android.os.IIntelligentBatterySaverService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IIntelligentBatterySaverService;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/os/IIntelligentBatterySaverService;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Landroid/os/IIntelligentBatterySaverService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIntelligentBatterySaverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_38

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 146
    :pswitch_5
    const-string/jumbo v0, "getSleepTime"

    return-object v0

    .line 142
    :pswitch_9
    const-string/jumbo v0, "getOperationHistory"

    return-object v0

    .line 138
    :pswitch_d
    const-string/jumbo v0, "isEnableSerive"

    return-object v0

    .line 134
    :pswitch_11
    const-string/jumbo v0, "setRubinEvent"

    return-object v0

    .line 130
    :pswitch_15
    const-string/jumbo v0, "setSleepTime"

    return-object v0

    .line 126
    :pswitch_19
    const-string/jumbo v0, "setSleepModeEnabled"

    return-object v0

    .line 122
    :pswitch_1d
    const-string/jumbo v0, "setSarrUiControlEnable"

    return-object v0

    .line 118
    :pswitch_21
    const-string v0, "getGain"

    return-object v0

    .line 114
    :pswitch_24
    const-string/jumbo v0, "getSqdBlockList"

    return-object v0

    .line 110
    :pswitch_28
    const-string/jumbo v0, "removeSqdBlockList"

    return-object v0

    .line 106
    :pswitch_2c
    const-string v0, "addSqdBlockList"

    return-object v0

    .line 102
    :pswitch_2f
    const-string/jumbo v0, "isSqdUiControlEnabled"

    return-object v0

    .line 98
    :pswitch_33
    const-string/jumbo v0, "setSqdUiControlEnabled"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 545
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 157
    invoke-static {p1}, Landroid/os/IIntelligentBatterySaverService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    const-string v0, "android.os.IIntelligentBatterySaverService"

    .line 162
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    :cond_d
    packed-switch p1, :pswitch_data_da

    .line 173
    packed-switch p1, :pswitch_data_e0

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 169
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 283
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getSleepTime()Landroid/os/Bundle;

    move-result-object v2

    .line 284
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 286
    goto/16 :goto_d9

    .line 276
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_28
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getOperationHistory()Landroid/os/Bundle;

    move-result-object v2

    .line 277
    .restart local v2    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 279
    goto/16 :goto_d9

    .line 269
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_34
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->isEnableSerive()Z

    move-result v2

    .line 270
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 272
    goto/16 :goto_d9

    .line 261
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setRubinEvent(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_d9

    .line 250
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 252
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 253
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSleepTime(JJ)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_d9

    .line 241
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 242
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSleepModeEnabled(Z)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_d9

    .line 232
    .end local v2    # "_arg0":Z
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 233
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSarrUiControlEnable(Z)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto :goto_d9

    .line 224
    .end local v2    # "_arg0":Z
    :pswitch_7e
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getGain()[J

    move-result-object v2

    .line 225
    .local v2, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 227
    goto :goto_d9

    .line 217
    .end local v2    # "_result":[J
    :pswitch_89
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getSqdBlockList()Ljava/util/Map;

    move-result-object v2

    .line 218
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 220
    goto :goto_d9

    .line 206
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3}, Landroid/os/IIntelligentBatterySaverService$Stub;->removeSqdBlockList(ILjava/lang/String;)Z

    move-result v4

    .line 211
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    goto :goto_d9

    .line 194
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/os/IIntelligentBatterySaverService$Stub;->addSqdBlockList(ILjava/lang/String;)Z

    move-result v4

    .line 199
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto :goto_d9

    .line 186
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_c0
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->isSqdUiControlEnabled()Z

    move-result v2

    .line 187
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    goto :goto_d9

    .line 178
    .end local v2    # "_result":Z
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 179
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSqdUiControlEnabled(Z)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    nop

    .line 293
    .end local v2    # "_arg0":Z
    :goto_d9
    return v1

    :pswitch_data_da
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_c0
        :pswitch_aa
        :pswitch_94
        :pswitch_89
        :pswitch_7e
        :pswitch_70
        :pswitch_62
        :pswitch_4f
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
