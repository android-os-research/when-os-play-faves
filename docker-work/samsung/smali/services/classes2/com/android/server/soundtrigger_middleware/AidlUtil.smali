.class public Lcom/android/server/soundtrigger_middleware/AidlUtil;
.super Ljava/lang/Object;
.source "AidlUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAbortEvent()Landroid/media/soundtrigger/RecognitionEvent;
    .registers 2

    .line 55
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 57
    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    return-object v0
.end method

.method public static newAbortPhraseEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .registers 3

    .line 66
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v0

    .line 67
    iget-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    const/4 v2, 0x1

    .line 68
    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    return-object v0
.end method

.method public static newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .registers 2

    .line 44
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 45
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 46
    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    return-object v0
.end method

.method public static newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;
    .registers 2

    .line 34
    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 35
    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    return-object v0
.end method
