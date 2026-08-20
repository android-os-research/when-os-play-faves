.class public Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->movePrimaryStorage(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$realMoveId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V
    .registers 3

    .line 6256
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onStatusChanged(IIJ)V
    .registers 5

    .line 6264
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method
