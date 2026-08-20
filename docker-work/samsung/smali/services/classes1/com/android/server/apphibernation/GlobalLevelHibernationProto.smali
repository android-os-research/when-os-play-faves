.class public final Lcom/android/server/apphibernation/GlobalLevelHibernationProto;
.super Ljava/lang/Object;
.source "GlobalLevelHibernationProto.java"

# interfaces
.implements Lcom/android/server/apphibernation/ProtoReadWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/apphibernation/ProtoReadWriter<",
        "Ljava/util/List<",
        "Lcom/android/server/apphibernation/GlobalLevelState;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GlobalLevelHibernationProtoReadWriter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;->readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :goto_5
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7a

    .line 54
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    goto :goto_5

    .line 58
    :cond_14
    new-instance v0, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {v0}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    const-wide v3, 0x20b00000001L

    .line 59
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 60
    :goto_22
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    if-eq v5, v1, :cond_73

    .line 61
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    if-eq v5, v2, :cond_67

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5b

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4f

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined field in proto: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GlobalLevelHibernationProtoReadWriter"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_4f
    const-wide v5, 0x10300000003L

    .line 72
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    goto :goto_22

    :cond_5b
    const-wide v5, 0x10800000002L

    .line 68
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    goto :goto_22

    :cond_67
    const-wide v5, 0x10900000001L

    .line 64
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    goto :goto_22

    .line 78
    :cond_73
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 79
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7a
    return-object p0
.end method

.method public bridge synthetic writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .registers 3

    .line 33
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;->writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_3a

    const-wide v1, 0x20b00000001L

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 41
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/apphibernation/GlobalLevelState;

    const-wide v4, 0x10900000001L

    .line 42
    iget-object v6, v3, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10800000002L

    .line 43
    iget-boolean v6, v3, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10300000003L

    .line 44
    iget-wide v6, v3, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3a
    return-void
.end method
