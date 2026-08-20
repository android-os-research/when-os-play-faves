.class public final synthetic Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/pm/IPackageDeleteObserver2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-static {v0, p0}, Lcom/android/server/pm/DeletePackageHelper;->$r8$lambda$43MeU7BlMjhDytDp94aaxtDLQnA(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method
