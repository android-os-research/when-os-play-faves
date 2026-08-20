.class public Lcom/android/server/slice/SliceFullAccessList;
.super Ljava/lang/Object;
.source "SliceFullAccessList.java"


# static fields
.field public static final DB_VERSION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SliceFullAccessList"

.field public static final TAG_LIST:Ljava/lang/String; = "slice-access-list"

.field public static final TAG_PKG:Ljava/lang/String; = "pkg"

.field public static final TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field public final ATT_USER_ID:Ljava/lang/String;

.field public final ATT_VERSION:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mFullAccessPkgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "user"

    .line 42
    iput-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->ATT_USER_ID:Ljava/lang/String;

    const-string/jumbo v0, "version"

    .line 43
    iput-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->ATT_VERSION:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    .line 49
    iput-object p1, p0, Lcom/android/server/slice/SliceFullAccessList;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public grantFullAccess(Ljava/lang/String;I)V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_15

    .line 60
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 61
    iget-object p0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasFullAccess(Ljava/lang/String;I)Z
    .registers 4

    .line 53
    iget-object p0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_13

    .line 54
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "version"

    const/4 v1, 0x0

    .line 103
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 104
    iget-object v2, p0, Lcom/android/server/slice/SliceFullAccessList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 106
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/slice/SliceFullAccessList;->upgradeXml(II)V

    goto :goto_16

    .line 109
    :cond_2e
    iget-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 112
    :cond_33
    :goto_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8c

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4b

    const-string/jumbo v5, "slice-access-list"

    .line 115
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_8c

    :cond_4b
    const/4 v5, 0x2

    if-ne v0, v5, :cond_33

    const-string/jumbo v0, "user"

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 120
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 121
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 122
    :cond_60
    :goto_60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_86

    .line 123
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v7, v4, :cond_73

    .line 125
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    goto :goto_86

    :cond_73
    if-ne v7, v5, :cond_60

    const-string/jumbo v7, "pkg"

    .line 129
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 135
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_33

    :cond_8c
    :goto_8c
    return-void
.end method

.method public removeGrant(Ljava/lang/String;I)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_15

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 70
    iget-object p0, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public upgradeXml(II)V
    .registers 3

    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "slice-access-list"

    .line 76
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x1

    .line 77
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v2, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_61

    .line 81
    iget-object v5, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 82
    iget-object v6, p0, Lcom/android/server/slice/SliceFullAccessList;->mFullAccessPkgs:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    const/4 v7, -0x1

    if-eq p2, v7, :cond_30

    if-eq p2, v5, :cond_30

    goto :goto_5e

    :cond_30
    const-string/jumbo v7, "user"

    .line 86
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v6, :cond_5b

    .line 89
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v8, v3

    :goto_44
    if-ge v8, v5, :cond_5b

    const-string/jumbo v9, "pkg"

    .line 91
    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-interface {p1, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 96
    :cond_5b
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 98
    :cond_61
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
