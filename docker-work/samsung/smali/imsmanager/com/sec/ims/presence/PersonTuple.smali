.class public Lcom/sec/ims/presence/PersonTuple;
.super Ljava/lang/Object;
.source "PersonTuple.java"


# instance fields
.field public mNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mStatusIcon:Ljava/lang/String;

.field public mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/sec/ims/presence/PersonTuple;->mTimestamp:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p1, "statusIcon"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "notes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/sec/ims/presence/PersonTuple;->mTimestamp:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 67
    return v0

    .line 69
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 70
    return v1

    .line 72
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 73
    return v1

    .line 75
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/sec/ims/presence/PersonTuple;

    .line 77
    .local v2, "other":Lcom/sec/ims/presence/PersonTuple;
    iget-object v3, p0, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 78
    iget-object v3, v2, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 79
    return v1

    .line 81
    :cond_1f
    iget-object v4, v2, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 82
    return v1

    .line 85
    :cond_28
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 54
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    if-nez v3, :cond_19

    move v3, v4

    goto :goto_1d

    :cond_19
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1d
    add-int/2addr v1, v3

    .line 55
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/ims/presence/PersonTuple;->mTimestamp:Ljava/lang/String;

    if-nez v3, :cond_25

    goto :goto_29

    :cond_25
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_29
    add-int/2addr v2, v4

    .line 56
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
