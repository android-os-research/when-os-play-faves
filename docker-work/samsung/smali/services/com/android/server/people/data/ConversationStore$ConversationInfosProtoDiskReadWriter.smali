.class public Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "ConversationStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/ConversationStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationInfosProtoDiskReadWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<",
        "Ljava/util/List<",
        "Lcom/android/server/people/data/ConversationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mConversationInfoFileName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Hi0eZ12O-IOCYVO2Q42v1BVP_40(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->lambda$protoStreamWriter$0(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TqdwZbBmjHKbgTlS-HsEOIeIR9g(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    .line 322
    invoke-direct {p0, p1, p3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 323
    iput-object p2, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .registers 5

    .line 340
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 342
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    .line 343
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    goto :goto_4

    :cond_13
    const-wide v1, 0x20b00000001L

    .line 347
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 349
    invoke-static {p0}, Lcom/android/server/people/data/ConversationInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    .line 351
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 352
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_27

    goto :goto_4

    :catch_27
    move-exception p0

    .line 355
    invoke-static {}, Lcom/android/server/people/data/ConversationStore;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to read protobuf input stream."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    return-object v0
.end method

.method public static synthetic lambda$protoStreamWriter$0(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V
    .registers 5

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    const-wide v1, 0x20b00000001L

    .line 330
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 331
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 332
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4

    :cond_20
    return-void
.end method


# virtual methods
.method public deleteConversationsFile()V
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader<",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;>;"
        }
    .end annotation

    .line 339
    new-instance p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter$$ExternalSyntheticLambda1;-><init>()V

    return-object p0
.end method

.method public protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter<",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;>;"
        }
    .end annotation

    .line 328
    new-instance p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public saveConversationsImmediately(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public scheduleConversationsSave(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
