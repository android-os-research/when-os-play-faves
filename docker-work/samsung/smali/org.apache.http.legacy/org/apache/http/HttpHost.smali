.class public final Lorg/apache/http/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_SCHEME_NAME:Ljava/lang/String; = "http"


# instance fields
.field protected final hostname:Ljava/lang/String;

.field protected final lcHostname:Ljava/lang/String;

.field protected final port:I

.field protected final schemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 117
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_21

    .line 90
    iput-object p1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    .line 91
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    .line 92
    if-eqz p3, :cond_1a

    .line 93
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    goto :goto_1e

    .line 95
    :cond_1a
    const-string v0, "http"

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    .line 97
    :goto_1e
    iput p2, p0, Lorg/apache/http/HttpHost;->port:I

    .line 98
    return-void

    .line 88
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .registers 5
    .param p1, "httphost"    # Lorg/apache/http/HttpHost;

    .line 126
    iget-object v0, p1, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    iget v1, p1, Lorg/apache/http/HttpHost;->port:I

    iget-object v2, p1, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 220
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 196
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 197
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 198
    :cond_8
    instance-of v2, p1, Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_2d

    .line 199
    move-object v2, p1

    check-cast v2, Lorg/apache/http/HttpHost;

    .line 200
    .local v2, "that":Lorg/apache/http/HttpHost;
    iget-object v3, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget v3, p0, Lorg/apache/http/HttpHost;->port:I

    iget v4, v2, Lorg/apache/http/HttpHost;->port:I

    if-ne v3, v4, :cond_2b

    iget-object v3, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    nop

    .line 200
    :goto_2c
    return v0

    .line 204
    .end local v2    # "that":Lorg/apache/http/HttpHost;
    :cond_2d
    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 144
    iget v0, p0, Lorg/apache/http/HttpHost;->port:I

    return v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 212
    const/16 v0, 0x11

    .line 213
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 214
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 215
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 216
    return v0
.end method

.method public toHostString()Ljava/lang/String;
    .registers 4

    .line 180
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 181
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 182
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 183
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 184
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 186
    :cond_1f
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 191
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .registers 4

    .line 162
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 163
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 164
    const-string v1, "://"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 166
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 167
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 168
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 170
    :cond_29
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
