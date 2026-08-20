.class public Lcom/android/server/smartclip/SpenThemeManager$2;
.super Landroid/os/Handler;
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

    .line 83
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 86
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 91
    :cond_b
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->clearCustomDoubleTapAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->clearPenHoverIcon(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->clearPenAttachSound(Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->clearPenDetachSound(Ljava/lang/String;)V

    return-void
.end method
