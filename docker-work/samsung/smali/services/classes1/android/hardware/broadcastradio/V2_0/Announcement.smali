.class public final Landroid/hardware/broadcastradio/V2_0/Announcement;
.super Ljava/lang/Object;
.source "Announcement.java"


# instance fields
.field public selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

.field public type:B

.field public vendorInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

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
            "Landroid/hardware/broadcastradio/V2_0/Announcement;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 79
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 78
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 84
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/Announcement;

    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/Announcement;-><init>()V

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    .line 85
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/broadcastradio/V2_0/Announcement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
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
            "Landroid/hardware/broadcastradio/V2_0/Announcement;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 123
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 124
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 125
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 127
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/broadcastradio/V2_0/Announcement;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/broadcastradio/V2_0/Announcement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 129
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 132
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

    .line 29
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/broadcastradio/V2_0/Announcement;

    if-eq v2, v3, :cond_11

    return v1

    .line 32
    :cond_11
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/Announcement;

    .line 33
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 36
    :cond_1e
    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    iget-byte v3, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    if-eq v2, v3, :cond_25

    return v1

    .line 39
    :cond_25
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    return v1

    :cond_30
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 48
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    .line 49
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 50
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 95
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, v9, v1, v5, v6}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x20

    add-long v5, p3, v5

    .line 96
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    const-wide/16 v5, 0x28

    add-long v5, p3, v5

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    .line 98
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x20

    int-to-long v7, v2

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v5, v3

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move-wide v2, v7

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    .line 99
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 103
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v10, :cond_53

    .line 105
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    mul-int/lit8 v4, v2, 0x20

    int-to-long v4, v4

    .line 106
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_53
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x38

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 69
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/Announcement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".selector = "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/AnnouncementType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .vendorInfo = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 137
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0x20

    add-long/2addr v3, p2

    .line 138
    iget-byte v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 140
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x28

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 141
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 142
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 143
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2e
    if-ge v5, v0, :cond_41

    .line 145
    iget-object v4, p0, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_41
    add-long/2addr p2, v1

    .line 147
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 113
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/Announcement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
