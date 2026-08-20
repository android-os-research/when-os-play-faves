.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;
.super Ljava/lang/Object;
.source "DomainVerificationProxyV2.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;
    }
.end annotation


# static fields
.field public static final DEBUG_BROADCASTS:Z = false

.field public static final TAG:Ljava/lang/String; = "DomainVerificationProxyV2"


# instance fields
.field public final mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

.field public final mContext:Landroid/content/Context;

.field public final mVerifierComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;Landroid/content/ComponentName;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    .line 58
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public isCallerVerifier(I)Z
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->isCallerPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_5
    check-cast p2, Ljava/util/Set;

    .line 71
    new-instance p1, Landroid/content/pm/verify/domain/DomainVerificationRequest;

    invoke-direct {p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationRequest;-><init>(Ljava/util/Set;)V

    .line 73
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->getPowerSaveTempWhitelistAppDuration()J

    move-result-wide v7

    .line 74
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 v4, 0x0

    const/16 v5, 0x134

    const-string v6, ""

    move-object v1, p2

    move-wide v2, v7

    .line 75
    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    .line 80
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x134

    const-string v11, "domain verification agent"

    move-wide v4, v7

    move v7, v9

    move v8, v10

    move-object v9, v11

    .line 79
    invoke-interface/range {v1 .. v9}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"

    .line 86
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 93
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, v1, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return v0
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

    .line 63
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->schedule(ILjava/lang/Object;)V

    return-void
.end method
