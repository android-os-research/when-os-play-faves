.class public Lorg/apache/http/auth/NTCredentials;
.super Ljava/lang/Object;
.source "NTCredentials.java"

# interfaces
.implements Lorg/apache/http/auth/Credentials;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lorg/apache/http/auth/NTUserPrincipal;

.field private final workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "usernamePassword"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p1, :cond_4f

    .line 74
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 75
    .local v0, "atColon":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ltz v0, :cond_1c

    .line 76
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "username":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    goto :goto_1f

    .line 79
    .end local v3    # "username":Ljava/lang/String;
    :cond_1c
    move-object v3, p1

    .line 80
    .restart local v3    # "username":Ljava/lang/String;
    iput-object v2, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    .line 82
    :goto_1f
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 83
    .local v4, "atSlash":I
    if-ltz v4, :cond_3f

    .line 84
    new-instance v5, Lorg/apache/http/auth/NTUserPrincipal;

    .line 85
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v4, 0x1

    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/apache/http/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    goto :goto_4c

    .line 88
    :cond_3f
    new-instance v1, Lorg/apache/http/auth/NTUserPrincipal;

    add-int/lit8 v5, v4, 0x1

    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lorg/apache/http/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    .line 92
    :goto_4c
    iput-object v2, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    .line 93
    return-void

    .line 71
    .end local v0    # "atColon":I
    .end local v3    # "username":Ljava/lang/String;
    .end local v4    # "atSlash":I
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username:password string may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "workstation"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_1d

    .line 113
    new-instance v0, Lorg/apache/http/auth/NTUserPrincipal;

    invoke-direct {v0, p4, p1}, Lorg/apache/http/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    .line 114
    iput-object p2, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    .line 115
    if-eqz p3, :cond_19

    .line 116
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    goto :goto_1c

    .line 118
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    .line 120
    :goto_1c
    return-void

    .line 111
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 162
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 163
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 164
    :cond_8
    instance-of v2, p1, Lorg/apache/http/auth/NTCredentials;

    if-eqz v2, :cond_24

    .line 165
    move-object v2, p1

    check-cast v2, Lorg/apache/http/auth/NTCredentials;

    .line 166
    .local v2, "that":Lorg/apache/http/auth/NTCredentials;
    iget-object v3, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    iget-object v4, v2, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    .line 167
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 168
    return v1

    .line 171
    .end local v2    # "that":Lorg/apache/http/auth/NTCredentials;
    :cond_24
    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/http/auth/NTUserPrincipal;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lorg/apache/http/auth/NTUserPrincipal;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .registers 2

    .line 123
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 154
    const/16 v0, 0x11

    .line 155
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 156
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 157
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->principal:Lorg/apache/http/auth/NTUserPrincipal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "][workstation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lorg/apache/http/auth/NTCredentials;->workstation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
