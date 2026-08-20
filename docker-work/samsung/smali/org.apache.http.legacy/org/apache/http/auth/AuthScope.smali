.class public Lorg/apache/http/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ANY:Lorg/apache/http/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    .line 68
    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .line 73
    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    .line 80
    new-instance v1, Lorg/apache/http/auth/AuthScope;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v0, v0}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 150
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;

    .line 135
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-nez p1, :cond_8

    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    goto :goto_e

    :cond_8
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    .line 115
    if-gez p2, :cond_14

    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    move v0, p2

    :goto_15
    iput v0, p0, Lorg/apache/http/auth/AuthScope;->port:I

    .line 116
    if-nez p3, :cond_1c

    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    move-object v0, p3

    :goto_1d
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    .line 117
    if-nez p4, :cond_24

    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    goto :goto_2a

    :cond_24
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/AuthScope;)V
    .registers 4
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    if-eqz p1, :cond_1e

    .line 161
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/http/auth/AuthScope;->port:I

    .line 163
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 165
    return-void

    .line 159
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 240
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 241
    return v0

    .line 243
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 244
    return v1

    .line 246
    :cond_8
    instance-of v2, p1, Lorg/apache/http/auth/AuthScope;

    if-nez v2, :cond_11

    .line 247
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 249
    :cond_11
    move-object v2, p1

    check-cast v2, Lorg/apache/http/auth/AuthScope;

    .line 250
    .local v2, "that":Lorg/apache/http/auth/AuthScope;
    iget-object v3, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    .line 251
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget v3, p0, Lorg/apache/http/auth/AuthScope;->port:I

    iget v4, v2, Lorg/apache/http/auth/AuthScope;->port:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    .line 253
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 254
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v0, v1

    goto :goto_3b

    :cond_3a
    nop

    .line 250
    :goto_3b
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 178
    iget v0, p0, Lorg/apache/http/auth/AuthScope;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 290
    const/16 v0, 0x11

    .line 291
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 292
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 293
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 294
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 295
    return v0
.end method

.method public match(Lorg/apache/http/auth/AuthScope;)I
    .registers 6
    .param p1, "that"    # Lorg/apache/http/auth/AuthScope;

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "factor":I
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_f

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 207
    :cond_f
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v1, v3, :cond_1a

    iget-object v1, p1, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eq v1, v3, :cond_1a

    .line 208
    return v2

    .line 211
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 212
    add-int/lit8 v0, v0, 0x2

    goto :goto_32

    .line 214
    :cond_27
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v1, v3, :cond_32

    iget-object v1, p1, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    if-eq v1, v3, :cond_32

    .line 215
    return v2

    .line 218
    :cond_32
    :goto_32
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    iget v3, p1, Lorg/apache/http/auth/AuthScope;->port:I

    if-ne v1, v3, :cond_3b

    .line 219
    add-int/lit8 v0, v0, 0x4

    goto :goto_40

    .line 221
    :cond_3b
    if-eq v1, v2, :cond_40

    if-eq v3, v2, :cond_40

    .line 222
    return v2

    .line 225
    :cond_40
    :goto_40
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 226
    add-int/lit8 v0, v0, 0x8

    goto :goto_58

    .line 228
    :cond_4d
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v1, v3, :cond_58

    iget-object v1, p1, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    if-eq v1, v3, :cond_58

    .line 229
    return v2

    .line 232
    :cond_58
    :goto_58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 264
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 267
    :cond_17
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 268
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    .line 272
    :cond_29
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :goto_2e
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 275
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    if-ltz v1, :cond_4a

    .line 278
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 282
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
