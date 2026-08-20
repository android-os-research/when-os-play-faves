.class public final Landroid/hardware/health/V2_1/HealthConfig;
.super Ljava/lang/Object;
.source "HealthConfig.java"


# instance fields
.field public battery:Landroid/hardware/health/V1_0/HealthConfig;

.field public bootMinCap:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/health/V1_0/HealthConfig;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_1/HealthConfig;->battery:Landroid/hardware/health/V1_0/HealthConfig;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroid/hardware/health/V2_1/HealthConfig;->bootMinCap:I

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
            "Landroid/hardware/health/V2_1/HealthConfig;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 62
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xd0

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 66
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 72
    new-instance v4, Landroid/hardware/health/V2_1/HealthConfig;

    invoke-direct {v4}, Landroid/hardware/health/V2_1/HealthConfig;-><init>()V

    mul-int/lit16 v5, v3, 0xd0

    int-to-long v5, v5

    .line 73
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/health/V2_1/HealthConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
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
            "Landroid/hardware/health/V2_1/HealthConfig;",
            ">;)V"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 98
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 100
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xd0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 102
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/health/V2_1/HealthConfig;

    mul-int/lit16 v5, v4, 0xd0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/health/V2_1/HealthConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 104
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 107
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

    .line 23
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V2_1/HealthConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 26
    :cond_11
    check-cast p1, Landroid/hardware/health/V2_1/HealthConfig;

    .line 27
    iget-object v2, p0, Landroid/hardware/health/V2_1/HealthConfig;->battery:Landroid/hardware/health/V1_0/HealthConfig;

    iget-object v3, p1, Landroid/hardware/health/V2_1/HealthConfig;->battery:Landroid/hardware/health/V1_0/HealthConfig;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 30
    :cond_1e
    iget p0, p0, Landroid/hardware/health/V2_1/HealthConfig;->bootMinCap:I

    iget p1, p1, Landroid/hardware/health/V2_1/HealthConfig;->bootMinCap:I

    if-eq p0, p1, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Landroid/hardware/health/V2_1/HealthConfig;->battery:Landroid/hardware/health/V1_0/HealthConfig;

    .line 39
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/hardware/health/V2_1/HealthConfig;->bootMinCap:I

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 83
    iget-object v0, p0, Landroid/hardware/health/V2_1/HealthConfig;->battery:Landroid/hardware/health/V1_0/HealthConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/health/V1_0/HealthConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xc8

    add-long/2addr p3, v0

    .line 84
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/health/V2_1/HealthConfig;->bootMinCap:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xd0

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 57
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/health/V2_1/HealthConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".battery = "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Landroid/hardware/health/V2_1/HealthConfig;->battery:Landroid/hardware/health/V1_0/HealthConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .bootMinCap = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget p0, p0, Landroid/hardware/health/V2_1/HealthConfig;->bootMinCap:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 112
    iget-object v0, p0, Landroid/hardware/health/V2_1/HealthConfig;->battery:Landroid/hardware/health/V1_0/HealthConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/health/V1_0/HealthConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xc8

    add-long/2addr p2, v0

    .line 113
    iget p0, p0, Landroid/hardware/health/V2_1/HealthConfig;->bootMinCap:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 88
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xd0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/health/V2_1/HealthConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
