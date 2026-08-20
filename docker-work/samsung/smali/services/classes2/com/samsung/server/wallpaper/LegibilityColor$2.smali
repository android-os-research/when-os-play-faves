.class public Lcom/samsung/server/wallpaper/LegibilityColor$2;
.super Landroid/os/AsyncTask;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/server/wallpaper/LegibilityColor;->makeColorExtractor(IZ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

.field public final synthetic val$landscape:Z

.field public final synthetic val$which:I


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;IZ)V
    .registers 4

    .line 166
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    iput p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    iput-boolean p3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 166
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extractColor start which = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", landscape = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegibilityColor"

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-boolean p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6a

    .line 174
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    const/16 v3, 0x5a

    if-eqz p1, :cond_48

    iget p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_48

    :cond_37
    new-array p1, v1, [Landroid/app/SemWallpaperColors;

    .line 182
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v1

    iget v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v1

    aput-object v1, p1, v2

    goto :goto_7a

    :cond_48
    :goto_48
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/app/SemWallpaperColors;

    .line 177
    iget-object v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v4}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v4

    iget v5, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v3

    aput-object v3, p1, v2

    .line 178
    iget-object v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v3}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v3

    iget v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    const/16 v5, 0x10e

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v3

    aput-object v3, p1, v1

    goto :goto_7a

    :cond_6a
    new-array p1, v1, [Landroid/app/SemWallpaperColors;

    .line 186
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v1

    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v1

    aput-object v1, p1, v2

    .line 189
    :goto_7a
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_98

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground: this task is cancelled, which = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 194
    :cond_98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractColor end which = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    aget-object v1, p1, v2

    if-nez v1, :cond_b8

    const-string p0, "colors == null, return"

    .line 197
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 201
    :cond_b8
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v1

    iget v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    iget-boolean v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-virtual {v1, v2, v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->saveSemWallpaperColors(IZ[Landroid/app/SemWallpaperColors;)V

    .line 202
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->-$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object p1

    iget v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyColor end which = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 166
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method
