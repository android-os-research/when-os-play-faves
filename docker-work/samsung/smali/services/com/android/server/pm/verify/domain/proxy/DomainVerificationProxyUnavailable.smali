.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;
.super Ljava/lang/Object;
.source "DomainVerificationProxyUnavailable.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCallerVerifier(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public sendBroadcastForPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
