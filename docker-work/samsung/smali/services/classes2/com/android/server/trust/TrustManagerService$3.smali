.class public Lcom/android/server/trust/TrustManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .line 1914
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    .line 1928
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mremoveAgentsOfPackage(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    .line 1917
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void
.end method
