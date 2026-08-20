.class public Lcom/samsung/android/server/pm/install/PackageCacherUtils;
.super Ljava/lang/Object;
.source "PackageCacherUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageCacher"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeModifiedTimeOfTheCacheIfNeeded(Ljava/io/File;Ljava/io/File;)J
    .registers 6

    if-eqz p0, :cond_4c

    if-nez p1, :cond_5

    goto :goto_4c

    .line 15
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_47

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheResult lastModified(apk): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", lastModified(cache): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageCacher"

    .line 18
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_47
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    return-wide p0

    :cond_4c
    :goto_4c
    const-wide/16 p0, -0x1

    return-wide p0
.end method
