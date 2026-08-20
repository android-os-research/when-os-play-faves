.class public Lcom/android/server/UiModeManagerService$14;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/UiModeManagerService;->updateThemeImmediately()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 2162
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2165
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$14;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2166
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x1040cb8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 2165
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2167
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
