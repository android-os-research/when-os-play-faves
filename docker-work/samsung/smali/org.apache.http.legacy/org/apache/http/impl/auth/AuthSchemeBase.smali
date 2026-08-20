.class public abstract Lorg/apache/http/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lorg/apache/http/auth/AuthScheme;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private proxy:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public isProxy()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    return v0
.end method

.method protected abstract parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .registers 11
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 77
    if-eqz p1, :cond_bd

    .line 80
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "authheader":Ljava/lang/String;
    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    goto :goto_1d

    .line 83
    :cond_12
    const-string v1, "Proxy-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/auth/AuthSchemeBase;->proxy:Z

    .line 91
    :goto_1d
    instance-of v1, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v1, :cond_30

    .line 92
    move-object v1, p1

    check-cast v1, Lorg/apache/http/FormattedHeader;

    invoke-interface {v1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    .line 93
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    move-object v2, p1

    check-cast v2, Lorg/apache/http/FormattedHeader;

    invoke-interface {v2}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v2

    .local v2, "pos":I
    goto :goto_45

    .line 95
    .end local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v2    # "pos":I
    :cond_30
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_9c

    .line 99
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 100
    .local v2, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x0

    move-object v1, v2

    move v2, v3

    .line 103
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .local v2, "pos":I
    :goto_45
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_58

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 106
    :cond_58
    move v3, v2

    .line 107
    .local v3, "beginIndex":I
    :goto_59
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    if-ge v2, v4, :cond_6c

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 110
    :cond_6c
    move v4, v2

    .line 111
    .local v4, "endIndex":I
    invoke-virtual {v1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 116
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-virtual {p0, v1, v2, v6}, Lorg/apache/http/impl/auth/AuthSchemeBase;->parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 117
    return-void

    .line 113
    :cond_83
    new-instance v6, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid scheme identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    .end local v2    # "pos":I
    .end local v3    # "beginIndex":I
    .end local v4    # "endIndex":I
    .end local v5    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    :cond_9c
    new-instance v2, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v3, "Header value is null"

    invoke-direct {v2, v3}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "s":Ljava/lang/String;
    :cond_a4
    new-instance v1, Lorg/apache/http/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected header name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "authheader":Ljava/lang/String;
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
