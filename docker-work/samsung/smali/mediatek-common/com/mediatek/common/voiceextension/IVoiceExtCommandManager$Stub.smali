.class public abstract Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;
.super Landroid/os/Binder;
.source "IVoiceExtCommandManager.java"

# interfaces
.implements Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createCommandSet:I = 0x1

.field static final blacklist TRANSACTION_deleteCommandSet:I = 0x4

.field static final blacklist TRANSACTION_getCommandSetSelected:I = 0x3

.field static final blacklist TRANSACTION_getCommandSets:I = 0xa

.field static final blacklist TRANSACTION_getCommands:I = 0x9

.field static final blacklist TRANSACTION_isCommandSetCreated:I = 0x2

.field static final blacklist TRANSACTION_pauseRecognition:I = 0xd

.field static final blacklist TRANSACTION_registerListener:I = 0x8

.field static final blacklist TRANSACTION_resumeRecognition:I = 0xe

.field static final blacklist TRANSACTION_selectCurrentCommandSet:I = 0x5

.field static final blacklist TRANSACTION_setCommandsFile:I = 0x7

.field static final blacklist TRANSACTION_setCommandsStrArray:I = 0x6

.field static final blacklist TRANSACTION_startRecognition:I = 0xb

.field static final blacklist TRANSACTION_stopRecognition:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
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

    .line 94
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    packed-switch p1, :pswitch_data_e8

    .line 106
    packed-switch p1, :pswitch_data_ee

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 102
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 221
    :pswitch_1c
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->resumeRecognition()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto/16 :goto_e6

    .line 215
    :pswitch_24
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->pauseRecognition()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto/16 :goto_e6

    .line 209
    :pswitch_2c
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->stopRecognition()V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto/16 :goto_e6

    .line 203
    :pswitch_34
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->startRecognition()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto/16 :goto_e6

    .line 196
    :pswitch_3c
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getCommandSets()[Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 199
    goto/16 :goto_e6

    .line 189
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_48
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getCommands()[Ljava/lang/String;

    move-result-object v2

    .line 190
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 192
    goto/16 :goto_e6

    .line 180
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->registerListener(Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;)I

    move-result v3

    .line 183
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    goto/16 :goto_e6

    .line 167
    .end local v2    # "_arg0":Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
    .end local v3    # "_result":I
    :pswitch_6b
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 169
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->setCommandsFile(Landroid/os/ParcelFileDescriptor;II)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_e6

    .line 158
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->setCommandsStrArray([Ljava/lang/String;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_e6

    .line 148
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->selectCurrentCommandSet(Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_e6

    .line 138
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->deleteCommandSet(Ljava/lang/String;)I

    move-result v3

    .line 141
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    goto :goto_e6

    .line 130
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b7
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getCommandSetSelected()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    goto :goto_e6

    .line 121
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->isCommandSetCreated(Ljava/lang/String;)I

    move-result v3

    .line 124
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    goto :goto_e6

    .line 111
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->createCommandSet(Ljava/lang/String;)I

    move-result v3

    .line 114
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    nop

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :goto_e6
    return v1

    nop

    :pswitch_data_e8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_c2
        :pswitch_b7
        :pswitch_a5
        :pswitch_93
        :pswitch_85
        :pswitch_6b
        :pswitch_54
        :pswitch_48
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
