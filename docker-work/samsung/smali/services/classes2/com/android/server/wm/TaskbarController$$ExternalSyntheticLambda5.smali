.class public final synthetic Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskbarController;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskbarController;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TaskbarController;

    iput-object p2, p0, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda5;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TaskbarController;

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda5;->f$1:[I

    invoke-static {v0, p0}, Lcom/android/server/wm/TaskbarController;->$r8$lambda$G-Gs0RWvsfXu9mEdyk_Ik3UOcLQ(Lcom/android/server/wm/TaskbarController;[I)V

    return-void
.end method
