.class public Lorg/apache/http/impl/auth/NTLMScheme;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/NTLMScheme$State;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lorg/apache/http/impl/auth/NTLMEngine;

.field private state:Lorg/apache/http/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/auth/NTLMEngine;)V
    .registers 4
    .param p1, "engine"    # Lorg/apache/http/impl/auth/NTLMEngine;

    .line 68
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 69
    if-eqz p1, :cond_f

    .line 72
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    .line 73
    sget-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 75
    return-void

    .line 70
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NTLM engine may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .registers 13
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "ntcredentials":Lorg/apache/http/auth/NTCredentials;
    :try_start_1
    move-object v1, p1

    check-cast v1, Lorg/apache/http/auth/NTCredentials;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_8a

    move-object v0, v1

    .line 122
    nop

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "response":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v3, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-eq v2, v3, :cond_52

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v3, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne v2, v3, :cond_14

    goto :goto_52

    .line 129
    :cond_14
    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v3, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne v2, v3, :cond_37

    .line 130
    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    .line 131
    invoke-virtual {v0}, Lorg/apache/http/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v0}, Lorg/apache/http/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-virtual {v0}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v7

    .line 134
    invoke-virtual {v0}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 130
    invoke-interface/range {v4 .. v9}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_64

    .line 138
    :cond_37
    new-instance v2, Lorg/apache/http/auth/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_52
    :goto_52
    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    .line 126
    invoke-virtual {v0}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v0}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-interface {v2, v3, v4}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 140
    :goto_64
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 141
    .local v2, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMScheme;->isProxy()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 142
    const-string v3, "Proxy-Authorization"

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_7c

    .line 144
    :cond_77
    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 146
    :goto_7c
    const-string v3, ": NTLM "

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 148
    new-instance v3, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v3, v2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v3

    .line 118
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :catch_8a
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/http/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 78
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isConnectionBased()Z
    .registers 2

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "challenge":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 100
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v2, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne v1, v2, :cond_15

    .line 101
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_19

    .line 103
    :cond_15
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 105
    :goto_19
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    goto :goto_23

    .line 107
    :cond_1d
    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 108
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 110
    :goto_23
    return-void
.end method
