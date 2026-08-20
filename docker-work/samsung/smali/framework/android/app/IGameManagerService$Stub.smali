.class public abstract Landroid/app/IGameManagerService$Stub;
.super Landroid/os/Binder;
.source "IGameManagerService.java"

# interfaces
.implements Landroid/app/IGameManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGameManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableGameModes:I = 0x3

.field static final blacklist TRANSACTION_getGameMode:I = 0x1

.field static final blacklist TRANSACTION_getGameModeInfo:I = 0x7

.field static final blacklist TRANSACTION_isAngleEnabled:I = 0x4

.field static final blacklist TRANSACTION_notifyGraphicsEnvironmentSetup:I = 0x5

.field static final blacklist TRANSACTION_setGameMode:I = 0x2

.field static final blacklist TRANSACTION_setGameServiceProvider:I = 0x8

.field static final blacklist TRANSACTION_setGameState:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.app.IGameManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/app/IGameManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.app.IGameManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IGameManagerService;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/app/IGameManagerService;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/app/IGameManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IGameManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_22

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_5
    const-string/jumbo v0, "setGameServiceProvider"

    return-object v0

    .line 102
    :pswitch_9
    const-string v0, "getGameModeInfo"

    return-object v0

    .line 98
    :pswitch_c
    const-string/jumbo v0, "setGameState"

    return-object v0

    .line 94
    :pswitch_10
    const-string/jumbo v0, "notifyGraphicsEnvironmentSetup"

    return-object v0

    .line 90
    :pswitch_14
    const-string v0, "isAngleEnabled"

    return-object v0

    .line 86
    :pswitch_17
    const-string v0, "getAvailableGameModes"

    return-object v0

    .line 82
    :pswitch_1a
    const-string/jumbo v0, "setGameMode"

    return-object v0

    .line 78
    :pswitch_1e
    const-string v0, "getGameMode"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 401
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 117
    invoke-static {p1}, Landroid/app/IGameManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 121
    const-string v0, "android.app.IGameManagerService"

    .line 122
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_d
    packed-switch p1, :pswitch_data_c4

    .line 133
    packed-switch p1, :pswitch_data_ca

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 221
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->setGameServiceProvider(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_c2

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;

    move-result-object v4

    .line 214
    .local v4, "_result":Landroid/app/GameModeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto/16 :goto_c2

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/app/GameModeInfo;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/GameState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameState;

    .line 200
    .local v3, "_arg1":Landroid/app/GameState;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IGameManagerService$Stub;->setGameState(Ljava/lang/String;Landroid/app/GameState;I)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_c2

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/GameState;
    .end local v4    # "_arg2":I
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_c2

    .line 173
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->isAngleEnabled(Ljava/lang/String;I)Z

    move-result v4

    .line 178
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 180
    goto :goto_c2

    .line 163
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v3

    .line 166
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 168
    goto :goto_c2

    .line 150
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 155
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IGameManagerService$Stub;->setGameMode(Ljava/lang/String;II)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_c2

    .line 138
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->getGameMode(Ljava/lang/String;I)I

    move-result v4

    .line 143
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    nop

    .line 232
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_c2
    return v1

    nop

    :pswitch_data_c4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_96
        :pswitch_84
        :pswitch_6e
        :pswitch_5c
        :pswitch_42
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
