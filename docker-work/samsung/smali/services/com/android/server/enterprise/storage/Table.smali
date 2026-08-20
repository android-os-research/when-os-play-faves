.class public Lcom/android/server/enterprise/storage/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field public mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation
.end field

.field public mForeignKeyName:Ljava/lang/String;

.field public mForeignReferKey:Ljava/lang/String;

.field public mForeignReferTable:Ljava/lang/String;

.field public mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addColumn(Lcom/android/server/enterprise/storage/Column;)V
    .registers 2

    .line 53
    iget-object p0, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildPrimaryKeys()Ljava/lang/String;
    .registers 4

    .line 71
    iget-object p0, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/storage/Column;

    .line 72
    iget-boolean v2, v1, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    if-eqz v2, :cond_8

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 78
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_41

    const/4 p0, 0x0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 78
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_42

    :cond_41
    const/4 p0, 0x0

    :goto_42
    return-object p0
.end method

.method public buildTableColumns()Ljava/lang/String;
    .registers 5

    .line 59
    iget-object p0, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    move-object v1, v0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/storage/Column;

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 64
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3f

    const/4 p0, 0x0

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 64
    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    return-object v0
.end method

.method public getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object p0, p0, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/storage/Column;

    .line 86
    iget-object v2, v1, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-object v0
.end method
