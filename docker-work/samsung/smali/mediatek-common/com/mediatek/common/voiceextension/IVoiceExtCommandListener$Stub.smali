.class public abstract Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;
.super Landroid/os/Binder;
.source "IVoiceExtCommandListener.java"

# interfaces
.implements Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCommandRecognized:I = 0x5

.field static final blacklist TRANSACTION_onError:I = 0x6

.field static final blacklist TRANSACTION_onPauseRecognition:I = 0x3

.field static final blacklist TRANSACTION_onResumeRecognition:I = 0x4

.field static final blacklist TRANSACTION_onSetCommands:I = 0x7

.field static final blacklist TRANSACTION_onStartRecognition:I = 0x1

.field static final blacklist TRANSACTION_onStopRecognition:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
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

    .line 72
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandListener"

    .line 73
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    :cond_d
    packed-switch p1, :pswitch_data_88

    .line 84
    packed-switch p1, :pswitch_data_8e

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 80
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v1

    .line 147
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onSetCommands(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_86

    .line 138
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onError(I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_86

    .line 125
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onCommandRecognized(IILjava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_86

    .line 116
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onResumeRecognition(I)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto :goto_86

    .line 107
    .end local v2    # "_arg0":I
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onPauseRecognition(I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    goto :goto_86

    .line 98
    .end local v2    # "_arg0":I
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onStopRecognition(I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    goto :goto_86

    .line 89
    .end local v2    # "_arg0":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->onStartRecognition(I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    nop

    .line 158
    .end local v2    # "_arg0":I
    :goto_86
    return v1

    nop

    :pswitch_data_88
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6a
        :pswitch_5c
        :pswitch_4e
        :pswitch_38
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
