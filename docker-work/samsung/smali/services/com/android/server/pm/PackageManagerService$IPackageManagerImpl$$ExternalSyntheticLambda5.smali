.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;->f$0:I

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;->f$1:Z

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->$r8$lambda$yVoZzoCU11fYRBSxsxCHJNsMe-U(IZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method
