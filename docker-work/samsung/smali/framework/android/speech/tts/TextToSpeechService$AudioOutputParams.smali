.class Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioOutputParams"
.end annotation


# instance fields
.field public final greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field public final greylist-max-o mPan:F

.field public final greylist-max-o mSessionId:I

.field public final greylist-max-o mVolume:F


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 754
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    .line 755
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 757
    return-void
.end method

.method constructor greylist-max-o <init>(IFFLandroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "volume"    # F
    .param p3, "pan"    # F
    .param p4, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput p1, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 762
    iput p2, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    .line 763
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    .line 764
    iput-object p4, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 765
    return-void
.end method

.method static greylist-max-o createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .registers 8
    .param p0, "paramsBundle"    # Landroid/os/Bundle;
    .param p1, "isSpeech"    # Z

    .line 769
    if-nez p0, :cond_8

    .line 770
    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>()V

    return-object v0

    .line 773
    :cond_8
    nop

    .line 774
    const-string v0, "audioAttributes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 776
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    if-nez v0, :cond_31

    .line 777
    const/4 v1, 0x3

    const-string/jumbo v2, "streamType"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 779
    .local v1, "streamType":I
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 780
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 781
    if-eqz p1, :cond_28

    .line 782
    const/4 v3, 0x1

    goto :goto_29

    .line 783
    :cond_28
    const/4 v3, 0x4

    .line 781
    :goto_29
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 784
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 787
    .end local v1    # "streamType":I
    :cond_31
    new-instance v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    const/4 v2, 0x0

    .line 788
    const-string/jumbo v3, "sessionId"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 791
    const-string/jumbo v4, "volume"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const/4 v4, 0x0

    .line 794
    const-string/jumbo v5, "pan"

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>(IFFLandroid/media/AudioAttributes;)V

    .line 787
    return-object v1
.end method
