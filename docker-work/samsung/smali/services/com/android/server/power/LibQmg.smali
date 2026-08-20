.class public Lcom/android/server/power/LibQmg;
.super Ljava/lang/Object;
.source "LibQmg.java"


# instance fields
.field public fname:Ljava/lang/String;

.field public handle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    return-void
.end method

.method public static checkSupportQmg()Z
    .registers 2

    .line 86
    invoke-static {}, Lcom/android/server/power/LibQmg;->qmgCheckSupportQmg()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static native qmgCheckSupportQmg()I
.end method

.method public static native qmgClose(J)I
.end method

.method public static native qmgGetDelayTime(J)I
.end method

.method public static native qmgGetHeight(J)I
.end method

.method public static native qmgGetWidth(J)I
.end method

.method public static native qmgLoadBitmap(JLandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native qmgOpen(Ljava/lang/String;)J
.end method


# virtual methods
.method public final alreadyOpen()Z
    .registers 5

    .line 78
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public close()I
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->alreadyOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 71
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public ensureQmgHandle()V
    .registers 5

    .line 31
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 32
    iget-object v0, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgOpen(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    :cond_10
    return-void
.end method

.method public getDelayTime()I
    .registers 3

    .line 57
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 58
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    move-result p0

    if-gtz p0, :cond_d

    const/16 p0, 0x21

    :cond_d
    return p0
.end method

.method public getHeight()I
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 43
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 38
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    move-result p0

    return p0
.end method

.method public loadFrame(Landroid/graphics/Bitmap;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1, p1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fname: "

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " w: "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h: "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " d: "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " handle: "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
