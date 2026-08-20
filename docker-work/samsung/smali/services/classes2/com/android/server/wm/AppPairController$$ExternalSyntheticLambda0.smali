.class public final synthetic Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppPairController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppPairController;Landroid/window/WindowContainerTransaction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppPairController;

    iput-object p2, p0, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda0;->f$1:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppPairController;

    iget-object p0, p0, Lcom/android/server/wm/AppPairController$$ExternalSyntheticLambda0;->f$1:Landroid/window/WindowContainerTransaction;

    invoke-static {v0, p0}, Lcom/android/server/wm/AppPairController;->$r8$lambda$IR8ht-68OyV3aO1fUBUq0aAEfmE(Lcom/android/server/wm/AppPairController;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
