.class public Lcom/android/server/enterprise/application/RuntimePermissionUtils;
.super Ljava/lang/Object;
.source "RuntimePermissionUtils.java"


# static fields
.field public static final ADMIN_UID:I = 0x0

.field public static final PERMISSION_GROUPS:I = 0x2

.field public static final PERMISSION_STATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEntry(IILjava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const/4 p1, 0x2

    aput-object p3, p0, p1

    return-object p0
.end method

.method public getStrictestPermStateInDb(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Integer;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_69

    .line 15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 22
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 23
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    .line 24
    aget-object v5, v5, v8

    .line 29
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3b

    if-eq v1, v0, :cond_39

    if-ge v1, v7, :cond_3b

    :cond_39
    move v3, v6

    move v1, v7

    :cond_3b
    const-string v8, "*"

    .line 38
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-eq v2, v0, :cond_47

    if-ge v2, v7, :cond_12

    :cond_47
    move v4, v6

    move v2, v7

    goto :goto_12

    :cond_4a
    if-eq v1, v0, :cond_63

    if-eq v2, v0, :cond_5e

    if-ne v3, v4, :cond_55

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 54
    :cond_55
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 57
    :cond_5e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_63
    if-eq v2, v0, :cond_69

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_69
    return-object p0
.end method
