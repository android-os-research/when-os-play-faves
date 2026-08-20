.class public Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
.super Ljava/lang/Object;
.source "SdpPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

.field private mPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 27
    iput-object p3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 6

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 60
    :try_start_17
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 61
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v3

    .line 67
    :cond_34
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    :goto_3f
    return v3
.end method

.method public getAlias()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    return-object p0
.end method

.method public getPrivilegedApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-object p0
.end method

.method public isAuthorized(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 116
    invoke-virtual {p0, p1, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isOwner(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result p0

    return p0
.end method

.method public final matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 4

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 6

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 82
    :try_start_17
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 86
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_39} :catch_3b

    move v2, p0

    goto :goto_3f

    :catch_3b
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    :goto_3f
    return v2
.end method

.method public serialize()[B
    .registers 3

    .line 34
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    invoke-interface {v1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdpPolicy {\n"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    if-eqz v2, :cond_47

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOwner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_47
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPrivilegedApps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    :cond_76
    const-string/jumbo p0, "}"

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
