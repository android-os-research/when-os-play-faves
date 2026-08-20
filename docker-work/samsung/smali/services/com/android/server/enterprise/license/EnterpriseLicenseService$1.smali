.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseLicenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public static synthetic $r8$lambda$hhQqVdU38hkVzOn2sSvHCCQbSgA(Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->lambda$onReceive$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/os/Bundle;)V
    .registers 4

    .line 187
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    const-string/jumbo v0, "packageRemovedInternal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->-$$Nest$mcallLicenseAgent(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_37

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_37

    .line 179
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->-$$Nest$misPackageInstalled(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_36

    .line 182
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetLicenseByAdmin(Ljava/lang/String;)Z

    .line 184
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "packageName"

    .line 185
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;Landroid/os/Bundle;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_36
    return-void

    :cond_37
    :goto_37
    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo p1, "intent or getData are null. Skip."

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
