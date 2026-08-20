.class public Lorg/apache/http/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final domain:Ljava/lang/String;

.field private final ntname:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p2, :cond_3b

    .line 62
    iput-object p2, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_12

    .line 64
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    goto :goto_15

    .line 66
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    .line 68
    :goto_15
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    .line 74
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    goto :goto_3a

    .line 75
    :cond_38
    iput-object p2, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    .line 77
    :goto_3a
    return-void

    .line 60
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 102
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 103
    :cond_8
    instance-of v2, p1, Lorg/apache/http/auth/NTUserPrincipal;

    if-eqz v2, :cond_24

    .line 104
    move-object v2, p1

    check-cast v2, Lorg/apache/http/auth/NTUserPrincipal;

    .line 105
    .local v2, "that":Lorg/apache/http/auth/NTUserPrincipal;
    iget-object v3, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    .line 106
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 107
    return v1

    .line 110
    .end local v2    # "that":Lorg/apache/http/auth/NTUserPrincipal;
    :cond_24
    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 93
    const/16 v0, 0x11

    .line 94
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 95
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 96
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method
