.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 966
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const/4 p1, 0x1

    .line 967
    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/4 p1, 0x0

    .line 968
    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 14

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v1, :cond_1a

    move-wide v9, v2

    move-object v7, v4

    move v8, v5

    :goto_17
    move v1, v6

    goto/16 :goto_82

    .line 918
    :cond_1a
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ".gz"

    .line 919
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_37

    .line 921
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v8, v9

    goto :goto_38

    :cond_37
    move v8, v5

    :goto_38
    const-string v10, ".lost"

    .line 923
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4f

    or-int/lit8 v8, v8, 0x1

    add-int/2addr v1, v6

    .line 925
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    move v1, v5

    goto :goto_78

    :cond_4f
    const-string v10, ".txt"

    .line 926
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_64

    or-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v6

    .line 928
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_64
    const-string v10, ".dat"

    .line 929
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_77

    add-int/2addr v1, v6

    .line 930
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_77
    move v1, v6

    :goto_78
    if-nez v1, :cond_81

    .line 936
    :try_start_7a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_7e} :catch_7f

    goto :goto_82

    :catch_7f
    move-wide v9, v2

    goto :goto_17

    :cond_81
    move-wide v9, v2

    :goto_82
    if-eqz v1, :cond_a6

    .line 943
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid filename: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropBoxManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 947
    iput-object v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 948
    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 949
    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 950
    iput v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void

    .line 954
    :cond_a6
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long p1, p2

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 955
    invoke-static {v7}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 956
    iput v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 957
    iput-wide v9, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_48

    .line 869
    invoke-static {p3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 870
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 871
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 873
    invoke-virtual {p0, p2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 874
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_29

    .line 877
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    int-to-long p3, p7

    add-long/2addr p1, p3

    const-wide/16 p5, 0x1

    sub-long/2addr p1, p5

    div-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void

    .line 875
    :cond_29
    new-instance p0, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t rename "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 867
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 890
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const/4 p2, 0x1

    .line 891
    iput p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/4 p2, 0x0

    .line 892
    iput p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 893
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .registers 6

    .line 842
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 845
    :cond_b
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 848
    :cond_16
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_21

    return v0

    .line 851
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 833
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    move-result p0

    return p0
.end method

.method public deleteFile(Ljava/io/File;)V
    .registers 3

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_d
    return-void
.end method

.method public final getExtension()Ljava/lang/String;
    .registers 3

    .line 981
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const-string p0, ".lost"

    return-object p0

    .line 984
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_17

    const-string v1, ".txt"

    goto :goto_19

    :cond_17
    const-string v1, ".dat"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    iget p0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_25

    const-string p0, ".gz"

    goto :goto_27

    :cond_25
    const-string p0, ""

    :goto_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFilename()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 4

    .line 992
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return-object p0
.end method

.method public hasFile()Z
    .registers 1

    .line 976
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
