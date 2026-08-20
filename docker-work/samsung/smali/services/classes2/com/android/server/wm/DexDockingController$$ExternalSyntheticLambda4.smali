.class public final synthetic Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexDockingController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexDockingController;ILandroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexDockingController;

    iput p2, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexDockingController;

    iget v1, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/DexDockingController;->$r8$lambda$n0Dl-ixnJzb7YZEhfmgQCNrkKcA(Lcom/android/server/wm/DexDockingController;ILandroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    return-void
.end method
