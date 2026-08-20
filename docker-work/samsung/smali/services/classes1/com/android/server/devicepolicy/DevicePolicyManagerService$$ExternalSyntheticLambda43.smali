.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda43;->f$1:Z

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda43;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$Z3ZKzG9HkKTi891rveh_ZLrA6wQ(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
