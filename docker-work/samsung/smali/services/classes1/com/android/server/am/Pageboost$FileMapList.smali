.class public final Lcom/android/server/am/Pageboost$FileMapList;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMapList"
.end annotation


# static fields
.field public static final mNodeName:Ljava/lang/String; = "filemap_list"


# instance fields
.field public mCorrectness:Z

.field public mFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFiles(Lcom/android/server/am/Pageboost$FileMapList;)Ljava/util/Hashtable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    return-object p0
.end method

.method public constructor <init>(I)V
    .registers 8

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 1548
    iput v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mPid:I

    .line 1549
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-gtz p1, :cond_12

    return-void

    .line 1555
    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1557
    iput p1, p0, Lcom/android/server/am/Pageboost$FileMapList;->mPid:I

    .line 1558
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filemap pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filemap_list"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1560
    :try_start_4b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_55} :catch_8b

    const/4 p1, 0x1

    .line 1561
    :try_start_56
    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    .line 1563
    :goto_58
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 1564
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$FileMapList;->add(Ljava/lang/String;)V

    goto :goto_58

    .line 1566
    :cond_62
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", done correctly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_56 .. :try_end_7d} :catchall_81

    .line 1567
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_8b

    goto :goto_a8

    :catchall_81
    move-exception p1

    .line 1560
    :try_start_82
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v2

    :try_start_87
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8a
    throw p1
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8b} :catch_8b

    .line 1568
    :catch_8b
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aborted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    :goto_a8
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)V
    .registers 3

    .line 1574
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1575
    iget-object p0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public contain(Ljava/lang/String;)Z
    .registers 3

    .line 1580
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isCorrect()Z
    .registers 1

    .line 1584
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    return p0
.end method
