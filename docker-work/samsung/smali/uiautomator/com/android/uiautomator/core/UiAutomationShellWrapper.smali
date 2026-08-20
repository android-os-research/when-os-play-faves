.class public Lcom/android/uiautomator/core/UiAutomationShellWrapper;
.super Ljava/lang/Object;
.source "UiAutomationShellWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/UiAutomationShellWrapper$NoOpActivityController;
    }
.end annotation


# static fields
.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomatorHandlerThread"


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mUiAutomation:Landroid/app/UiAutomation;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UiAutomatorHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public connect()V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_23

    .line 28
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Landroid/app/UiAutomation;

    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/app/UiAutomationConnection;

    invoke-direct {v2}, Landroid/app/UiAutomationConnection;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    .line 31
    invoke-virtual {v0}, Landroid/app/UiAutomation;->connect()V

    .line 32
    return-void

    .line 26
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 65
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    .line 66
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 67
    return-void

    .line 63
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already disconnected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    return-object v0
.end method

.method public setCompressedLayoutHierarchy(Z)V
    .registers 4
    .param p1, "compressed"    # Z

    .line 74
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 75
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz p1, :cond_f

    .line 76
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_15

    .line 78
    :cond_f
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 79
    :goto_15
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 80
    return-void
.end method

.method public setRunAsMonkey(Z)V
    .registers 6
    .param p1, "isSet"    # Z

    .line 46
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 47
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1f

    .line 51
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_13

    .line 52
    :try_start_a
    new-instance v3, Lcom/android/uiautomator/core/UiAutomationShellWrapper$NoOpActivityController;

    invoke-direct {v3, p0, v2}, Lcom/android/uiautomator/core/UiAutomationShellWrapper$NoOpActivityController;-><init>(Lcom/android/uiautomator/core/UiAutomationShellWrapper;Lcom/android/uiautomator/core/UiAutomationShellWrapper$NoOpActivityController-IA;)V

    invoke-interface {v0, v3, v1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    goto :goto_16

    .line 54
    :cond_13
    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_18

    .line 58
    :goto_16
    nop

    .line 59
    return-void

    .line 56
    :catch_18
    move-exception v1

    .line 57
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 48
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t manage monkey status; is the system running?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
