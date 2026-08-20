.class public Lcom/android/server/pm/AsecInstallHelper$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "AsecInstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AsecInstallHelper;->setMoveCallback(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$originObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$res:Lcom/android/server/pm/PackageInstalledInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;Landroid/content/pm/PackageManager;Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 5

    .line 110
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iput-object p2, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$res:Lcom/android/server/pm/PackageInstalledInfo;

    iput-object p4, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$originObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .registers 5

    if-lez p2, :cond_3

    return-void

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    .line 122
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    invoke-static {p1}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$fgetmPm(Lcom/android/server/pm/AsecInstallHelper;)Lcom/android/server/pm/PackageManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$originObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    return-void
.end method
