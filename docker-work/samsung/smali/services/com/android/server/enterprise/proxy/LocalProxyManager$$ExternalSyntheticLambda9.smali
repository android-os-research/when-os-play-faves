.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda9;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda9;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->$r8$lambda$xOPUJpLGO-p0nSFkY7DceaHM_Gs(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V

    return-void
.end method
