.class public Lcom/samsung/android/allshare/media/SearchCriteria;
.super Ljava/lang/Object;
.source "SearchCriteria.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    }
.end annotation


# instance fields
.field private blacklist mKeyword:Ljava/lang/String;

.field private blacklist mMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/samsung/android/allshare/media/SearchCriteria$Builder;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->-$$Nest$fgetmKeyword(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->-$$Nest$fgetmMediaTypes(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;Lcom/samsung/android/allshare/media/SearchCriteria-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/SearchCriteria;-><init>(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Lcom/samsung/android/allshare/media/SearchCriteria;

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/allshare/media/SearchCriteria;

    .line 60
    .local v0, "sc":Lcom/samsung/android/allshare/media/SearchCriteria;
    const/4 v2, 0x0

    .line 63
    .local v2, "ret":Z
    iget-object v3, v0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v3, :cond_11

    iget-object v4, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v4, :cond_17

    :cond_11
    if-eqz v3, :cond_18

    iget-object v4, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v4, :cond_18

    .line 65
    :cond_17
    return v1

    .line 66
    :cond_18
    if-nez v3, :cond_20

    iget-object v4, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-nez v4, :cond_20

    .line 67
    const/4 v2, 0x1

    goto :goto_2d

    .line 68
    :cond_20
    if-eqz v3, :cond_2d

    iget-object v4, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-eqz v4, :cond_2d

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d

    .line 70
    const/4 v2, 0x1

    .line 74
    :cond_2d
    :goto_2d
    if-nez v2, :cond_30

    .line 75
    return v1

    .line 76
    :cond_30
    iget-object v3, v0, Lcom/samsung/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-eqz v3, :cond_65

    iget-object v5, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-eqz v5, :cond_65

    .line 77
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 78
    .local v3, "itr1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item$MediaType;>;"
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Item$MediaType;

    .line 80
    .local v5, "type1":Lcom/samsung/android/allshare/Item$MediaType;
    const/4 v6, 0x0

    .line 82
    .local v6, "isSame":Z
    iget-object v7, v0, Lcom/samsung/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 83
    .local v7, "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item$MediaType;>;"
    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 84
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/allshare/Item$MediaType;

    .line 86
    .local v8, "type2":Lcom/samsung/android/allshare/Item$MediaType;
    if-ne v5, v8, :cond_5f

    .line 87
    const/4 v6, 0x1

    .line 89
    .end local v8    # "type2":Lcom/samsung/android/allshare/Item$MediaType;
    :cond_5f
    goto :goto_50

    .line 91
    :cond_60
    if-nez v6, :cond_63

    .line 93
    return v1

    .line 95
    .end local v5    # "type1":Lcom/samsung/android/allshare/Item$MediaType;
    .end local v6    # "isSame":Z
    .end local v7    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item$MediaType;>;"
    :cond_63
    goto :goto_3d

    .line 96
    :cond_64
    return v4

    .line 97
    .end local v3    # "itr1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item$MediaType;>;"
    :cond_65
    if-nez v3, :cond_6c

    iget-object v3, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-nez v3, :cond_6c

    .line 98
    return v4

    .line 101
    :cond_6c
    return v1

    .line 105
    .end local v0    # "sc":Lcom/samsung/android/allshare/media/SearchCriteria;
    .end local v2    # "ret":Z
    :cond_6d
    return v1
.end method

.method public blacklist getKeyword()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "code":I
    iget-object v1, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mKeyword:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 116
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item$MediaType;

    .line 118
    .local v2, "mediaType":Lcom/samsung/android/allshare/Item$MediaType;
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 119
    .end local v2    # "mediaType":Lcom/samsung/android/allshare/Item$MediaType;
    goto :goto_12

    .line 121
    :cond_24
    return v0
.end method

.method public blacklist isMatchedItemType(Lcom/samsung/android/allshare/Item$MediaType;)Z
    .registers 6
    .param p1, "type"    # Lcom/samsung/android/allshare/Item$MediaType;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria;->mMediaTypes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 133
    return v1

    .line 135
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item$MediaType;

    .line 136
    .local v2, "temp":Lcom/samsung/android/allshare/Item$MediaType;
    invoke-virtual {v2, p1}, Lcom/samsung/android/allshare/Item$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 137
    const/4 v0, 0x1

    return v0

    .line 136
    .end local v2    # "temp":Lcom/samsung/android/allshare/Item$MediaType;
    :cond_1e
    goto :goto_a

    .line 138
    :cond_1f
    return v1
.end method
