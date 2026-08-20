.class public final Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;
.super Ljava/lang/Object;
.source "ProgramListChunk.java"


# instance fields
.field public complete:Z

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field public purge:Z

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 31
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

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
            "Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 105
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 110
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 109
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 115
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;-><init>()V

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    .line 116
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 117
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
            "Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 167
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 171
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 173
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
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

    .line 54
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    if-eq v2, v3, :cond_11

    return v1

    .line 57
    :cond_11
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 58
    iget-boolean v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    iget-boolean v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 61
    :cond_1a
    iget-boolean v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    iget-boolean v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    if-eq v2, v3, :cond_21

    return v1

    .line 64
    :cond_21
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 67
    :cond_2c
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    return v1

    :cond_37
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    .line 78
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    .line 79
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    .line 126
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    const-wide/16 v1, 0x1

    add-long v1, p3, v1

    .line 127
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    const-wide/16 v13, 0x8

    add-long v1, p3, v13

    add-long v3, v1, v13

    .line 129
    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x78

    int-to-long v3, v3

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, v1, v11

    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    .line 130
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 134
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_43
    if-ge v2, v15, :cond_58

    .line 136
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    mul-int/lit8 v4, v2, 0x78

    int-to-long v4, v4

    .line 137
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 138
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_58
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    add-long/2addr v13, v1

    .line 142
    invoke-virtual {v10, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v3, v13, 0x10

    int-to-long v3, v3

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, v1, v11

    const/4 v10, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v10

    .line 143
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 147
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move/from16 v2, v16

    :goto_7c
    if-ge v2, v13, :cond_91

    .line 149
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    .line 150
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 151
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_91
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x28

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 100
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".purge = "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .complete = "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .modified = "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .removed = "

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    .line 181
    iget-boolean v6, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x1

    add-long v4, p2, v4

    .line 182
    iget-boolean v6, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 184
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    .line 185
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 186
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 187
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x78

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_35
    if-ge v12, v4, :cond_4a

    .line 189
    iget-object v14, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    mul-int/lit8 v15, v12, 0x78

    int-to-long v9, v15

    invoke-virtual {v14, v11, v9, v10}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_35

    :cond_4a
    add-long/2addr v7, v2

    .line 191
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 194
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    add-long/2addr v5, v7

    .line 195
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    add-long v9, v7, v5

    .line 196
    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 197
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6a
    if-ge v13, v4, :cond_7d

    .line 199
    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    mul-int/lit8 v9, v13, 0x10

    int-to-long v9, v9

    invoke-virtual {v6, v5, v9, v10}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6a

    :cond_7d
    add-long/2addr v7, v2

    .line 201
    invoke-virtual {v1, v7, v8, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 157
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
