.class public final Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"


# instance fields
.field public arcSupported:Z

.field public cecSupported:Z

.field public physicalAddress:S

.field public portId:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 6
    iput v0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 7
    iput-boolean v0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 8
    iput-boolean v0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 9
    iput-short v0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

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
            "Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 76
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 81
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 80
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 86
    new-instance v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    invoke-direct {v4}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;-><init>()V

    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    .line 87
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
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
            "Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 115
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 116
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 117
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0xc

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 119
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    mul-int/lit8 v5, v4, 0xc

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 121
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 124
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

    .line 19
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 22
    :cond_11
    check-cast p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 23
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    iget v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 26
    :cond_1a
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    iget v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    if-eq v2, v3, :cond_21

    return v1

    .line 29
    :cond_21
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    iget-boolean v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    if-eq v2, v3, :cond_28

    return v1

    .line 32
    :cond_28
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    iget-boolean v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    if-eq v2, v3, :cond_2f

    return v1

    .line 35
    :cond_2f
    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    iget-short p1, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    if-eq p0, p1, :cond_36

    return v1

    :cond_36
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 48
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 98
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 99
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    const-wide/16 v0, 0x9

    add-long/2addr v0, p3

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    const-wide/16 v0, 0xa

    add-long/2addr p3, v0

    .line 101
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xc

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 71
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".type = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    invoke-static {v1}, Landroid/hardware/tv/cec/V1_0/HdmiPortType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .portId = "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cecSupported = "

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .arcSupported = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .physicalAddress = "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 129
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 130
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 131
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x9

    add-long/2addr v0, p2

    .line 132
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xa

    add-long/2addr p2, v0

    .line 133
    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt16(JS)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 105
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
