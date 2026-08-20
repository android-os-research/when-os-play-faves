.class public final Lcom/android/server/power/PowerHistorian$RecordBuffer;
.super Ljava/lang/Object;
.source "PowerHistorian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerHistorian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordBuffer"
.end annotation


# instance fields
.field public final mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/power/PowerHistorian$Record;",
            ">;"
        }
    .end annotation
.end field

.field public final mCapacity:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 133
    iput p1, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mCapacity:I

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/power/PowerHistorian$Record;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mCapacity:I

    if-lt v0, v1, :cond_f

    .line 138
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 140
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 149
    iget-object v0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_3b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 151
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "  %-5s %s"

    .line 150
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    goto :goto_8

    :cond_3b
    return-void
.end method

.method public getBuffer()Ljava/util/LinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/power/PowerHistorian$Record;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    return-object p0
.end method
