.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Landroid/app/PictureInPictureParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$2:Landroid/app/PictureInPictureParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$2:Landroid/app/PictureInPictureParams;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$Pb3mqYGwR6fbB4mRY6BHYYLEmAI(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    return-void
.end method
