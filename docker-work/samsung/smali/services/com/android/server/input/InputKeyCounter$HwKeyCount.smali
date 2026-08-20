.class public Lcom/android/server/input/InputKeyCounter$HwKeyCount;
.super Ljava/lang/Object;
.source "InputKeyCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputKeyCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HwKeyCount"
.end annotation


# instance fields
.field public mAllKeyCount:J

.field public mKeyCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/input/InputKeyCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputKeyCounter;)V
    .registers 4

    .line 149
    iput-object p1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->this$0:Lcom/android/server/input/InputKeyCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/InputKeyCounter;Lcom/android/server/input/InputKeyCounter$HwKeyCount-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>(Lcom/android/server/input/InputKeyCounter;)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 7

    .line 154
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5c

    .line 156
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    iget-object v3, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/android/server/input/InputKeyCounter;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string v2, "InputKeyCounter"

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add keyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentCount= "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 164
    :cond_5c
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcom/android/server/input/InputKeyCounter;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "InputKeyCounter"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentCount: 1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_8a
    :goto_8a
    iget-wide v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 171
    monitor-exit v0

    return-void

    :catchall_93
    move-exception p0

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public add(II)V
    .registers 7

    .line 175
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v1, p2

    .line 177
    iput-wide v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 178
    invoke-static {}, Lcom/android/server/input/InputKeyCounter;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "InputKeyCounter"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentCount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public clearKeyCount()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v1, 0x0

    .line 208
    iput-wide v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 209
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public getAllKeyCount()J
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mAllKeyCount:J

    .line 197
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_23

    .line 199
    invoke-static {}, Lcom/android/server/input/InputKeyCounter;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "InputKeyCounter"

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllKeyCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-wide v1

    :catchall_23
    move-exception p0

    .line 197
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public getKeyCountMap()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 187
    :try_start_8
    iget-object p0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 188
    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception p0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method
