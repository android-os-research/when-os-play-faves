.class public final Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
.super Ljava/lang/Object;
.source "OptionalModelParameterRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;
    }
.end annotation


# instance fields
.field public hidl_d:B

.field public hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

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
            "Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 127
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 132
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 131
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 137
    new-instance v4, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-direct {v4}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;-><init>()V

    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    .line 138
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 139
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
            "Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;",
            ">;)V"
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 176
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 177
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 178
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 179
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0xc

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 181
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    mul-int/lit8 v5, v4, 0xc

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 183
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 186
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

    .line 77
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    if-eq v2, v3, :cond_11

    return v1

    .line 80
    :cond_11
    check-cast p1, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 81
    iget-byte v2, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    iget-byte v3, p1, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 84
    :cond_1a
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method public getDiscriminator()B
    .registers 1

    .line 67
    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    return p0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 94
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 92
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .registers 5

    .line 32
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    if-eqz v0, :cond_48

    .line 33
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_11
    const-string/jumbo v0, "null"

    .line 34
    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 37
    invoke-static {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_48
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_5d

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_5d

    .line 41
    :cond_55
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_5d
    :goto_5d
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    check-cast p0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object p0
.end method

.method public noinit(Landroid/hidl/safe_union/V1_0/Monostate;)V
    .registers 3

    const/4 v0, 0x0

    .line 27
    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 28
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .registers 5

    .line 52
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    .line 53
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_12
    const-string/jumbo v0, "null"

    .line 54
    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 57
    invoke-static {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_49
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_5e

    const-class v1, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_5e

    .line 61
    :cond_56
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_5e
    :goto_5e
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    return-object p0
.end method

.method public range(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)V
    .registers 3

    const/4 v0, 0x1

    .line 47
    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 48
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 148
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_3a

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    .line 156
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 157
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_45

    .line 161
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown union discriminator (value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_3a
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 152
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    :goto_45
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xc

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 122
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-byte v1, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    if-eqz v1, :cond_3d

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const-string v1, ".range = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 113
    :cond_1f
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const-string v1, ".noinit = "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_49
    const-string/jumbo p0, "}"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 191
    iget-byte v2, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 192
    iget-byte v0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_38

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1a

    .line 198
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object p0

    add-long/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_40

    .line 202
    :cond_1a
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown union discriminator (value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_38
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object p0

    add-long/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    :goto_40
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 167
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
