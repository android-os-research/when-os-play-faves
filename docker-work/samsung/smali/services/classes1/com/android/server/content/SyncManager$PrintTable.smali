.class public Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintTable"
.end annotation


# instance fields
.field public final mCols:I

.field public mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 4053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4050
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 4054
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 1

    .line 4112
    iget-object p0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    .line 4104
    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_23

    .line 4105
    aget-object v2, p2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "  "

    .line 4106
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4108
    :cond_23
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public varargs set(II[Ljava/lang/Object;)V
    .registers 9

    .line 4058
    array-length v0, p3

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-gt v0, v1, :cond_43

    .line 4062
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    const-string v1, ""

    const/4 v2, 0x0

    if-gt v0, p1, :cond_26

    .line 4063
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v3, v3, [Ljava/lang/String;

    .line 4064
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4065
    :goto_1a
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v2, v4, :cond_23

    .line 4066
    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4069
    :cond_26
    iget-object p0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 4070
    :goto_2e
    array-length p1, p3

    if-ge v2, p1, :cond_42

    .line 4071
    aget-object p1, p3, v2

    add-int v0, p2, v2

    if-nez p1, :cond_39

    move-object p1, v1

    goto :goto_3d

    .line 4072
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3d
    aput-object p1, p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_42
    return-void

    .line 4059
    :cond_43
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table only has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " columns. can\'t set "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at column "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTo(Ljava/io/PrintWriter;)V
    .registers 10

    .line 4077
    iget v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 4079
    :goto_7
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_41

    .line 4081
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4082
    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_13

    move v6, v7

    goto :goto_13

    :cond_2d
    add-int/2addr v3, v6

    new-array v4, v5, [Ljava/lang/Object;

    .line 4088
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%%-%ds"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_41
    sub-int/2addr v4, v5

    const-string v2, "%s"

    .line 4090
    aput-object v2, v0, v4

    .line 4091
    iget-object v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4092
    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    :goto_57
    if-ge v1, v3, :cond_61

    const-string v2, "-"

    .line 4094
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 4096
    :cond_61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4097
    iget-object v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6a
    if-ge v5, v1, :cond_7a

    .line 4098
    iget-object v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 4099
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    :cond_7a
    return-void
.end method
