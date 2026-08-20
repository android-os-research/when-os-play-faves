.class public Lorg/apache/http/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"

# interfaces
.implements Lorg/apache/http/client/CredentialsProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final credMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    .line 68
    return-void
.end method

.method private static matchCredentials(Ljava/util/HashMap;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .registers 8
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;",
            "Lorg/apache/http/auth/AuthScope;",
            ")",
            "Lorg/apache/http/auth/Credentials;"
        }
    .end annotation

    .line 101
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/Credentials;

    .line 102
    .local v0, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v0, :cond_30

    .line 105
    const/4 v1, -0x1

    .line 106
    .local v1, "bestMatchFactor":I
    const/4 v2, 0x0

    .line 107
    .local v2, "bestMatch":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/auth/AuthScope;

    .line 108
    .local v4, "current":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p1, v4}, Lorg/apache/http/auth/AuthScope;->match(Lorg/apache/http/auth/AuthScope;)I

    move-result v5

    .line 109
    .local v5, "factor":I
    if-le v5, v1, :cond_26

    .line 110
    move v1, v5

    .line 111
    move-object v2, v4

    .line 113
    .end local v4    # "current":Lorg/apache/http/auth/AuthScope;
    .end local v5    # "factor":I
    :cond_26
    goto :goto_12

    .line 114
    :cond_27
    if-eqz v2, :cond_30

    .line 115
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/auth/Credentials;

    .line 118
    .end local v1    # "bestMatchFactor":I
    .end local v2    # "bestMatch":Lorg/apache/http/auth/AuthScope;
    :cond_30
    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 146
    monitor-exit p0

    return-void

    .line 144
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCredentialsProvider;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .registers 4
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;

    monitor-enter p0

    .line 130
    if-eqz p1, :cond_d

    .line 133
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lorg/apache/http/impl/client/BasicCredentialsProvider;->matchCredentials(Ljava/util/HashMap;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 129
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCredentialsProvider;
    .end local p1    # "authscope":Lorg/apache/http/auth/AuthScope;
    :catchall_b
    move-exception p1

    goto :goto_15

    .line 131
    .restart local p1    # "authscope":Lorg/apache/http/auth/AuthScope;
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_b

    .line 129
    .end local p1    # "authscope":Lorg/apache/http/auth/AuthScope;
    :goto_15
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
    .registers 5
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/http/auth/Credentials;

    monitor-enter p0

    .line 83
    if-eqz p1, :cond_c

    .line 86
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 87
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCredentialsProvider;
    .end local p1    # "authscope":Lorg/apache/http/auth/AuthScope;
    .end local p2    # "credentials":Lorg/apache/http/auth/Credentials;
    :catchall_a
    move-exception p1

    goto :goto_14

    .line 84
    .restart local p1    # "authscope":Lorg/apache/http/auth/AuthScope;
    .restart local p2    # "credentials":Lorg/apache/http/auth/Credentials;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_a

    .line 82
    .end local p1    # "authscope":Lorg/apache/http/auth/AuthScope;
    .end local p2    # "credentials":Lorg/apache/http/auth/Credentials;
    :goto_14
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
