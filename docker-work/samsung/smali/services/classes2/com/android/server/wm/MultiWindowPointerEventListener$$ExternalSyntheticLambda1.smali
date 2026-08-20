.class public final synthetic Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->$r8$lambda$846LAQOwor3rDpD1Y1Eagtep78k(Lcom/android/server/wm/MultiWindowPointerEventListener;IILcom/android/server/wm/TaskDisplayArea;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
