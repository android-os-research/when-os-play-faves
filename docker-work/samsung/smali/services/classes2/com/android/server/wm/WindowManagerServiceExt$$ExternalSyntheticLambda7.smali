.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(IILandroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;->f$0:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;->f$0:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda7;->f$2:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->$r8$lambda$PjItrPf3_LC9psXwIrDCimVH2zI(IILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
