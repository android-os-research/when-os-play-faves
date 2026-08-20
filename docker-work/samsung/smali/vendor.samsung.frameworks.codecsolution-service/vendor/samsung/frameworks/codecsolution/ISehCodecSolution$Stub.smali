.class public abstract Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;
.super Landroid/os/Binder;
.source "ISehCodecSolution.java"

# interfaces
.implements Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getDisplaySize:I = 0x2

.field static final TRANSACTION_getH2SCAllowlistStatus:I = 0xd

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSmartFittingAllowlistStatus:I = 0xc

.field static final TRANSACTION_getSmartFittingMode:I = 0x9

.field static final TRANSACTION_getVideoRecordingParameter:I = 0x10

.field static final TRANSACTION_hideSmartFittingButton:I = 0x6

.field static final TRANSACTION_isDesktopMode:I = 0x1

.field static final TRANSACTION_setAutoFitMode:I = 0xa

.field static final TRANSACTION_setBlackbarState:I = 0x7

.field static final TRANSACTION_setSmartFittingMode:I = 0x8

.field static final TRANSACTION_setSmartFittingPid:I = 0xb

.field static final TRANSACTION_setVideoRecordingParameter:I = 0xf

.field static final TRANSACTION_showSmartFittingButton:I = 0x5

.field static final TRANSACTION_startSmartFittingService:I = 0x3

.field static final TRANSACTION_stopSmartFittingService:I = 0x4

.field static final TRANSACTION_updateMediaStatisticsData:I = 0xe

.field static final TRANSACTION_updateStreamStatus:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->markVintfStability()V

    .line 96
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_4

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_4
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;

    if-eqz v1, :cond_14

    .line 109
    move-object v1, v0

    check-cast v1, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution;

    return-object v1

    .line 111
    :cond_14
    new-instance v1, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 115
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

    .line 119
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    sparse-switch p1, :sswitch_data_11c

    .line 143
    packed-switch p1, :pswitch_data_12a

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 132
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v1

    .line 138
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 278
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 282
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3, v4}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->updateStreamStatus(IZI)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto/16 :goto_11a

    .line 268
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 269
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getVideoRecordingParameter(J)Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    move-result-object v4

    .line 271
    .local v4, "_result":Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 273
    goto/16 :goto_11a

    .line 257
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 259
    .restart local v2    # "_arg0":J
    sget-object v4, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;

    .line 260
    .local v4, "_arg1":Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2, v3, v4}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->setVideoRecordingParameter(JLvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_11a

    .line 248
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Lvendor/samsung/frameworks/codecsolution/SehVideoRecordingParameter;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->updateMediaStatisticsData(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_11a

    .line 236
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getH2SCAllowlistStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 241
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    goto/16 :goto_11a

    .line 228
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_99
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getSmartFittingAllowlistStatus()I

    move-result v2

    .line 229
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    goto/16 :goto_11a

    .line 220
    .end local v2    # "_result":I
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->setSmartFittingPid(I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_11a

    .line 211
    .end local v2    # "_arg0":I
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 212
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->setAutoFitMode(Z)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_11a

    .line 203
    .end local v2    # "_arg0":Z
    :pswitch_c1
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getSmartFittingMode()I

    move-result v2

    .line 204
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    goto :goto_11a

    .line 195
    .end local v2    # "_result":I
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->setSmartFittingMode(I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_11a

    .line 186
    .end local v2    # "_arg0":I
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 187
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->setBlackbarState(Z)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_11a

    .line 179
    .end local v2    # "_arg0":Z
    :pswitch_e8
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->hideSmartFittingButton()V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_11a

    .line 173
    :pswitch_ef
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->showSmartFittingButton()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_11a

    .line 167
    :pswitch_f6
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->stopSmartFittingService()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_11a

    .line 161
    :pswitch_fd
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->startSmartFittingService()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_11a

    .line 154
    :pswitch_104
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->getDisplaySize()Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;

    move-result-object v2

    .line 155
    .local v2, "_result":Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    goto :goto_11a

    .line 147
    .end local v2    # "_result":Lvendor/samsung/frameworks/codecsolution/SehDisplaySize;
    :pswitch_10f
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/ISehCodecSolution$Stub;->isDesktopMode()Z

    move-result v2

    .line 148
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    nop

    .line 293
    .end local v2    # "_result":Z
    :goto_11a
    return v1

    nop

    :sswitch_data_11c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_10f
        :pswitch_104
        :pswitch_fd
        :pswitch_f6
        :pswitch_ef
        :pswitch_e8
        :pswitch_da
        :pswitch_cc
        :pswitch_c1
        :pswitch_b3
        :pswitch_a5
        :pswitch_99
        :pswitch_82
        :pswitch_73
        :pswitch_5c
        :pswitch_49
        :pswitch_32
    .end packed-switch
.end method
