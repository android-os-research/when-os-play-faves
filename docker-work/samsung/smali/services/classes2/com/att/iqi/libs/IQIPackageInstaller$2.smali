.class public Lcom/att/iqi/libs/IQIPackageInstaller$2;
.super Ljava/lang/Object;
.source "IQIPackageInstaller.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIPackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIPackageInstaller;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIPackageInstaller;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$2;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller$2;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$mwasInstallationRequested(Lcom/att/iqi/libs/IQIPackageInstaller;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_f

    .line 103
    iget-object p0, p0, Lcom/att/iqi/libs/IQIPackageInstaller$2;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$mrequestPackageInstall(Lcom/att/iqi/libs/IQIPackageInstaller;)V

    :cond_f
    return-void
.end method
