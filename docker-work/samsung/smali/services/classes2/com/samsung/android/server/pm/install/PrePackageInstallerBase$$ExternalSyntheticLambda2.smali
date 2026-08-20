.class public final synthetic Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->$r8$lambda$6jGcRsdcDUZN9A9MshO3afw9eUE(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method
