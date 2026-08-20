.class public Lcom/android/server/pm/PackageInstallerSession$7;
.super Landroid/os/incremental/IStorageHealthListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$systemDataLoader:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 3

    .line 4359
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    invoke-direct {p0}, Landroid/os/incremental/IStorageHealthListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHealthStatus(II)V
    .registers 4

    .line 4362
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2e

    :cond_11
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_20

    goto :goto_2e

    .line 4371
    :cond_1b
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    if-eqz p2, :cond_20

    goto :goto_2e

    .line 4378
    :cond_20
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4379
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/16 p1, -0x14

    const-string p2, "Image is missing pages required for installation."

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method
