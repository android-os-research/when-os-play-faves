.class public final synthetic Lcom/android/server/wm/TaskTapPointerEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/android/server/wm/TaskTapPointerEventListener$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->$r8$lambda$tgUNhsaQgZrH6iQLuR9ORUQ0aBI(IILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
