.class public final Lcom/android/server/pm/DeletePackageAction;
.super Ljava/lang/Object;
.source "DeletePackageAction.java"


# instance fields
.field public final mDeletingPs:Lcom/android/server/pm/PackageSetting;

.field public final mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public final mFlags:I

.field public final mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageRemovedInfo;ILandroid/os/UserHandle;)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 31
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 32
    iput-object p3, p0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 33
    iput p4, p0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 34
    iput-object p5, p0, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    return-void
.end method
