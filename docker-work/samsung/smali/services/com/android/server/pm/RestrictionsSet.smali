.class public Lcom/android/server/pm/RestrictionsSet;
.super Ljava/lang/Object;
.source "RestrictionsSet.java"


# static fields
.field public static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field public static final TAG_RESTRICTIONS_USER:Ljava/lang/String; = "restrictions_user"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field public final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_15

    .line 67
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 65
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty restriction bundle cannot be added."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readRestrictions(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/RestrictionsSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    const/4 v1, 0x0

    .line 210
    :cond_6
    :goto_6
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_43

    .line 211
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1b

    .line 212
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object v0

    :cond_1b
    const/4 v4, 0x2

    if-ne v2, v4, :cond_30

    const-string/jumbo v5, "restrictions_user"

    .line 214
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v1, 0x0

    const-string/jumbo v2, "user_id"

    .line 215
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :cond_30
    if-ne v2, v4, :cond_6

    const-string/jumbo v2, "restrictions"

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 217
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_6

    .line 221
    :cond_43
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p1, "restrictions cannot be read as xml is malformed."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public containsKey(I)Z
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 229
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "User Id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {p1, v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_48
    if-eqz v1, :cond_5f

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "none"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public final getEnforcingUser(II)Landroid/os/UserManager$EnforcingUser;
    .registers 3

    if-ne p2, p1, :cond_4

    const/4 p0, 0x2

    goto :goto_5

    :cond_4
    const/4 p0, 0x4

    .line 157
    :goto_5
    new-instance p2, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {p2, p1, p0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object p2
.end method

.method public getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 144
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 145
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 146
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUser(II)Landroid/os/UserManager$EnforcingUser;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    return-object v0
.end method

.method public getRestrictions(I)Landroid/os/Bundle;
    .registers 2

    .line 165
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public keyAt(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public mergeAll()Landroid/os/Bundle;
    .registers 4

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 132
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 133
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object v0
.end method

.method public moveRestriction(Lcom/android/server/pm/RestrictionsSet;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 95
    iget-object v1, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 98
    invoke-static {v2, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_43

    .line 99
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_33

    .line 102
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 103
    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    invoke-virtual {p1, v1, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_36

    .line 106
    :cond_33
    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    :goto_36
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 110
    iget-object v1, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_43
    add-int/2addr v0, v4

    goto :goto_1

    :cond_45
    return-void
.end method

.method public remove(I)Z
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    .line 174
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return v0
.end method

.method public removeAllRestrictions()V
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public size()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public updateRestrictions(ILandroid/os/Bundle;)Z
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_12
    invoke-static {p2}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 83
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_23

    .line 85
    :cond_1e
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :goto_23
    return v1
.end method

.method public valueAt(I)Landroid/os/Bundle;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public writeRestrictions(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 191
    :goto_5
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    const-string/jumbo v2, "restrictions_user"

    .line 192
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-string/jumbo v4, "user_id"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "restrictions"

    invoke-static {p1, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 196
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 198
    :cond_33
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
