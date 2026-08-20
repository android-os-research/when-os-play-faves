.class public final Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
.super Ljava/lang/Object;
.source "PhraseRecognitionExtra.java"


# instance fields
.field public confidenceLevel:I

.field public id:I

.field public levels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;",
            ">;"
        }
    .end annotation
.end field

.field public recognitionModes:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 12
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 16
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

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
            "Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 83
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 87
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 93
    new-instance v4, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-direct {v4}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    .line 94
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
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
            "Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 133
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 134
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 135
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 137
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 139
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 142
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

    .line 32
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    if-eq v2, v3, :cond_11

    return v1

    .line 35
    :cond_11
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 36
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 39
    :cond_1a
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    if-eq v2, v3, :cond_21

    return v1

    .line 42
    :cond_21
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    if-eq v2, v3, :cond_28

    return v1

    .line 45
    :cond_28
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 57
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 104
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 105
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 106
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    add-long/2addr v4, v6

    .line 108
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 109
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 113
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v4, :cond_58

    .line 115
    new-instance v3, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-direct {v3}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    mul-int/lit8 v5, v2, 0x8

    int-to-long v5, v5

    move-object/from16 v7, p1

    .line 116
    invoke-virtual {v3, v7, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 117
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_58
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x20

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 78
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".id = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .recognitionModes = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .confidenceLevel = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .levels = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 147
    iget v4, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 148
    iget v4, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    .line 149
    iget v6, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 151
    iget-object v4, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x10

    add-long/2addr p2, v5

    add-long/2addr v2, p2

    .line 152
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    add-long/2addr v2, p2

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p1, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 154
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_35
    if-ge v5, v4, :cond_48

    .line 156
    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    mul-int/lit8 v6, v5, 0x8

    int-to-long v6, v6

    invoke-virtual {v3, v2, v6, v7}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_48
    add-long/2addr p2, v0

    .line 158
    invoke-virtual {p1, p2, p3, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 123
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
