.class public Lorg/apache/http/message/BasicHttpResponse;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lorg/apache/http/HttpResponse;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private locale:Ljava/util/Locale;

.field private reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

.field private statusline:Lorg/apache/http/StatusLine;


# direct methods
.method public constructor <init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .registers 6
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 114
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/StatusLine;)V
    .registers 3
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .registers 6
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;
    .param p2, "catalog"    # Lorg/apache/http/ReasonPhraseCatalog;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 81
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 82
    if-eqz p1, :cond_14

    .line 85
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 86
    iput-object p2, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    .line 87
    if-eqz p3, :cond_d

    move-object v0, p3

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 88
    return-void

    .line 83
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    .line 120
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected getReason(I)Ljava/lang/String;
    .registers 4
    .param p1, "code"    # I

    .line 205
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    if-nez v0, :cond_6

    .line 206
    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Lorg/apache/http/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_c
    return-object v0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .registers 2

    .line 125
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .line 181
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->entity:Lorg/apache/http/HttpEntity;

    .line 182
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 6
    .param p1, "loc"    # Ljava/util/Locale;

    .line 186
    if-eqz p1, :cond_1c

    .line 189
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->locale:Ljava/util/Locale;

    .line 190
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 191
    .local v0, "code":I
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    iget-object v2, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 192
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 193
    return-void

    .line 187
    .end local v0    # "code":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 169
    if-eqz p1, :cond_1b

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_13

    const/16 v0, 0xd

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_13

    goto :goto_1b

    .line 172
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Line break in reason phrase."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1b
    :goto_1b
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    iget-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 175
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 177
    return-void
.end method

.method public setStatusCode(I)V
    .registers 5
    .param p1, "code"    # I

    .line 162
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    .line 163
    .local v0, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 164
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;I)V
    .registers 5
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I

    .line 149
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHttpResponse;->getReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 150
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .registers 5
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 156
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 157
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .registers 4
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;

    .line 140
    if-eqz p1, :cond_5

    .line 143
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpResponse;->statusline:Lorg/apache/http/StatusLine;

    .line 144
    return-void

    .line 141
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
