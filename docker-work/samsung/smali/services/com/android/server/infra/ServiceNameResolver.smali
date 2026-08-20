.class public interface abstract Lcom/android/server/infra/ServiceNameResolver;
.super Ljava/lang/Object;
.source "ServiceNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;
    }
.end annotation


# virtual methods
.method public abstract dumpShort(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpShort(Ljava/io/PrintWriter;I)V
.end method

.method public abstract getDefaultServiceName(I)Ljava/lang/String;
.end method

.method public getDefaultServiceNameList(I)[Ljava/lang/String;
    .registers 4

    .line 73
    invoke-interface {p0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 76
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    .line 74
    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "getting default service list not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getServiceName(I)Ljava/lang/String;
    .registers 2

    .line 99
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceNameList(I)[Ljava/lang/String;
    .registers 2

    .line 111
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConfiguredInMultipleMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultServiceEnabled(I)Z
    .registers 2

    .line 189
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "checking default service not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTemporary(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public resetTemporaryService(I)V
    .registers 2

    .line 158
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "temporary user not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .registers 3

    .line 176
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "changing default service not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .registers 2

    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .registers 4

    .line 133
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "temporary user not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTemporaryServices(I[Ljava/lang/String;I)V
    .registers 4

    .line 148
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "temporary user not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
