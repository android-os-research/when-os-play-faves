.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda9;->f$0:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda9;->f$0:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$gIrnq3vbAxFJR7WWhVy3xdz0HmY(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
