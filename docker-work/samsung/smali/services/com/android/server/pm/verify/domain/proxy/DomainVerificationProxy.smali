.class public interface abstract Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
.super Ljava/lang/Object;
.source "DomainVerificationProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;
    }
.end annotation


# static fields
.field public static final DEBUG_PROXIES:Z = false

.field public static final TAG:Ljava/lang/String; = "DomainVerificationProxy"


# direct methods
.method public static makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ConnectionType::",
            "Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;",
            ":",
            "Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationCollector;",
            "TConnectionType;)",
            "Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    if-eqz p0, :cond_15

    .line 51
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    move-object v7, v0

    goto :goto_16

    :cond_15
    move-object v7, p0

    :goto_16
    if-eqz v7, :cond_23

    .line 60
    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;Landroid/content/ComponentName;)V

    goto :goto_24

    :cond_23
    move-object p0, v0

    :goto_24
    if-eqz p1, :cond_2d

    .line 65
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    check-cast p5, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    invoke-direct {v0, p2, p5, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;Landroid/content/ComponentName;)V

    :cond_2d
    if-eqz p0, :cond_37

    if-eqz v0, :cond_37

    .line 69
    new-instance p1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;-><init>(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    return-object p1

    :cond_37
    if-eqz p0, :cond_3a

    return-object p0

    :cond_3a
    if-eqz v0, :cond_3d

    return-object v0

    .line 80
    :cond_3d
    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract isCallerVerifier(I)Z
.end method

.method public abstract runMessage(ILjava/lang/Object;)Z
.end method

.method public abstract sendBroadcastForPackages(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
