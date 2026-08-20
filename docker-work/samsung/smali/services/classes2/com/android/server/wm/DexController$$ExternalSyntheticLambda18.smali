.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexController;Ljava/lang/String;ILandroid/util/SparseArray;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/wm/DexController;

    iput-object p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$3:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$2:I

    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda18;->f$3:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DexController;->$r8$lambda$QkFoHKCbgVO-2eZ8GiOswWX1dW8(Lcom/android/server/wm/DexController;Ljava/lang/String;ILandroid/util/SparseArray;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
