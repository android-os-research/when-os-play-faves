.class public Lcom/android/server/smartclip/SpenThemeManager$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$1;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 77
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package removed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager$1;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-static {p2}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$fgetmPackageRemovedHandler(Lcom/android/server/smartclip/SpenThemeManager;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$1;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$fgetmPackageRemovedHandler(Lcom/android/server/smartclip/SpenThemeManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
