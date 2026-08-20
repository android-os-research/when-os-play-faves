.class public Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
.super Ljava/lang/Object;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskDisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchRootTaskDef"
.end annotation


# instance fields
.field public activityTypes:[I

.field public task:Lcom/android/server/wm/Task;

.field public windowingModes:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 181
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
