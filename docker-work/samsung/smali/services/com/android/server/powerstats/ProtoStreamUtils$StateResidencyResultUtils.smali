.class public Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/ProtoStreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateResidencyResultUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/StateResidencyResult;J)V
    .registers 10

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 116
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 117
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v2, v2

    move v3, v0

    :goto_e
    if-ge v3, v2, :cond_1e

    .line 119
    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v4, v4, v3

    .line 121
    iget-wide v5, v4, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    add-long/2addr v5, p1

    iput-wide v5, v4, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    return-void
.end method

.method public static getProtoBytes([Landroid/hardware/power/stats/StateResidencyResult;)[B
    .registers 2

    .line 127
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 128
    invoke-static {p0, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V

    .line 129
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x0

    move v3, v2

    .line 136
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_6c

    .line 137
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v4, v4

    const-wide v5, 0x20b00000002L

    .line 138
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 139
    aget-object v9, v0, v3

    iget v9, v9, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    const-wide v10, 0x10500000001L

    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move v9, v2

    :goto_27
    if-ge v9, v4, :cond_66

    .line 142
    aget-object v12, v0, v3

    iget-object v12, v12, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v12, v12, v9

    .line 144
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 145
    iget v15, v12, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-virtual {v1, v10, v11, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000002L

    .line 146
    iget-wide v10, v12, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000003L

    .line 148
    iget-wide v10, v12, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000004L

    .line 150
    iget-wide v10, v12, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 152
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const-wide v5, 0x20b00000002L

    const-wide v10, 0x10500000001L

    goto :goto_27

    .line 154
    :cond_66
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_6c
    return-void
.end method

.method public static print([Landroid/hardware/power/stats/StateResidencyResult;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 266
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_82

    .line 267
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerEntityId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    iget v4, v4, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 268
    :goto_25
    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v3, v3

    if-ge v2, v3, :cond_7f

    .line 269
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  StateId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v1

    iget-object v5, v5, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", TotalTimeInStateMs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v1

    iget-object v5, v5, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v5, v5, v2

    iget-wide v5, v5, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", TotalStateEntryCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v1

    iget-object v5, v5, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v5, v5, v2

    iget-wide v5, v5, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", LastEntryTimestampMs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v1

    iget-object v5, v5, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v5, v5, v2

    iget-wide v5, v5, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_82
    return-void
.end method

.method public static unpackProtoMessage([B)[Landroid/hardware/power/stats/StateResidencyResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    .line 165
    new-instance v2, Landroid/hardware/power/stats/StateResidencyResult;

    invoke-direct {v2}, Landroid/hardware/power/stats/StateResidencyResult;-><init>()V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    const-wide v1, 0x20b00000002L

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 170
    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->unpackStateResidencyResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_f

    :cond_2f
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    .line 174
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/power/stats/StateResidencyResult;

    .line 173
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/StateResidencyResult;

    return-object v1

    .line 176
    :cond_3f
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in PowerStatsServiceResidencyProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_f .. :try_end_5b} :catch_5c

    goto :goto_f

    .line 180
    :catch_5c
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wire Type mismatch in PowerStatsServiceResidencyProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static unpackStateResidencyProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidency;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Landroid/hardware/power/stats/StateResidency;

    invoke-direct {v0}, Landroid/hardware/power/stats/StateResidency;-><init>()V

    .line 227
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

    .line 251
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in StateResidencyProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_35
    const-wide v1, 0x10300000004L

    .line 244
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    goto :goto_5

    :cond_41
    const-wide v1, 0x10300000003L

    .line 239
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    goto :goto_5

    :cond_4d
    const-wide v1, 0x10300000002L

    .line 234
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    goto :goto_5

    :cond_59
    const-wide v1, 0x10500000001L

    .line 229
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/power/stats/StateResidency;->id:I
    :try_end_64
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_5 .. :try_end_64} :catch_66

    goto :goto_5

    :cond_65
    return-object v0

    .line 257
    :catch_66
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wire Type mismatch in StateResidencyProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static unpackStateResidencyResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidencyResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/hardware/power/stats/StateResidencyResult;

    invoke-direct {v0}, Landroid/hardware/power/stats/StateResidencyResult;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :goto_a
    :try_start_a
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    const/4 v3, 0x1

    if-eq v2, v3, :cond_48

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    .line 210
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field in StateResidencyResultProto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_34
    const-wide v2, 0x20b00000002L

    .line 199
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 200
    invoke-static {p0}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->unpackStateResidencyProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/StateResidency;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_a

    :cond_48
    const-wide v2, 0x10500000001L

    .line 195
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    goto :goto_a

    .line 206
    :cond_54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/power/stats/StateResidency;

    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/stats/StateResidency;

    iput-object v2, v0, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;
    :try_end_62
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_a .. :try_end_62} :catch_63

    return-object v0

    .line 215
    :catch_63
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wire Type mismatch in StateResidencyResultProto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
