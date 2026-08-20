.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/SurfaceControl;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;->f$1:Landroid/view/SurfaceControl;

    iput p3, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;->f$1:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/input/InputManagerService;->$r8$lambda$OAKLGc9HL41_z_-H4Nii8EG0u-g(Lcom/android/server/input/InputManagerService;Landroid/view/SurfaceControl;I)V

    return-void
.end method
