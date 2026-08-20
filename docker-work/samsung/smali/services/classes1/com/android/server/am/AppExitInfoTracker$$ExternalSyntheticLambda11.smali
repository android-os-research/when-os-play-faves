.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;->f$0:Landroid/util/ArraySet;

    check-cast p1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$lPNHZgwq4Ut2haStYryRnuBfNi4(Landroid/util/ArraySet;Ljava/io/File;)V

    return-void
.end method
