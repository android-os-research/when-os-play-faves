.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->$r8$lambda$TUZIH5dTi1R-Ssa5XCBhtR01sxU(Ljava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)V

    return-void
.end method
