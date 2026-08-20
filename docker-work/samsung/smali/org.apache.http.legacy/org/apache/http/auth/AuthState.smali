.class public Lorg/apache/http/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private authScheme:Lorg/apache/http/auth/AuthScheme;

.field private authScope:Lorg/apache/http/auth/AuthScope;

.field private credentials:Lorg/apache/http/auth/Credentials;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public getAuthScheme()Lorg/apache/http/auth/AuthScheme;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    return-object v0
.end method

.method public getAuthScope()Lorg/apache/http/auth/AuthScope;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    return-object v0
.end method

.method public getCredentials()Lorg/apache/http/auth/Credentials;
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    .line 71
    iput-object v0, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    .line 72
    iput-object v0, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    .line 73
    return-void
.end method

.method public isValid()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V
    .registers 2
    .param p1, "authScheme"    # Lorg/apache/http/auth/AuthScheme;

    .line 85
    if-nez p1, :cond_6

    .line 86
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->invalidate()V

    .line 87
    return-void

    .line 89
    :cond_6
    iput-object p1, p0, Lorg/apache/http/auth/AuthState;->authScheme:Lorg/apache/http/auth/AuthScheme;

    .line 90
    return-void
.end method

.method public setAuthScope(Lorg/apache/http/auth/AuthScope;)V
    .registers 2
    .param p1, "authScope"    # Lorg/apache/http/auth/AuthScope;

    .line 137
    iput-object p1, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    .line 138
    return-void
.end method

.method public setCredentials(Lorg/apache/http/auth/Credentials;)V
    .registers 2
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;

    .line 118
    iput-object p1, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "auth scope ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lorg/apache/http/auth/AuthState;->authScope:Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "]; credentials set ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lorg/apache/http/auth/AuthState;->credentials:Lorg/apache/http/auth/Credentials;

    if-eqz v1, :cond_1b

    const-string v1, "true"

    goto :goto_1d

    :cond_1b
    const-string v1, "false"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
