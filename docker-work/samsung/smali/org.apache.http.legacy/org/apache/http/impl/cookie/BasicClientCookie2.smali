.class public Lorg/apache/http/impl/cookie/BasicClientCookie2;
.super Lorg/apache/http/impl/cookie/BasicClientCookie;
.source "BasicClientCookie2.java"

# interfaces
.implements Lorg/apache/http/cookie/SetCookie2;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private ports:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 100
    invoke-super {p0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/cookie/BasicClientCookie2;

    .line 101
    .local v0, "clone":Lorg/apache/http/impl/cookie/BasicClientCookie2;
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    .line 102
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    return-object v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 95
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isPersistent()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "commentURL"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setDiscard(Z)V
    .registers 2
    .param p1, "discard"    # Z

    .line 85
    iput-boolean p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->discard:Z

    .line 86
    return-void
.end method

.method public setPorts([I)V
    .registers 2
    .param p1, "ports"    # [I

    .line 72
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BasicClientCookie2;->ports:[I

    .line 73
    return-void
.end method
