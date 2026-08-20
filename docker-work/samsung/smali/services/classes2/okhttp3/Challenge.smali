.class public final Lokhttp3/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field public final authParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_13

    .line 49
    iput-object p1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    const-string/jumbo p1, "realm"

    .line 50
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    return-void

    .line 48
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "realm == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "scheme == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4f

    if-eqz p2, :cond_47

    .line 37
    iput-object p1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_36

    :cond_2a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 43
    :cond_40
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    return-void

    .line 36
    :cond_47
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "authParams == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_4f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "scheme == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public authParams()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    return-object p0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .registers 2

    .line 81
    iget-object p0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    const-string v0, "charset"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_11

    .line 84
    :try_start_c
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    .line 88
    :catch_11
    :cond_11
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    instance-of v0, p1, Lokhttp3/Challenge;

    if-eqz v0, :cond_1c

    check-cast p1, Lokhttp3/Challenge;

    iget-object v0, p1, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p1, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    iget-object p0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    .line 94
    invoke-interface {p1, p0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 99
    iget-object v0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x383

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 100
    iget-object p0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public realm()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object p0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    const-string/jumbo v0, "realm"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public scheme()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " authParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lokhttp3/Challenge;
    .registers 4

    if-eqz p1, :cond_1a

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 57
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "charset"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p1, Lokhttp3/Challenge;

    iget-object p0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1

    .line 55
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
