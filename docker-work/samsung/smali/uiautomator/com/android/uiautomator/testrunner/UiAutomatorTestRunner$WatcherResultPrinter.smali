.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# static fields
.field private static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field private static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field private static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field private static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_VALUE_ID:Ljava/lang/String; = "UiAutomatorTestRunner"

.field private static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field private static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field private static final REPORT_VALUE_RESULT_START:I = 0x1


# instance fields
.field private final mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

.field private final mResultTemplate:Landroid/os/Bundle;

.field private final mStream:Ljava/io/ByteArrayOutputStream;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field private final mWriter:Ljava/io/PrintStream;

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V
    .registers 7
    .param p2, "numTests"    # I

    .line 262
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    .line 255
    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 263
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    .line 264
    const-string v2, "id"

    const-string v3, "UiAutomatorTestRunner"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "numtests"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    .line 268
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    .line 269
    new-instance v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-direct {v1, p1, v2, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V

    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    .line 270
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 316
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 319
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljunit/framework/TestCase;

    .line 321
    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 320
    const-string v2, "\nError in %s:\n%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const-string v2, "stream"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 324
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 7
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    .line 328
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 331
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljunit/framework/TestCase;

    .line 333
    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 332
    const-string v2, "\nFailure in %s:\n%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    const-string v2, "stream"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1, p2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    .line 336
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 5
    .param p1, "test"    # Ljunit/framework/Test;

    .line 340
    iget v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v0, :cond_d

    .line 341
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_d
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-$$Nest$fgetmAutomationSupport(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v0

    iget v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 345
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->endTest(Ljunit/framework/Test;)V

    .line 346
    return-void
.end method

.method public print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
    .registers 8
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J
    .param p4, "testOutput"    # Landroid/os/Bundle;

    .line 350
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 351
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mStream:Ljava/io/ByteArrayOutputStream;

    .line 354
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 352
    const-string v1, "\nTest results for %s=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string v1, "stream"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 356
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-static {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-$$Nest$fgetmAutomationSupport(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1, p4}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 357
    return-void
.end method

.method public printUnexpectedError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 361
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 362
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 361
    const-string v2, "Test run aborted due to unexpected exception: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mWriter:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 364
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 10
    .param p1, "test"    # Ljunit/framework/Test;

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "testClass":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Ljunit/framework/TestCase;

    invoke-virtual {v1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "testName":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    .line 281
    const-string v3, "class"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "test"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    iget v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestNum:I

    const-string v5, "current"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v2, "stream"

    const/4 v3, 0x0

    if-eqz v0, :cond_50

    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 286
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    .line 287
    const-string v7, "\n%s:"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 286
    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    goto :goto_57

    .line 290
    :cond_50
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_57
    const/4 v2, 0x0

    .line 295
    .local v2, "testMethod":Ljava/lang/reflect/Method;
    :try_start_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    .line 297
    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 298
    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/RepetitiveTest;

    .line 299
    invoke-interface {v5}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v5

    .line 300
    .local v5, "numIterations":I
    iget-object v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v7, "numiterations"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_7e} :catch_7f

    .line 306
    .end local v5    # "numIterations":I
    :cond_7e
    goto :goto_80

    .line 302
    :catch_7f
    move-exception v5

    .line 308
    :goto_80
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-static {v5}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->-$$Nest$fgetmAutomationSupport(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;

    move-result-object v5

    iget-object v6, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-interface {v5, v4, v6}, Lcom/android/uiautomator/testrunner/IAutomationSupport;->sendStatus(ILandroid/os/Bundle;)V

    .line 309
    iput v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 311
    iget-object v3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;->mPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    invoke-virtual {v3, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->startTest(Ljunit/framework/Test;)V

    .line 312
    return-void
.end method
