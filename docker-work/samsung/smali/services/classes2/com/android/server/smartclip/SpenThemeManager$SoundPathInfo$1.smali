.class public Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;
.super Landroid/os/Handler;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;->this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 416
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/content/Context;

    if-nez v0, :cond_7

    return-void

    .line 419
    :cond_7
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;->this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->handleWriteSetting(Landroid/content/Context;)V

    return-void
.end method
