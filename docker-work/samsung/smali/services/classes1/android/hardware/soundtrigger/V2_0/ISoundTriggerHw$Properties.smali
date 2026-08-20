.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Properties"
.end annotation


# instance fields
.field public captureTransition:Z

.field public concurrentCapture:Z

.field public description:Ljava/lang/String;

.field public implementor:Ljava/lang/String;

.field public maxBufferMs:I

.field public maxKeyPhrases:I

.field public maxSoundModels:I

.field public maxUsers:I

.field public powerConsumptionMw:I

.field public recognitionModes:I

.field public triggerInEvent:Z

.field public uuid:Landroid/hardware/audio/common/V2_0/Uuid;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 109
    new-instance v1, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {v1}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    iput-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 113
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 117
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 121
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 125
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 129
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 133
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 137
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 141
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 146
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 261
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 264
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 266
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 265
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 269
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 271
    new-instance v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-direct {v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;-><init>()V

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    .line 272
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 273
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;",
            ">;)V"
        }
    .end annotation

    .line 317
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 319
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 320
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 321
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 322
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 324
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 326
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 329
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 156
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    if-eq v2, v3, :cond_11

    return v1

    .line 159
    :cond_11
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 160
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 163
    :cond_1e
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 166
    :cond_29
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    if-eq v2, v3, :cond_30

    return v1

    .line 169
    :cond_30
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    return v1

    .line 172
    :cond_3b
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    if-eq v2, v3, :cond_42

    return v1

    .line 175
    :cond_42
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    if-eq v2, v3, :cond_49

    return v1

    .line 178
    :cond_49
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    if-eq v2, v3, :cond_50

    return v1

    .line 181
    :cond_50
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    if-eq v2, v3, :cond_57

    return v1

    .line 184
    :cond_57
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    if-eq v2, v3, :cond_5e

    return v1

    .line 187
    :cond_5e
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    if-eq v2, v3, :cond_65

    return v1

    .line 190
    :cond_65
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    if-eq v2, v3, :cond_6c

    return v1

    .line 193
    :cond_6c
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    if-eq v2, v3, :cond_73

    return v1

    .line 196
    :cond_73
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    iget p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    if-eq p0, p1, :cond_7a

    return v1

    :cond_7a
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 205
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 206
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    .line 208
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    .line 213
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    .line 215
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xc

    aput-object p0, v0, v1

    .line 204
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 282
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    .line 285
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x0

    move-object/from16 v7, p1

    .line 284
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    .line 289
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    .line 292
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 291
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 296
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    .line 297
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    const-wide/16 v3, 0x24

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/hardware/audio/common/V2_0/Uuid;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    .line 298
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    .line 299
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    const-wide/16 v2, 0x3c

    add-long v2, p3, v2

    .line 300
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    .line 301
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    const-wide/16 v2, 0x44

    add-long v2, p3, v2

    .line 302
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    .line 303
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    .line 304
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    const-wide/16 v2, 0x4d

    add-long v2, p3, v2

    .line 305
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    .line 306
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x58

    .line 255
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 256
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".implementor = "

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .description = "

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .version = "

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .uuid = "

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .maxSoundModels = "

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxKeyPhrases = "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxUsers = "

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .recognitionModes = "

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .captureTransition = "

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .maxBufferMs = "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .concurrentCapture = "

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .triggerInEvent = "

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .powerConsumptionMw = "

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 334
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 335
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 336
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 337
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    const-wide/16 v1, 0x24

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/audio/common/V2_0/Uuid;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    .line 338
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    .line 339
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    .line 340
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 341
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    .line 342
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 343
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    .line 344
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x4d

    add-long/2addr v0, p2

    .line 345
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x50

    add-long/2addr p2, v0

    .line 346
    iget p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 310
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 311
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 312
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
