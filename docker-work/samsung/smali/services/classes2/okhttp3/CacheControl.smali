.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field public headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final immutable:Z

.field public final isPrivate:Z

.field public final isPublic:Z

.field public final maxAgeSeconds:I

.field public final maxStaleSeconds:I

.field public final minFreshSeconds:I

.field public final mustRevalidate:Z

.field public final noCache:Z

.field public final noStore:Z

.field public final noTransform:Z

.field public final onlyIfCached:Z

.field public final sMaxAgeSeconds:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 40
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 41
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const v2, 0x7fffffff

    .line 42
    invoke-virtual {v0, v2, v1}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 81
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 82
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 85
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 86
    iput-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 87
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 88
    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 89
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 90
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 91
    iget-boolean p1, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean p1, p0, Lokhttp3/CacheControl;->immutable:Z

    return-void
.end method

.method public constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 65
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 66
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 67
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 68
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 69
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 70
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 71
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 72
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 73
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 74
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 75
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 76
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .registers 23

    move-object/from16 v0, p0

    .line 184
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1a
    if-ge v6, v1, :cond_143

    .line 185
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "Cache-Control"

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v8, :cond_2f

    goto :goto_39

    :cond_2f
    move-object v8, v4

    goto :goto_3a

    :cond_31
    const-string v3, "Pragma"

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13c

    :goto_39
    const/4 v7, 0x0

    :goto_3a
    const/4 v2, 0x0

    .line 203
    :goto_3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_13c

    const-string v3, "=,;"

    .line 205
    invoke-static {v4, v2, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 206
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_99

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x2c

    if-eq v5, v0, :cond_99

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_66

    goto :goto_99

    :cond_66
    add-int/lit8 v3, v3, 0x1

    .line 214
    invoke-static {v4, v3}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 217
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_89

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_89

    add-int/lit8 v0, v0, 0x1

    const-string v3, "\""

    .line 220
    invoke-static {v4, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 221
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_9d

    :cond_89
    const/4 v5, 0x1

    const-string v3, ",;"

    .line 227
    invoke-static {v4, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 228
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_99
    :goto_99
    const/4 v5, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    :goto_9d
    const-string v5, "no-cache"

    .line 232
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    const/4 v5, -0x1

    const/4 v9, 0x1

    goto/16 :goto_137

    :cond_a9
    const-string v5, "no-store"

    .line 234
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_137

    :cond_b5
    const-string v5, "max-age"

    .line 236
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    const/4 v5, -0x1

    .line 237
    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_137

    :cond_c4
    const-string/jumbo v5, "s-maxage"

    .line 238
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    const/4 v5, -0x1

    .line 239
    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v12

    goto :goto_137

    :cond_d3
    const-string/jumbo v5, "private"

    .line 240
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_df

    const/4 v5, -0x1

    const/4 v13, 0x1

    goto :goto_137

    :cond_df
    const-string/jumbo v5, "public"

    .line 242
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_eb

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto :goto_137

    :cond_eb
    const-string v5, "must-revalidate"

    .line 244
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f6

    const/4 v5, -0x1

    const/4 v15, 0x1

    goto :goto_137

    :cond_f6
    const-string v5, "max-stale"

    .line 246
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_107

    const v2, 0x7fffffff

    .line 247
    invoke-static {v0, v2}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v16

    const/4 v5, -0x1

    goto :goto_137

    :cond_107
    const-string v5, "min-fresh"

    .line 248
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_115

    const/4 v5, -0x1

    .line 249
    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v17

    goto :goto_137

    :cond_115
    const/4 v5, -0x1

    const-string/jumbo v0, "only-if-cached"

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    const/16 v18, 0x1

    goto :goto_137

    :cond_122
    const-string v0, "no-transform"

    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    const/16 v19, 0x1

    goto :goto_137

    :cond_12d
    const-string v0, "immutable"

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    const/16 v20, 0x1

    :cond_137
    :goto_137
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_3b

    :cond_13c
    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_143
    if-nez v7, :cond_148

    const/16 v21, 0x0

    goto :goto_14a

    :cond_148
    move-object/from16 v21, v8

    .line 263
    :goto_14a
    new-instance v0, Lokhttp3/CacheControl;

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final headerValue()Ljava/lang/String;
    .registers 5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_e
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_17
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2b
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3d

    const-string/jumbo v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_3d
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_47

    const-string/jumbo v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_47
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_51

    const-string/jumbo v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_51
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_5a

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_5a
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_6b

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_6b
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_7c

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_7c
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_86

    const-string/jumbo v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_86
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_8f

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_8f
    iget-boolean p0, p0, Lokhttp3/CacheControl;->immutable:Z

    if-eqz p0, :cond_98

    const-string p0, "immutable, "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_a1

    const-string p0, ""

    return-object p0

    .line 288
    :cond_a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public immutable()Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lokhttp3/CacheControl;->immutable:Z

    return p0
.end method

.method public isPrivate()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return p0
.end method

.method public isPublic()Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return p0
.end method

.method public maxAgeSeconds()I
    .registers 1

    .line 114
    iget p0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return p0
.end method

.method public maxStaleSeconds()I
    .registers 1

    .line 138
    iget p0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return p0
.end method

.method public minFreshSeconds()I
    .registers 1

    .line 142
    iget p0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return p0
.end method

.method public mustRevalidate()Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return p0
.end method

.method public noCache()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noCache:Z

    return p0
.end method

.method public noStore()Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noStore:Z

    return p0
.end method

.method public noTransform()Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return p0
.end method

.method public onlyIfCached()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return p0
.end method

.method public sMaxAgeSeconds()I
    .registers 1

    .line 122
    iget p0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    .line 270
    :cond_5
    invoke-virtual {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    :goto_b
    return-object v0
.end method
