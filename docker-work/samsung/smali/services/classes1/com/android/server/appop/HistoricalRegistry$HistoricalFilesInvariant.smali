.class public Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoricalFilesInvariant"
.end annotation


# instance fields
.field public final mBeginFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    return-void
.end method

.method public static getOldestFileOffsetMillis(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 1785
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    .line 1788
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1789
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_19
    if-ge v2, v1, :cond_36

    .line 1791
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1792
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_33

    .line 1793
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_36
    const-string p0, ".xml"

    const-string v1, ""

    .line 1796
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public startTracking(Ljava/io/File;)V
    .registers 2

    .line 1762
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1764
    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public stopTracking(Ljava/io/File;)V
    .registers 7

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1772
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1774
    :cond_e
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->getOldestFileOffsetMillis(Ljava/util/List;)J

    move-result-wide v1

    .line 1775
    invoke-static {v0}, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->getOldestFileOffsetMillis(Ljava/util/List;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1d

    return-void

    .line 1777
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "History loss detected!\nold files: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1779
    invoke-static {p0, v0, p1}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 1780
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
