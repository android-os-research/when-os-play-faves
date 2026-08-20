.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/IAutomationSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
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

    .line 68
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "status"    # Landroid/os/Bundle;

    .line 71
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-$$Nest$fgetmWatcher(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 72
    return-void
.end method
