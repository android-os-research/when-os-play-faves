.class public interface abstract Lcom/mediatek/vow/IVoiceWakeupBridge;
.super Ljava/lang/Object;
.source "IVoiceWakeupBridge.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vow/IVoiceWakeupBridge$Stub;,
        Lcom/mediatek/vow/IVoiceWakeupBridge$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.vow.IVoiceWakeupBridge"


# virtual methods
.method public abstract blacklist startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unloadKeyphraseModel(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
