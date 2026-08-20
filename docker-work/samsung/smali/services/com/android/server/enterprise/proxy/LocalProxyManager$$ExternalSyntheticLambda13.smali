.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Landroid/net/ProxyInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/net/ProxyInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$1:Landroid/net/ProxyInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$1:Landroid/net/ProxyInfo;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->$r8$lambda$HtygKRKS0NEC--aVo6i0i1GGjkY(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/net/ProxyInfo;)V

    return-void
.end method
