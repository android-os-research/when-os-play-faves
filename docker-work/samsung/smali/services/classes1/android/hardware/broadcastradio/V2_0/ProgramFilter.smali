.class public final Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
.super Ljava/lang/Object;
.source "ProgramFilter.java"


# instance fields
.field public excludeModifications:Z

.field public identifierTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public identifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public includeCategories:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 35
    iput-boolean v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

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
            "Landroid/hardware/broadcastradio/V2_0/ProgramFilter;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 96
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 101
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 100
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 106
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    .line 107
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
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
            "Landroid/hardware/broadcastradio/V2_0/ProgramFilter;",
            ">;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 158
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 160
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 162
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 164
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 167
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

    .line 45
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    if-eq v2, v3, :cond_11

    return v1

    .line 48
    :cond_11
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    .line 49
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 52
    :cond_1e
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 55
    :cond_29
    iget-boolean v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    iget-boolean v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    if-eq v2, v3, :cond_30

    return v1

    .line 58
    :cond_30
    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    iget-boolean p1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    if-eq p0, p1, :cond_37

    return v1

    :cond_37
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    .line 67
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    .line 68
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    .line 70
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    const-wide/16 v6, 0x8

    add-long v8, v4, v6

    .line 118
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x4

    int-to-long v11, v9

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v4, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 119
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 123
    iget-object v5, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    move v9, v5

    :goto_28
    if-ge v9, v8, :cond_3d

    mul-int/lit8 v10, v9, 0x4

    int-to-long v10, v10

    .line 126
    invoke-virtual {v4, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 127
    iget-object v11, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    :cond_3d
    const-wide/16 v8, 0x10

    add-long v8, p3, v8

    add-long/2addr v6, v8

    .line 131
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v6, v4, 0x10

    int-to-long v11, v6

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 132
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 136
    iget-object v3, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_5c
    if-ge v5, v4, :cond_73

    .line 138
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    mul-int/lit8 v6, v5, 0x10

    int-to-long v6, v6

    move-object/from16 v8, p1

    .line 139
    invoke-virtual {v3, v8, v2, v6, v7}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 140
    iget-object v6, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    :cond_73
    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    const-wide/16 v2, 0x21

    add-long v2, p3, v2

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x28

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 91
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".identifierTypes = "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .identifiers = "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .includeCategories = "

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-boolean v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .excludeModifications = "

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 173
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long v9, v5, v7

    .line 174
    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v5, v9

    const/4 v13, 0x0

    .line 175
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 176
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_25
    if-ge v12, v2, :cond_3d

    mul-int/lit8 v14, v12, 0x4

    int-to-long v14, v14

    .line 178
    iget-object v13, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_25

    :cond_3d
    add-long/2addr v5, v3

    .line 180
    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 183
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v5, 0x10

    add-long v5, p2, v5

    add-long/2addr v7, v5

    .line 184
    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v5

    const/4 v7, 0x0

    .line 185
    invoke-virtual {v1, v9, v10, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 186
    new-instance v8, Landroid/os/HwBlob;

    mul-int/lit8 v9, v2, 0x10

    invoke-direct {v8, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v7

    :goto_5c
    if-ge v13, v2, :cond_6f

    .line 188
    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    mul-int/lit8 v9, v13, 0x10

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5c

    :cond_6f
    add-long/2addr v5, v3

    .line 190
    invoke-virtual {v1, v5, v6, v8}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x20

    add-long v2, p2, v2

    .line 192
    iget-boolean v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v2, 0x21

    add-long v2, p2, v2

    .line 193
    iget-boolean v0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 148
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
