.class public Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/ProtoStreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerEntityUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpsys([Landroid/hardware/power/stats/PowerEntity;Ljava/io/PrintWriter;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_6c

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerEntityId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", PowerEntityName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v2, :cond_69

    move v2, v0

    .line 102
    :goto_33
    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v3, v3

    if-ge v2, v3, :cond_69

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  StateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", StateName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6c
    return-void
.end method

.method public static getProtoBytes([Landroid/hardware/power/stats/PowerEntity;)[B
    .registers 2

    .line 53
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 54
    invoke-static {p0, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    .line 55
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V
    .registers 16

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 62
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_58

    const-wide v2, 0x20b00000001L

    .line 63
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 64
    aget-object v4, p0, v1

    iget v4, v4, Landroid/hardware/power/stats/PowerEntity;->id:I

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 65
    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 66
    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v4, :cond_52

    .line 67
    array-length v4, v4

    move v9, v0

    :goto_31
    if-ge v9, v4, :cond_52

    .line 69
    aget-object v10, p0, v1

    iget-object v10, v10, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v10, v10, v9

    const-wide v11, 0x20b00000003L

    .line 70
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 71
    iget v13, v10, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {p1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 72
    iget-object v10, v10, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 73
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 76
    :cond_52
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_58
    return-void
.end method

.method public static print([Landroid/hardware/power/stats/PowerEntity;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_75

    .line 84
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "powerEntityId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    iget v4, v4, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", powerEntityName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    if-eqz v2, :cond_72

    move v2, v0

    .line 87
    :goto_38
    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v3, v3

    if-ge v2, v3, :cond_72

    .line 88
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  StateId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v1

    iget-object v5, v5, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/hardware/power/stats/State;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", StateName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v1

    iget-object v5, v5, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_75
    return-void
.end method
