.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/CrossProfileApps;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/CrossProfileApps;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda55;->f$0:Landroid/content/pm/CrossProfileApps;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda55;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda55;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda55;->f$0:Landroid/content/pm/CrossProfileApps;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda55;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda55;->f$2:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$PdoVZPzaH3hogigrR8O-Q5wO-zE(Landroid/content/pm/CrossProfileApps;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
