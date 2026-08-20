.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "ScreenShot.java"


# static fields
.field public static final INTENT_ACTION_TAKE_SCREENSHOT:Ljava/lang/String; = "SYSTEM_ACTION_TAKE_SCREENSHOT"

.field public static final INTENT_SCREENSHOT_EXECUTOR:Ljava/lang/String; = "com.samsung.android.capture.ScreenshotExecutor"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;
    .registers 2

    .line 37
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x1040123

    return v0
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 4

    if-nez p1, :cond_a

    .line 48
    new-instance p1, Landroid/content/Intent;

    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 50
    :cond_a
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.capture.ScreenshotExecutor"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "capturedOrigin"

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    const-string v1, "Fullscreen"

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :goto_1f
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
