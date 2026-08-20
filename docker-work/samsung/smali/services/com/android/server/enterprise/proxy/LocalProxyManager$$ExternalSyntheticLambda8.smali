.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->$r8$lambda$pIV5z7EE5Dpjo3So-Mp_MfMJWl8(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V

    return-void
.end method
