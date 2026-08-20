.class public Lcom/android/server/wm/RectInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "RectInsetsSourceProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public onPostLayout()V
    .registers 2

    .line 49
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz p0, :cond_c

    .line 50
    sget-object p0, Lcom/android/server/wm/RectInsetsSourceProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPostLayout(), not calling super.onPostLayout()."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 44
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setVisible(Z)V

    return-void
.end method
