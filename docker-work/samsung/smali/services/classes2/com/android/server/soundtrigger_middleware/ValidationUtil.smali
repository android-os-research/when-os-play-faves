.class public Lcom/android/server/soundtrigger_middleware/ValidationUtil;
.super Ljava/lang/Object;
.source "ValidationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateGenericModel(Landroid/media/soundtrigger/SoundModel;)V
    .registers 2

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger/SoundModel;I)V

    return-void
.end method

.method public static validateModel(Landroid/media/soundtrigger/SoundModel;I)V
    .registers 3

    .line 56
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget v0, p0, Landroid/media/soundtrigger/SoundModel;->type:I

    if-ne v0, p1, :cond_1b

    .line 60
    iget-object p1, p0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    .line 62
    iget p1, p0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    if-lez p1, :cond_1a

    .line 63
    iget-object p0, p0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void

    .line 58
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateModelParameter(I)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid model parameter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validatePhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)V
    .registers 5

    .line 68
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger/SoundModel;I)V

    .line 70
    iget-object v0, p0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p0, p0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    array-length v0, p0

    :goto_11
    if-ge v1, v0, :cond_38

    aget-object v2, p0, v1

    .line 72
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v3, v2, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    and-int/lit8 v3, v3, -0x10

    if-nez v3, :cond_30

    .line 78
    iget-object v3, v2, Landroid/media/soundtrigger/Phrase;->users:[I

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v3, v2, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v2, v2, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 76
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid recognitionModes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    return-void
.end method

.method public static validateRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;)V
    .registers 11

    .line 85
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_54

    aget-object v4, v0, v3

    .line 88
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    and-int/lit8 v5, v5, -0x10

    if-nez v5, :cond_4c

    .line 94
    iget v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    const-string v6, "Invalid confidenceLevel"

    if-ltz v5, :cond_46

    const/16 v7, 0x64

    if-gt v5, v7, :cond_46

    .line 97
    iget-object v5, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v4, v4, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v5, v4

    move v8, v2

    :goto_2d
    if-ge v8, v5, :cond_43

    aget-object v9, v4, v8

    .line 99
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget v9, v9, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    if-ltz v9, :cond_3d

    if-gt v9, v7, :cond_3d

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 101
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 95
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid recognitionModes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_54
    iget-object p0, p0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static validateUuid(Ljava/lang/String;)V
    .registers 4

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 46
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal format for UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
