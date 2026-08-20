.class public abstract Landroid/speech/tts/ITextToSpeechCallback$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechCallback.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechCallback"

.field static final greylist-max-o TRANSACTION_onAudioAvailable:I = 0x6

.field static final greylist-max-o TRANSACTION_onBeginSynthesis:I = 0x5

.field static final greylist-max-o TRANSACTION_onError:I = 0x4

.field static final greylist-max-o TRANSACTION_onRangeStart:I = 0x7

.field static final greylist-max-o TRANSACTION_onStart:I = 0x1

.field static final greylist-max-o TRANSACTION_onStop:I = 0x3

.field static final greylist-max-o TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 121
    if-nez p0, :cond_4

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_4
    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 125
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechCallback;

    if-eqz v1, :cond_14

    .line 126
    move-object v1, v0

    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;

    return-object v1

    .line 128
    :cond_14
    new-instance v1, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 137
    packed-switch p0, :pswitch_data_22

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 165
    :pswitch_5
    const-string/jumbo v0, "onRangeStart"

    return-object v0

    .line 161
    :pswitch_9
    const-string/jumbo v0, "onAudioAvailable"

    return-object v0

    .line 157
    :pswitch_d
    const-string/jumbo v0, "onBeginSynthesis"

    return-object v0

    .line 153
    :pswitch_11
    const-string/jumbo v0, "onError"

    return-object v0

    .line 149
    :pswitch_15
    const-string/jumbo v0, "onStop"

    return-object v0

    .line 145
    :pswitch_19
    const-string/jumbo v0, "onSuccess"

    return-object v0

    .line 141
    :pswitch_1d
    const-string/jumbo v0, "onStart"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
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

    .line 132
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 461
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 176
    invoke-static {p1}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 180
    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    .line 181
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 182
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    :cond_d
    packed-switch p1, :pswitch_data_8e

    .line 192
    packed-switch p1, :pswitch_data_94

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 188
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v1

    .line 257
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 264
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onRangeStart(Ljava/lang/String;III)V

    .line 266
    goto :goto_8d

    .line 247
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 250
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2, v3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onAudioAvailable(Ljava/lang/String;[B)V

    .line 252
    goto :goto_8d

    .line 233
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 239
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 240
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onBeginSynthesis(Ljava/lang/String;III)V

    .line 242
    goto :goto_8d

    .line 223
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onError(Ljava/lang/String;I)V

    .line 228
    goto :goto_8d

    .line 213
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 216
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStop(Ljava/lang/String;Z)V

    .line 218
    goto :goto_8d

    .line 205
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onSuccess(Ljava/lang/String;)V

    .line 208
    goto :goto_8d

    .line 197
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStart(Ljava/lang/String;)V

    .line 200
    nop

    .line 273
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_8d
    return v1

    :pswitch_data_8e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_82
        :pswitch_77
        :pswitch_68
        :pswitch_59
        :pswitch_42
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
