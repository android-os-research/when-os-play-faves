.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/VcnManagementService;

    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    iput p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/VcnManagementService;

    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    iget p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/VcnManagementService;->$r8$lambda$irEXW9r1V218vQt0UORkxh7GBKE(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    return-void
.end method
