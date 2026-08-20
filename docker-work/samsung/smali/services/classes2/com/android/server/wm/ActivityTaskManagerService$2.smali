.class Lcom/android/server/wm/ActivityTaskManagerService$2;
.super Ljava/util/ArrayList;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/wm/IController;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 984
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$2;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 985
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
