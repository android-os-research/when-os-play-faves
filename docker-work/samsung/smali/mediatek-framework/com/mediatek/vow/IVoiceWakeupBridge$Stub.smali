.class public abstract Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;
.super Landroid/os/Binder;
.source "IVoiceWakeupBridge.java"

# interfaces
.implements Lcom/mediatek/vow/IVoiceWakeupBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vow/IVoiceWakeupBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_startRecognition:I = 0x1

.field static final blacklist TRANSACTION_stopRecognition:I = 0x2

.field static final blacklist TRANSACTION_unloadKeyphraseModel:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.mediatek.vow.IVoiceWakeupBridge"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/vow/IVoiceWakeupBridge;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.mediatek.vow.IVoiceWakeupBridge"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/vow/IVoiceWakeupBridge;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/mediatek/vow/IVoiceWakeupBridge;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "com.mediatek.vow.IVoiceWakeupBridge"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_d
    packed-switch p1, :pswitch_data_74

    .line 69
    packed-switch p1, :pswitch_data_7a

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 102
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->unloadKeyphraseModel(I)I

    move-result v3

    .line 105
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    goto :goto_72

    .line 90
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    .line 93
    .local v3, "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v4

    .line 95
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    goto :goto_72

    .line 74
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v4    # "_result":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 78
    .local v3, "_arg1":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    .line 80
    .local v4, "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    sget-object v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 81
    .local v5, "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v6

    .line 83
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    nop

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v4    # "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v5    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v6    # "_result":I
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_48
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
