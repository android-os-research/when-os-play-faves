.class public Lcom/android/server/pm/AsecInstallHelper$3;
.super Landroid/content/IIntentReceiver$Stub;
.source "AsecInstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AsecInstallHelper;->unloadMediaPackages(Landroid/util/ArrayMap;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$keys:Ljava/util/Set;

.field public final synthetic val$reportStatus:Z


# direct methods
.method public static synthetic $r8$lambda$Z5FSGRnh7l2RgNDX7MsGN6xOdo8(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AsecInstallHelper$3;->lambda$performReceive$0(ZLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;ZLjava/util/Set;)V
    .registers 4

    .line 614
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$performReceive$0(ZLjava/util/Set;)V
    .registers 5

    .line 621
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 622
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$mupdateMediaStatus(Lcom/android/server/pm/AsecInstallHelper;IILjava/util/Set;)V

    .line 624
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AsecInstallHelper;->setAvailableMountSync(Z)V

    const-string p0, "PackageManager"

    const-string/jumbo p1, "setAvailableMountSync false"

    .line 625
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "do force gc after sending broadcast: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance p1, Ljava/lang/Thread;

    iget-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$reportStatus:Z

    iget-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$keys:Ljava/util/Set;

    new-instance p4, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2, p3}, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;)V

    invoke-direct {p1, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 626
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
