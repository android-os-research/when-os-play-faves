.class public final synthetic Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/speech/tts/ITextToSpeechSessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda3;->f$0:Landroid/speech/tts/ITextToSpeechSessionCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda3;->f$0:Landroid/speech/tts/ITextToSpeechSessionCallback;

    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onDisconnected()V

    return-void
.end method
