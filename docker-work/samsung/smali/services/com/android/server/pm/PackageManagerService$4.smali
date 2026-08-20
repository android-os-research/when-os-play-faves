.class public Lcom/android/server/pm/PackageManagerService$4;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 4782
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 4788
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 4789
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    .line 4790
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_18

    :cond_17
    move v1, v0

    .line 4791
    :cond_18
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSpeg(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SpegService;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSpeg(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SpegService;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/SpegService;->setSetupWizardState(Z)V

    .line 4792
    :cond_29
    sget-boolean p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    if-nez p0, :cond_3a

    .line 4793
    const-class p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    .line 4794
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    if-eqz p0, :cond_3a

    .line 4795
    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->setSetupWizardFinished(Z)V

    .line 4797
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SetupWizardFinished: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
