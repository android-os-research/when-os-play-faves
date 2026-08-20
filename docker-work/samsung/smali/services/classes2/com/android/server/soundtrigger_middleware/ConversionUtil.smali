.class public Lcom/android/server/soundtrigger_middleware/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aidl2hidlConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;
    .registers 3

    .line 267
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    .line 269
    iget v1, p0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    .line 270
    iget p0, p0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    iput p0, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    return-object v0
.end method

.method public static aidl2hidlModelParameter(I)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static aidl2hidlPhrase(Landroid/media/soundtrigger/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    .registers 7

    .line 150
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;-><init>()V

    .line 151
    iget v1, p0, Landroid/media/soundtrigger/Phrase;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    .line 152
    iget v1, p0, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    .line 153
    iget-object v1, p0, Landroid/media/soundtrigger/Phrase;->users:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .line 154
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 156
    :cond_25
    iget-object v1, p0, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 157
    iget-object p0, p0, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
    .registers 6

    .line 238
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    .line 240
    iget v1, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 241
    iget v1, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 242
    iget v1, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 243
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 244
    iget-object p0, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_31

    aget-object v3, p0, v2

    .line 245
    iget-object v4, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_31
    return-object v0
.end method

.method public static aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .registers 6

    .line 211
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    .line 212
    iget-object v1, p0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 213
    iget-object p0, p0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 214
    iget-object v4, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhrase(Landroid/media/soundtrigger/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    return-object v0
.end method

.method public static aidl2hidlRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;II)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .registers 7

    .line 221
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;-><init>()V

    .line 223
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iput p1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 224
    iput p2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 225
    iget-boolean p1, p0, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    iput-boolean p1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 226
    iget-object p1, p0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p2, :cond_29

    aget-object v2, p1, v1

    .line 227
    iget-object v3, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v3, v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object v3, v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 229
    :cond_29
    iget-object p1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object p2, p0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    const-string v1, "SoundTrigger RecognitionConfig"

    invoke-static {p2, v1}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    move-result-object p2

    iput-object p2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    .line 231
    iget p0, p0, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    iput p0, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    return-object v0
.end method

.method public static aidl2hidlRecognitionModes(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    return v0
.end method

.method public static aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .registers 4

    .line 200
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 201
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget v2, p0, Landroid/media/soundtrigger/SoundModel;->type:I

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModelType(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    .line 202
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 203
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 204
    iget-object v1, p0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    iget p0, p0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    invoke-static {v1, p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->parcelFileDescriptorToHidlMemory(Landroid/os/ParcelFileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    return-object v0
.end method

.method public static aidl2hidlSoundModelType(I)I
    .registers 4

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    .line 133
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;
    .registers 12

    .line 108
    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 112
    new-instance p0, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {p0}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    const/4 v2, 0x2

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v4, v4

    iput-short v4, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    const/4 v4, 0x3

    .line 115
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    const/4 v5, 0x4

    .line 116
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    const/4 v6, 0x6

    new-array v7, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x5

    .line 117
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 118
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v7, v1

    const/4 v1, 0x7

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v7, v2

    const/16 v1, 0x8

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v7, v4

    const/16 v1, 0x9

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v7, v5

    const/16 v1, 0xa

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v7, v9

    iput-object v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    return-object p0

    .line 110
    :cond_93
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

.method public static hidl2aidlAudioCapabilities(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    return v0
.end method

.method public static hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;Z)Landroid/media/audio/common/AudioConfig;
    .registers 6

    .line 355
    new-instance v0, Landroid/media/audio/common/AudioConfig;

    invoke-direct {v0}, Landroid/media/audio/common/AudioConfig;-><init>()V

    .line 356
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfigBase(IIIZ)Landroid/media/audio/common/AudioConfigBase;

    move-result-object p1

    iput-object p1, v0, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    .line 358
    iget-object p1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;

    move-result-object p1

    iput-object p1, v0, Landroid/media/audio/common/AudioConfig;->offloadInfo:Landroid/media/audio/common/AudioOffloadInfo;

    .line 359
    iget-wide p0, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    iput-wide p0, v0, Landroid/media/audio/common/AudioConfig;->frameCount:J

    return-object v0
.end method

.method public static hidl2aidlAudioConfigBase(IIIZ)Landroid/media/audio/common/AudioConfigBase;
    .registers 5

    .line 386
    new-instance v0, Landroid/media/audio/common/AudioConfigBase;

    invoke-direct {v0}, Landroid/media/audio/common/AudioConfigBase;-><init>()V

    .line 387
    iput p0, v0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    .line 390
    invoke-static {p1, p3}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;

    move-result-object p0

    iput-object p0, v0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 393
    invoke-static {p2}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;

    move-result-object p0

    iput-object p0, v0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    return-object v0
.end method

.method public static hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;
    .registers 3

    .line 277
    new-instance v0, Landroid/media/soundtrigger/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger/ConfidenceLevel;-><init>()V

    .line 278
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    .line 279
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    iput p0, v0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    return-object v0
.end method

.method public static hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 403
    :cond_4
    new-instance v0, Landroid/media/soundtrigger/ModelParameterRange;

    invoke-direct {v0}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    .line 404
    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    iput v1, v0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    .line 405
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    iput p0, v0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    return-object v0
.end method

.method public static hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;
    .registers 6

    .line 366
    new-instance v0, Landroid/media/audio/common/AudioOffloadInfo;

    invoke-direct {v0}, Landroid/media/audio/common/AudioOffloadInfo;-><init>()V

    .line 367
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    iget v2, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    iget v3, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfigBase(IIIZ)Landroid/media/audio/common/AudioConfigBase;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->base:Landroid/media/audio/common/AudioConfigBase;

    .line 369
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_stream_type_t_AudioStreamType(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->streamType:I

    .line 371
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitRatePerSecond:I

    .line 372
    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    iput-wide v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->durationUs:J

    .line 373
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->hasVideo:Z

    .line 374
    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->isStreaming:Z

    .line 375
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitWidth:I

    .line 376
    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->offloadBufferSize:I

    .line 377
    iget p0, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_usage_t_AudioUsage(I)I

    move-result p0

    iput p0, v0, Landroid/media/audio/common/AudioOffloadInfo;->usage:I

    return-object v0
.end method

.method public static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .registers 5

    .line 329
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 330
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 331
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    const/4 v1, 0x0

    .line 332
    :goto_18
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 333
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    .line 334
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 333
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_33
    return-object v0
.end method

.method public static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .registers 5

    .line 342
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 343
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 344
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    const/4 v1, 0x0

    .line 345
    :goto_18
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 346
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    .line 347
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 346
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_33
    return-object v0
.end method

.method public static hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .registers 5

    .line 253
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionExtra;-><init>()V

    .line 254
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    .line 255
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 256
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    .line 257
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    const/4 v1, 0x0

    .line 258
    :goto_20
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 259
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3b
    return-object v0
.end method

.method public static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger/Properties;
    .registers 3

    .line 61
    new-instance v0, Landroid/media/soundtrigger/Properties;

    invoke-direct {v0}, Landroid/media/soundtrigger/Properties;-><init>()V

    .line 62
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    .line 64
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->version:I

    .line 65
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    .line 66
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 67
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    .line 68
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxUsers:I

    .line 69
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 70
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    .line 71
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    .line 72
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    iput v1, v0, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    .line 73
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    .line 74
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    .line 75
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    iput p0, v0, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    return-object v0
.end method

.method public static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object v0

    .line 82
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    .line 83
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    .line 84
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioCapabilities(I)I

    move-result p0

    iput p0, v0, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    return-object v0
.end method

.method public static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;
    .registers 7

    .line 301
    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    .line 302
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionStatus(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 303
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlSoundModelType(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 304
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    .line 305
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    .line 306
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    .line 307
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    .line 308
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;Z)Landroid/media/audio/common/AudioConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    .line 309
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    const/4 v1, 0x0

    move v3, v1

    .line 310
    :goto_3a
    iget-object v4, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    array-length v5, v4

    if-ge v3, v5, :cond_50

    .line 311
    iget-object v5, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 313
    :cond_50
    iget p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-ne p0, v3, :cond_56

    goto :goto_57

    :cond_56
    move v2, v1

    :goto_57
    iput-boolean v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    return-object v0
.end method

.method public static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v0

    .line 322
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object p0

    iput-object p0, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    return-object v0
.end method

.method public static hidl2aidlRecognitionModes(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    return v0
.end method

.method public static hidl2aidlRecognitionStatus(I)I
    .registers 4

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    return v0

    .line 294
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown recognition status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    return v0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static hidl2aidlSoundModelType(I)I
    .registers 4

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    .line 144
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;
    .registers 8

    .line 90
    iget-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    if-eqz v0, :cond_7a

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7a

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    iget v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    .line 95
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    .line 96
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    .line 97
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    .line 98
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v4

    .line 99
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v5

    .line 100
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v6

    .line 101
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    .line 102
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object p0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte p0, p0, v4

    .line 103
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%08x-%04x-%04x-%04x-%02x%02x%02x%02x%02x%02x"

    .line 93
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "UUID.node must be of length 6."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parcelFileDescriptorToHidlMemory(Landroid/os/ParcelFileDescriptor;I)Landroid/os/HidlMemory;
    .registers 2

    if-lez p1, :cond_b

    .line 445
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 447
    invoke-static {p0, p1}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method
