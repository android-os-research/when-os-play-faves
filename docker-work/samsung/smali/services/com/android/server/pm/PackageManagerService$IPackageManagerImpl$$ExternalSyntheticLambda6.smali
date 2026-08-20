.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;->f$0:Z

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->$r8$lambda$4N63vrAabvDijz_H8mU2aS-JAac(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method
