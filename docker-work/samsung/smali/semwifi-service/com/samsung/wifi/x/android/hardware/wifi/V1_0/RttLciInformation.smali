.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;
.super Ljava/lang/Object;
.source "RttLciInformation.java"


# instance fields
.field public altitude:I

.field public altitudeUnc:B

.field public floor:I

.field public heightAboveFloor:I

.field public heightUnc:I

.field public latitude:J

.field public latitudeUnc:B

.field public longitude:J

.field public longitudeUnc:B

.field public motionPattern:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 12
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 20
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 24
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 28
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 35
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 39
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 43
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 47
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 144
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 149
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 148
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 154
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    .line 155
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 156
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;",
            ">;)V"
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 187
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 188
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 189
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 190
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 192
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 194
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 197
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 57
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    if-eq v2, v3, :cond_11

    return v1

    .line 60
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    .line 61
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    return v1

    .line 64
    :cond_1c
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    return v1

    .line 67
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 70
    :cond_2c
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    if-eq v2, v3, :cond_33

    return v1

    .line 73
    :cond_33
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    if-eq v2, v3, :cond_3a

    return v1

    .line 76
    :cond_3a
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    if-eq v2, v3, :cond_41

    return v1

    .line 79
    :cond_41
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    if-eq v2, v3, :cond_48

    return v1

    .line 82
    :cond_48
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    if-eq v2, v3, :cond_4f

    return v1

    .line 85
    :cond_4f
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    if-eq v2, v3, :cond_56

    return v1

    .line 88
    :cond_56
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    if-eq p0, p1, :cond_5d

    return v1

    :cond_5d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    .line 100
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    .line 101
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    .line 102
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 96
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 165
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 166
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 167
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 168
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    const-wide/16 v0, 0x15

    add-long/2addr v0, p3

    .line 169
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    const-wide/16 v0, 0x16

    add-long/2addr v0, p3

    .line 170
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 171
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 172
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 173
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    const-wide/16 v0, 0x24

    add-long/2addr p3, v0

    .line 174
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x28

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 139
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".latitude = "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .longitude = "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .altitude = "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .latitudeUnc = "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .longitudeUnc = "

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .altitudeUnc = "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .motionPattern = "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttMotionPattern;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .floor = "

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .heightAboveFloor = "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .heightUnc = "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 202
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitude:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 203
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitude:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 204
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitude:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 205
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->latitudeUnc:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x15

    add-long/2addr v0, p2

    .line 206
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->longitudeUnc:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x16

    add-long/2addr v0, p2

    .line 207
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->altitudeUnc:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 208
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->motionPattern:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 209
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->floor:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 210
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightAboveFloor:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr p2, v0

    .line 211
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->heightUnc:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 178
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 179
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
