.class public final Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VolumeEvent"
.end annotation


# static fields
.field public static final VOL_ADJUST_STREAM_VOL:I = 0x1

.field public static final VOL_ADJUST_SUGG_VOL:I = 0x0

.field public static final VOL_ADJUST_VOL_UID:I = 0x5

.field public static final VOL_MODE_CHANGE_HEARING_AID:I = 0x7

.field public static final VOL_MUTE_STREAM_INT:I = 0x9

.field public static final VOL_SET_AVRCP_VOL:I = 0x4

.field public static final VOL_SET_GROUP_VOL:I = 0x8

.field public static final VOL_SET_HEARING_AID_VOL:I = 0x3

.field public static final VOL_SET_LE_AUDIO_VOL:I = 0xa

.field public static final VOL_SET_STREAM_VOL:I = 0x2

.field public static final VOL_VOICE_ACTIVITY_HEARING_AID:I = 0x6

.field public static final mMetricsId:Ljava/lang/String; = "audio.volume.event"


# instance fields
.field public final mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mCaller:Ljava/lang/String;

.field public final mGroupName:Ljava/lang/String;

.field public final mOp:I

.field public final mStream:I

.field public final mVal1:I

.field public final mVal2:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 198
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 199
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 200
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, -0x1

    .line 203
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 207
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 185
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 186
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 187
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 188
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, -0x1

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 224
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 225
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 226
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 227
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 228
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 233
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    .line 173
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 174
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 175
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 176
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 177
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 178
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 181
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    .line 249
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 250
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 251
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 252
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    const/4 p1, 0x0

    .line 253
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, 0x0

    .line 254
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 255
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 257
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    return-void
.end method

.method public constructor <init>(ILandroid/media/AudioAttributes;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 237
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 238
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    const/4 p1, -0x1

    .line 239
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 240
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 241
    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 242
    iput-object p6, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    return-void
.end method

.method public constructor <init>(IZII)V
    .registers 5

    .line 211
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 212
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 213
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 214
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 215
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 219
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent()V

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 9

    .line 367
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    const-string v1, " stream:"

    const-string v2, ") causes setting HEARING_AID volume to idx:"

    const/4 v3, 0x1

    const-string v4, " dir:"

    const-string v5, " index:"

    const-string v6, ") from "

    const-string v7, " flags:0x"

    packed-switch v0, :pswitch_data_1fc

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIXME invalid op:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 395
    :pswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLeAudioVolume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxIndex:"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 431
    :pswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolumeStreamState.muteInternally(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 432
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    if-ne p0, v3, :cond_59

    const-string p0, ", muted)"

    goto :goto_5b

    :cond_59
    const-string p0, ", unmuted)"

    :goto_5b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 423
    :pswitch_63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVolumeIndexForAttributes(attr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 424
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " group: "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 417
    :pswitch_9f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMode("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 418
    invoke-static {v3}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 411
    :pswitch_c9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Voice activity change ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    iget v4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    if-ne v4, v3, :cond_d7

    const-string v3, "active"

    goto :goto_da

    :cond_d7
    const-string/jumbo v3, "inactive"

    :goto_da
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :pswitch_f6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustStreamVolumeForUid(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 405
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-static {v1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :pswitch_12b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAvrcpVolume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 390
    :pswitch_140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setHearingAidVolume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gain dB:"

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 383
    :pswitch_15f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setStreamVolume(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 384
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 376
    :pswitch_191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustStreamVolume(stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 377
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-static {v1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 369
    :pswitch_1c6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustSuggestedStreamVolume(sugg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 370
    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    invoke-static {v1}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_1c6
        :pswitch_191
        :pswitch_15f
        :pswitch_140
        :pswitch_12b
        :pswitch_f6
        :pswitch_c9
        :pswitch_9f
        :pswitch_63
        :pswitch_42
        :pswitch_23
    .end packed-switch
.end method

.method public final logMetricEvent()V
    .registers 5

    .line 270
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    const/4 v1, 0x1

    const-string v2, "audio.volume.event"

    packed-switch v0, :pswitch_data_1c0

    :pswitch_8
    return-void

    .line 316
    :pswitch_9
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "setLeAudioVolume"

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 318
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->MAX_INDEX:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 319
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 348
    :pswitch_33
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ATTRIBUTES:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 349
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "setVolumeIndexForAttributes"

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->GROUP:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 354
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 339
    :pswitch_79
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "modeChangeHearingAid"

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 341
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 342
    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 344
    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 345
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 329
    :pswitch_af
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "voiceActivityHearingAid"

    .line 330
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 331
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 333
    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    if-ne v3, v1, :cond_d2

    const-string v1, "active"

    goto :goto_d5

    :cond_d2
    const-string/jumbo v1, "inactive"

    .line 332
    :goto_d5
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 335
    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 323
    :pswitch_e9
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "setAvrcpVolume"

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 325
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 309
    :pswitch_107
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "setHearingAidVolume"

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->GAIN_DB:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    int-to-double v2, v2

    .line 311
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 299
    :pswitch_132
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "setStreamVolume"

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 305
    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :pswitch_170
    if-eqz v0, :cond_17e

    if-eq v0, v1, :cond_17b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_178

    return-void

    :cond_178
    const-string v0, "adjustStreamVolumeForUid"

    goto :goto_180

    :cond_17b
    const-string v0, "adjustStreamVolume"

    goto :goto_180

    :cond_17e
    const-string v0, "adjustSuggestedStreamVolume"

    .line 288
    :goto_180
    new-instance v1, Landroid/media/MediaMetrics$Item;

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DIRECTION:Landroid/media/MediaMetrics$Key;

    .line 290
    iget v3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    if-lez v3, :cond_197

    const-string/jumbo v3, "up"

    goto :goto_199

    :cond_197
    const-string v3, "down"

    :goto_199
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 294
    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    nop

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_170
        :pswitch_170
        :pswitch_132
        :pswitch_107
        :pswitch_e9
        :pswitch_170
        :pswitch_af
        :pswitch_79
        :pswitch_33
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
