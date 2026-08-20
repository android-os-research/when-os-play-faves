.class public final Lorg/apache/http/auth/BasicUserPrincipal;
.super Ljava/lang/Object;
.source "BasicUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "username"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_8

    .line 58
    iput-object p1, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    .line 59
    return-void

    .line 56
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 75
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 76
    :cond_8
    instance-of v2, p1, Lorg/apache/http/auth/BasicUserPrincipal;

    if-eqz v2, :cond_1a

    .line 77
    move-object v2, p1

    check-cast v2, Lorg/apache/http/auth/BasicUserPrincipal;

    .line 78
    .local v2, "that":Lorg/apache/http/auth/BasicUserPrincipal;
    iget-object v3, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 79
    return v1

    .line 82
    .end local v2    # "that":Lorg/apache/http/auth/BasicUserPrincipal;
    :cond_1a
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 67
    const/16 v0, 0x11

    .line 68
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 69
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
