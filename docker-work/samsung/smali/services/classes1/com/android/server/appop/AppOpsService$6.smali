.class public Lcom/android/server/appop/AppOpsService$6;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 2069
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageTrustedToInstallApps(Ljava/lang/String;I)I
    .registers 4

    .line 2072
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    const/16 v0, 0x42

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p1, 0x2

    if-eq p0, p1, :cond_e

    return p1

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
