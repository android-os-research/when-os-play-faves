.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;->f$0:Landroid/util/ArraySet;

    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;->f$0:Landroid/util/ArraySet;

    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$-3irvApYkzPx3a7ofFGo6g21S68(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
