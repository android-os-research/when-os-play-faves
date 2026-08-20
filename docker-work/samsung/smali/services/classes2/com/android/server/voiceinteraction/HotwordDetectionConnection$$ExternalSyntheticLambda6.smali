.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

.field public final synthetic f$1:Landroid/service/voice/IDspHotwordDetectionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;->f$1:Landroid/service/voice/IDspHotwordDetectionCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda6;->f$1:Landroid/service/voice/IDspHotwordDetectionCallback;

    check-cast p1, Landroid/service/voice/IHotwordDetectionService;

    invoke-static {v0, p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->$r8$lambda$_MKkJHL3Ux-GuDs76odNd2Cis7s(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/IDspHotwordDetectionCallback;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method
