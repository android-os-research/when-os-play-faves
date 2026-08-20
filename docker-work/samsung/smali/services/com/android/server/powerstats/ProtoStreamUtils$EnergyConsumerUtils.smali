.class public Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/ProtoStreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnergyConsumerUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpsys([Landroid/hardware/power/stats/EnergyConsumer;Ljava/io/PrintWriter;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 534
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_46

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnergyConsumerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Ordinal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget-byte v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_46
    return-void
.end method

.method public static getProtoBytes([Landroid/hardware/power/stats/EnergyConsumer;)[B
    .registers 2

    .line 435
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 436
    invoke-static {p0, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    .line 437
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 444
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_46

    const-wide v1, 0x20b00000001L

    .line 445
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    .line 446
    aget-object v5, p0, v0

    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    .line 447
    aget-object v5, p0, v0

    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    .line 448
    aget-object v5, p0, v0

    iget-byte v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000004L

    .line 449
    aget-object v5, p0, v0

    iget-object v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 450
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_46
    return-void
.end method

.method public static print([Landroid/hardware/power/stats/EnergyConsumer;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 523
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_4a

    .line 524
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnergyConsumerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Ordinal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4a
    return-void
.end method

.method public static unpackEnergyConsumerProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    new-instance v0, Landroid/hardware/power/stats/EnergyConsumer;

    invoke-direct {v0}, Landroid/hardware/power/stats/EnergyConsumer;-><init>()V

    .line 487
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_66

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_41

    const/4 v2, 0x4

    if-eq v1, v2, :cond_35

    .line 508
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in EnergyConsumerProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_35
    const-wide v1, 0x10900000004L

    .line 501
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    goto :goto_5

    :cond_41
    const-wide v1, 0x10500000003L

    .line 497
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    goto :goto_5

    :cond_4e
    const-wide v1, 0x10500000002L

    .line 493
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    goto :goto_5

    :cond_5a
    const-wide v1, 0x10500000001L

    .line 489
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/power/stats/EnergyConsumer;->id:I
    :try_end_65
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_5 .. :try_end_65} :catch_67

    goto :goto_5

    :cond_66
    return-object v0

    .line 514
    :catch_67
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wire Type mismatch in EnergyConsumerProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyConsumer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 456
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    .line 461
    new-instance v2, Landroid/hardware/power/stats/EnergyConsumer;

    invoke-direct {v2}, Landroid/hardware/power/stats/EnergyConsumer;-><init>()V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    const-wide v1, 0x20b00000001L

    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 465
    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->unpackEnergyConsumerProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_f

    :cond_2f
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    .line 469
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    .line 468
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/EnergyConsumer;

    return-object v1

    .line 471
    :cond_3f
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_f .. :try_end_5b} :catch_5c

    goto :goto_f

    .line 475
    :catch_5c
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wire Type mismatch in proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
