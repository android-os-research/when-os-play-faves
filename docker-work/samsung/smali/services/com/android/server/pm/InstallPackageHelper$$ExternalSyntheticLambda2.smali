.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/pm/parsing/PackageParser2;

.field public final synthetic f$4:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/pm/parsing/PackageParser2;

    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$4:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$4:Ljava/util/concurrent/ExecutorService;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/io/File;

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->$r8$lambda$Au7-zHAikG3WRS5yB_H6eHaKiSk(Lcom/android/server/pm/InstallPackageHelper;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
