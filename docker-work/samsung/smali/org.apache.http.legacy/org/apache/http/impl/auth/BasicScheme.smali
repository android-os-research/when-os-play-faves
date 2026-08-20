.class public Lorg/apache/http/impl/auth/BasicScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "BasicScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private complete:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    .line 78
    return-void
.end method

.method public static authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;
    .registers 8
    .param p0, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "proxy"    # Z

    .line 163
    if-eqz p0, :cond_62

    .line 166
    if-eqz p1, :cond_5a

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "tmp":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    const-string v1, "null"

    goto :goto_26

    :cond_22
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    nop

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 175
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    .line 178
    .local v1, "base64password":[B
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 179
    .local v2, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-eqz p2, :cond_45

    .line 180
    const-string v3, "Proxy-Authorization"

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_4a

    .line 182
    :cond_45
    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 184
    :goto_4a
    const-string v3, ": Basic "

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 185
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 187
    new-instance v3, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v3, v2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v3

    .line 167
    .end local v0    # "tmp":Ljava/lang/StringBuilder;
    .end local v1    # "base64password":[B
    .end local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .registers 5
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 139
    if-eqz p1, :cond_1d

    .line 142
    if-eqz p2, :cond_15

    .line 146
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/BasicScheme;->isProxy()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v1

    return-object v1

    .line 143
    .end local v0    # "charset":Ljava/lang/String;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "basic"

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    .line 102
    return-void
.end method
