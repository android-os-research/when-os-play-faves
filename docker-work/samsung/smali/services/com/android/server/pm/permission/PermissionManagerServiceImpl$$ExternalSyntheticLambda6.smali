.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:I

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:I

    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->$r8$lambda$QIEK0uVVr7dFNkZvGt-we8FZxec(II)V

    return-void
.end method
