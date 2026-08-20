.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZILandroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$1:Z

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$1:Z

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$2:I

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda126;->f$3:Landroid/content/Intent;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$HHt1Prc0FQ5H5kcEabMdbJ676cY(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZILandroid/content/Intent;)V

    return-void
.end method
