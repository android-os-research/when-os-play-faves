.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>([III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;->f$0:[I

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;->f$1:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;->f$0:[I

    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;->f$1:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;->f$2:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Landroid/graphics/Rect;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$vK9zJsNpD24Rc14dVogkIST9d8I([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method
