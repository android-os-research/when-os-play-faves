.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->run(Ljava/util/List;Landroid/os/Bundle;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 79
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 82
    invoke-static {}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uncaught exception"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "results":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "longMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-static {v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-$$Nest$fgetmWatcher(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 88
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 89
    return-void
.end method
