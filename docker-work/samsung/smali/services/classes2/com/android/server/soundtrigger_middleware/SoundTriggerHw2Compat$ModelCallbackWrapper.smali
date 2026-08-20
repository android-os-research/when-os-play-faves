.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;
.super Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;
.source "SoundTriggerHw2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelCallbackWrapper"
.end annotation


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .registers 2

    .line 555
    invoke-direct {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;-><init>()V

    .line 556
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    return-void
.end method


# virtual methods
.method public phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V
    .registers 3

    .line 596
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertPhraseRecognitionEvent_2_0_to_2_1(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    move-result-object p1

    .line 597
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->phraseRecognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V

    return-void
.end method

.method public phraseRecognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V
    .registers 3

    .line 571
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    iget-object p2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    iget-object p2, p2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    iget p2, p2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 572
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object p1

    .line 571
    invoke-interface {p0, p2, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    return-void
.end method

.method public recognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;I)V
    .registers 3

    .line 587
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionEvent_2_0_to_2_1(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    move-result-object p1

    .line 588
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->recognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V

    return-void
.end method

.method public recognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V
    .registers 3

    .line 563
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    iget-object p2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    iget p2, p2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 564
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object p1

    .line 563
    invoke-interface {p0, p2, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    return-void
.end method

.method public soundModelCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;I)V
    .registers 3

    return-void
.end method

.method public soundModelCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;I)V
    .registers 3

    return-void
.end method
