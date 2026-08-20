.class public Lcom/android/server/broadcastradio/hal1/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BroadcastRadioService.Convert"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringMapToNative(Ljava/util/Map;)[[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 40
    const-class v0, Ljava/lang/String;

    const-string v1, "BroadcastRadioService.Convert"

    const/4 v2, 0x2

    if-nez p0, :cond_19

    const-string/jumbo p0, "map is null, returning zero-elements array"

    .line 41
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v2, [I

    .line 42
    fill-array-data p0, :array_72

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    return-object p0

    .line 45
    :cond_19
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v4, v2, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v2, 0x0

    aput v3, v4, v2

    .line 47
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 50
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v3, v2

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 51
    aget-object v6, v0, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 52
    aget-object v6, v0, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 56
    :cond_57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "converted "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " element(s)"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_72
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
