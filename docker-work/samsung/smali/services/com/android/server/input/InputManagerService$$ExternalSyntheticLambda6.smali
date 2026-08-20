.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/util/HashSet;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->$r8$lambda$qmYJVmojrvSr2DCYCfyPLU3x0Jw(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method
