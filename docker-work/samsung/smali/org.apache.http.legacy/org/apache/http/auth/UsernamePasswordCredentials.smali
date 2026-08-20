.class public Lorg/apache/http/auth/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lorg/apache/http/auth/Credentials;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lorg/apache/http/auth/BasicUserPrincipal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "usernamePassword"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_2d

    .line 69
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 70
    .local v0, "atColon":I
    if-ltz v0, :cond_22

    .line 71
    new-instance v1, Lorg/apache/http/auth/BasicUserPrincipal;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 72
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    goto :goto_2c

    .line 74
    :cond_22
    new-instance v1, Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-direct {v1, p1}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 77
    :goto_2c
    return-void

    .line 67
    .end local v0    # "atColon":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username:password string may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-eqz p1, :cond_f

    .line 91
    new-instance v0, Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-direct {v0, p1}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 92
    iput-object p2, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 93
    return-void

    .line 89
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 115
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 116
    :cond_8
    instance-of v2, p1, Lorg/apache/http/auth/UsernamePasswordCredentials;

    if-eqz v2, :cond_1a

    .line 117
    move-object v2, p1

    check-cast v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 118
    .local v2, "that":Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v3, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    iget-object v4, v2, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 119
    return v1

    .line 122
    .end local v2    # "that":Lorg/apache/http/auth/UsernamePasswordCredentials;
    :cond_1a
    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/http/auth/BasicUserPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/http/auth/BasicUserPrincipal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lorg/apache/http/auth/UsernamePasswordCredentials;->principal:Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/http/auth/BasicUserPrincipal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
