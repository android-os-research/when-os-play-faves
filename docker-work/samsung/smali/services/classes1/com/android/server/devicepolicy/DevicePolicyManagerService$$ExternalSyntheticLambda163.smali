.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZLandroid/content/Intent;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$1:Z

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$2:Landroid/content/Intent;

    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$1:Z

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$2:Landroid/content/Intent;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda163;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$kYyyM_rh_1OAA11R0qmfeY2dVLU(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZLandroid/content/Intent;I)V

    return-void
.end method
