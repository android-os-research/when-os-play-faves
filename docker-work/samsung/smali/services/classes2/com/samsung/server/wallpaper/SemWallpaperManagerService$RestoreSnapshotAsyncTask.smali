.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;
.super Landroid/os/AsyncTask;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreSnapshotAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 2

    .line 1625
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 7

    const/4 v0, 0x0

    .line 1628
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 1629
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1631
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmSnapshotManager(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getLastSnapshot(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    const-string v2, "SemWallpaperManagerService"

    const/4 v3, 0x2

    if-eqz v1, :cond_5c

    .line 1633
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v1

    if-ne p1, v1, :cond_33

    .line 1634
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmSnapshotManager(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v2, v0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$mdoRestore(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v3, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    goto :goto_6c

    .line 1636
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<RestoreSnapshotAsyncTask> SnapshotData for key "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not the latest one."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmSnapshotManager(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v2, v0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$mdoRestoreOrRemove(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v3, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    goto :goto_6c

    :cond_5c
    const-string v1, "<RestoreSnapshotAsyncTask> No snapshot."

    .line 1640
    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmSnapshotManager(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    move-result-object v1

    const-string v2, "No snapshot"

    invoke-virtual {v1, v0, v3, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/lang/String;)V

    .line 1644
    :goto_6c
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->-$$Nest$fgetmSnapshotManager(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    .line 1645
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1625
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 2

    .line 1650
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1625
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$RestoreSnapshotAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
