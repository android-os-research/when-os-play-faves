.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;
.super Ljava/lang/Object;
.source "DomainVerificationProxyCombined.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# instance fields
.field public final mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

.field public final mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 34
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public isCallerVerifier(I)Z
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    move-result v0

    .line 47
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    move-result p0

    if-nez v0, :cond_13

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public sendBroadcastForPackages(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    .line 40
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {p0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    return-void
.end method
