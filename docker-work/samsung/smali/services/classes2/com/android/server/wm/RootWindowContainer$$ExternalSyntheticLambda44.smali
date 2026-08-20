.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$0:I

    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$hd8rhh_wz-6mOMteVnS9Ao7L7XI(IZLcom/android/server/wm/WindowState;)V

    return-void
.end method
