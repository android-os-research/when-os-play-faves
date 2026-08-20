.class public final synthetic Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->$r8$lambda$7VQQ1hZpB28MCJo0dJHAsw5mPek(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V

    return-void
.end method
