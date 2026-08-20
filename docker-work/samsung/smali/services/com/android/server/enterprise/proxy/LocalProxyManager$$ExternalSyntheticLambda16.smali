.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/ProxyInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$2:Z

    iput-object p4, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$3:Landroid/net/ProxyInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$2:Z

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;->f$3:Landroid/net/ProxyInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->$r8$lambda$AXTNb61b8O7SagICeSVgRS5wDsE(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    return-void
.end method
