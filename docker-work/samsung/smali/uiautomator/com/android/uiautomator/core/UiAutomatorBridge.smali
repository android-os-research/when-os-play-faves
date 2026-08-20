.class public abstract Lcom/android/uiautomator/core/UiAutomatorBridge;
.super Ljava/lang/Object;
.source "UiAutomatorBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final QUIET_TIME_TO_BE_CONSIDERD_IDLE_STATE:J = 0x1f4L

.field private static final TOTAL_TIME_TO_WAIT_FOR_IDLE_STATE:J = 0x2710L


# instance fields
.field private final mInteractionController:Lcom/android/uiautomator/core/InteractionController;

.field private final mQueryController:Lcom/android/uiautomator/core/QueryController;

.field private final mUiAutomation:Landroid/app/UiAutomation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/UiAutomation;)V
    .registers 3
    .param p1, "uiAutomation"    # Landroid/app/UiAutomation;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    .line 49
    new-instance v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/InteractionController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    .line 50
    new-instance v0, Lcom/android/uiautomator/core/QueryController;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    .line 51
    return-void
.end method


# virtual methods
.method public executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/UiAutomation;->executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method getInteractionController()Lcom/android/uiautomator/core/InteractionController;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mInteractionController:Lcom/android/uiautomator/core/InteractionController;

    return-object v0
.end method

.method getQueryController()Lcom/android/uiautomator/core/QueryController;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mQueryController:Lcom/android/uiautomator/core/QueryController;

    return-object v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRotation()I
.end method

.method public abstract getSystemLongPressTime()J
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .line 70
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1, p2}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v0

    return v0
.end method

.method public abstract isScreenOn()Z
.end method

.method public performGlobalAction(I)Z
    .registers 3
    .param p1, "action"    # I

    .line 137
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public setCompressedLayoutHierarchy(Z)V
    .registers 4
    .param p1, "compressed"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 79
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz p1, :cond_f

    .line 80
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_15

    .line 82
    :cond_f
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 83
    :goto_15
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 84
    return-void
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 62
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    .line 63
    return-void
.end method

.method public setRotation(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .line 74
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->setRotation(I)Z

    move-result v0

    return v0
.end method

.method public takeScreenshot(Ljava/io/File;I)Z
    .registers 9
    .param p1, "storePath"    # Ljava/io/File;
    .param p2, "quality"    # I

    .line 109
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "screenshot":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 111
    return v1

    .line 113
    :cond_a
    const/4 v2, 0x0

    .line 115
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_b
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 116
    nop

    .line 117
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 118
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1f} :catch_2d
    .catchall {:try_start_b .. :try_end_1f} :catchall_2b

    .line 124
    nop

    .line 126
    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 129
    goto :goto_25

    .line 127
    :catch_24
    move-exception v1

    .line 131
    :goto_25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    nop

    .line 133
    const/4 v1, 0x1

    return v1

    .line 124
    :catchall_2b
    move-exception v1

    goto :goto_41

    .line 120
    :catch_2d
    move-exception v3

    .line 121
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_2e
    sget-object v4, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v5, "failed to save screen shot to file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    .line 122
    nop

    .line 124
    if-eqz v2, :cond_3d

    .line 126
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 129
    goto :goto_3d

    .line 127
    :catch_3c
    move-exception v4

    .line 131
    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    return v1

    .line 124
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_41
    if-eqz v2, :cond_48

    .line 126
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 129
    goto :goto_48

    .line 127
    :catch_47
    move-exception v3

    .line 131
    :cond_48
    :goto_48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    throw v1
.end method

.method public waitForIdle()V
    .registers 3

    .line 91
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle(J)V

    .line 92
    return-void
.end method

.method public waitForIdle(J)V
    .registers 6
    .param p1, "timeout"    # J

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomatorBridge;->mUiAutomation:Landroid/app/UiAutomation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/app/UiAutomation;->waitForIdle(JJ)V
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_7} :catch_8

    .line 99
    goto :goto_10

    .line 97
    :catch_8
    move-exception v0

    .line 98
    .local v0, "te":Ljava/util/concurrent/TimeoutException;
    sget-object v1, Lcom/android/uiautomator/core/UiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not detect idle state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_10
    return-void
.end method
