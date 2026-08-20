.class public Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/ProtoStreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnergyMeasurementUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyMeasurement;J)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 327
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 328
    aget-object v1, p0, v0

    iget-wide v2, v1, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-void
.end method

.method public static getProtoBytes([Landroid/hardware/power/stats/EnergyMeasurement;)[B
    .registers 2

    .line 333
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 334
    invoke-static {p0, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V

    .line 335
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 342
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_46

    const-wide v1, 0x20b00000002L

    .line 343
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    .line 344
    aget-object v5, p0, v0

    iget v5, v5, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000002L

    .line 345
    aget-object v5, p0, v0

    iget-wide v5, v5, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000004L

    .line 346
    aget-object v5, p0, v0

    iget-wide v5, v5, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000003L

    .line 347
    aget-object v5, p0, v0

    iget-wide v5, v5, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 348
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_46
    return-void
.end method

.method public static print([Landroid/hardware/power/stats/EnergyMeasurement;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 424
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_4a

    .line 425
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Timestamp (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget-wide v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", Duration (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget-wide v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", Energy (uWs): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    iget-wide v3, v3, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4a
    return-void
.end method

.method public static unpackEnergyMeasurementProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyMeasurement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    new-instance v0, Landroid/hardware/power/stats/EnergyMeasurement;

    invoke-direct {v0}, Landroid/hardware/power/stats/EnergyMeasurement;-><init>()V

    .line 385
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_65

    const/4 v2, 0x1

    if-eq v1, v2, :cond_59

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_41

    const/4 v2, 0x4

    if-eq v1, v2, :cond_35

    .line 410
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in EnergyMeasurementProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_35
    const-wide v1, 0x10300000004L

    .line 398
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    goto :goto_5

    :cond_41
    const-wide v1, 0x10300000003L

    .line 403
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    goto :goto_5

    :cond_4d
    const-wide v1, 0x10300000002L

    .line 393
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    goto :goto_5

    :cond_59
    const-wide v1, 0x10500000001L

    .line 388
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/power/stats/EnergyMeasurement;->id:I
    :try_end_64
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_5 .. :try_end_64} :catch_66

    goto :goto_5

    :cond_65
    return-object v0

    .line 415
    :catch_66
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wire Type mismatch in EnergyMeasurementProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyMeasurement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 354
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    .line 359
    new-instance v2, Landroid/hardware/power/stats/EnergyMeasurement;

    invoke-direct {v2}, Landroid/hardware/power/stats/EnergyMeasurement;-><init>()V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    const-wide v1, 0x20b00000002L

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 363
    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->unpackEnergyMeasurementProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_f

    :cond_2f
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    .line 367
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/power/stats/EnergyMeasurement;

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/EnergyMeasurement;

    return-object v1

    .line 369
    :cond_3f
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_f .. :try_end_5b} :catch_5c

    goto :goto_f

    .line 373
    :catch_5c
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wire Type mismatch in proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
