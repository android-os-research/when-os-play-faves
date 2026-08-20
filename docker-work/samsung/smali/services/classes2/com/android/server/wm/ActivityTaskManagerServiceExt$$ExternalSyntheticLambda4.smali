.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IZLandroid/content/Intent;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$4:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$3:Z

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$4:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->$r8$lambda$AawSiaz_V9koIdJY9Z27hJiWvLQ(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IZLandroid/content/Intent;)V

    return-void
.end method
