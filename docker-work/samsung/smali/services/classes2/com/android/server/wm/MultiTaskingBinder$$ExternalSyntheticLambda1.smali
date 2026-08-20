.class public final synthetic Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingBinder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingBinder;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingBinder;

    iput-boolean p2, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingBinder;

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/wm/MultiTaskingBinder;->$r8$lambda$v3e3G9D0cT_EumGb-ukBZoV2k0U(Lcom/android/server/wm/MultiTaskingBinder;Z)V

    return-void
.end method
