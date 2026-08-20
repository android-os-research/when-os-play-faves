.class public Landroid/test/InstrumentationTestRunner;
.super Landroid/app/Instrumentation;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Landroid/test/TestSuiteProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;,
        Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;,
        Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final ARGUMENT_ANNOTATION:Ljava/lang/String; = "annotation"

.field static final ARGUMENT_DELAY_MSEC:Ljava/lang/String; = "delay_msec"

.field private static final ARGUMENT_LOG_ONLY:Ljava/lang/String; = "log"

.field static final ARGUMENT_NOT_ANNOTATION:Ljava/lang/String; = "notAnnotation"

.field static final ARGUMENT_TEST_CLASS:Ljava/lang/String; = "class"

.field private static final ARGUMENT_TEST_PACKAGE:Ljava/lang/String; = "package"

.field private static final ARGUMENT_TEST_SIZE_PREDICATE:Ljava/lang/String; = "size"

.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final LARGE_SUITE:Ljava/lang/String; = "large"

.field private static final LOG_TAG:Ljava/lang/String; = "InstrumentationTestRunner"

.field private static final MEDIUM_SUITE:Ljava/lang/String; = "medium"

.field private static final MEDIUM_SUITE_MAX_RUNTIME:F = 1000.0f

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_RUN_TIME:Ljava/lang/String; = "runtime"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_KEY_SUITE_ASSIGNMENT:Ljava/lang/String; = "suiteassignment"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "InstrumentationTestRunner"

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final SELECT_LARGE:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECT_MEDIUM:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECT_SMALL:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMALL_SUITE:Ljava/lang/String; = "small"

.field private static final SMALL_SUITE_MAX_RUNTIME:F = 100.0f


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mDebug:Z

.field private mDelayMsec:I

.field private mJustCount:Z

.field private mPackageOfTests:Ljava/lang/String;

.field private final mResults:Landroid/os/Bundle;

.field private mSuiteAssignmentMode:Z

.field private mTestCount:I

.field private mTestRunner:Landroid/test/AndroidTestRunner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelayMsec(Landroid/test/InstrumentationTestRunner;)I
    .registers 1

    iget p0, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 198
    const-class v0, Landroid/test/suitebuilder/annotation/SmallTest;

    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/InstrumentationTestRunner;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    .line 200
    const-class v0, Landroid/test/suitebuilder/annotation/MediumTest;

    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/InstrumentationTestRunner;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    .line 202
    const-class v0, Landroid/test/suitebuilder/annotation/LargeTest;

    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/InstrumentationTestRunner;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 177
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    return-void
.end method

.method private generateCoverageReport()V
    .registers 12

    .line 609
    const-string v0, "stream"

    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->getCoverageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "coverageFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v2, "coverageFile":Ljava/io/File;
    :try_start_b
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 613
    .local v3, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 614
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    .line 613
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 616
    .local v4, "dumpCoverageMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v6, "coverageFilePath"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 623
    .local v5, "currentStream":Ljava/lang/String;
    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "%s\nGenerated code coverage data to %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v8

    aput-object v1, v10, v9

    .line 624
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_5d} :catch_77
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_5d} :catch_72
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_5d} :catch_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_5d} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_5d} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_5d} :catch_5e

    .end local v3    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "dumpCoverageMethod":Ljava/lang/reflect/Method;
    .end local v5    # "currentStream":Ljava/lang/String;
    goto :goto_7d

    .line 636
    :catch_5e
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v0}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_7e

    .line 634
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_63
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v0}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_7d

    .line 632
    :catch_68
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v0}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7d

    .line 630
    :catch_6d
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v0}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_7d

    .line 628
    :catch_72
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v0}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_7d

    .line 626
    :catch_77
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Is emma jar on classpath?"

    invoke-direct {p0, v3, v0}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 638
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_7d
    nop

    .line 639
    :goto_7e
    return-void
.end method

.method private getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 9
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 515
    const-string v0, "InstrumentationTestRunner"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 516
    return-object v1

    .line 519
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_8
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 520
    .local v4, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isAnnotation()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 521
    return-object v4

    .line 523
    :cond_13
    const-string v5, "Provided annotation value %s is not an Annotation"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_20} :catch_22

    .line 529
    nop

    .end local v4    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_30

    .line 526
    :catch_22
    move-exception v4

    .line 527
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v2, "Could not find class for specified annotation %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_30
    return-object v1
.end method

.method private getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 4
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 488
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_b

    .line 489
    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    return-object v1

    .line 491
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;

    .line 460
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "tagString":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .registers 3

    .line 642
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverage.ec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 646
    :cond_2a
    return-object v0
.end method

.method private getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 4
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .line 501
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 502
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_f

    .line 503
    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    invoke-static {v1}, Landroid/test/suitebuilder/TestPredicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    return-object v1

    .line 505
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 3
    .param p1, "sizeArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .line 469
    const-string v0, "small"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 470
    sget-object v0, Landroid/test/InstrumentationTestRunner;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    return-object v0

    .line 471
    :cond_b
    const-string v0, "medium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 472
    sget-object v0, Landroid/test/InstrumentationTestRunner;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    return-object v0

    .line 473
    :cond_16
    const-string v0, "large"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 474
    sget-object v0, Landroid/test/InstrumentationTestRunner;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    return-object v0

    .line 476
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 6
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testSuiteBuilder"    # Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 445
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 446
    .local v0, "methodSeparatorIndex":I
    const/4 v1, 0x0

    .line 448
    .local v1, "testMethodName":Ljava/lang/String;
    if-lez v0, :cond_14

    .line 449
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 452
    :cond_14
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 453
    return-void
.end method

.method private parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 7
    .param p1, "testClassArg"    # Ljava/lang/String;
    .param p2, "testSuiteBuilder"    # Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 431
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "testClasses":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 433
    .local v3, "testClass":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/test/InstrumentationTestRunner;->parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    .line 432
    .end local v3    # "testClass":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 435
    :cond_12
    return-void
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 651
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 652
    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to generate emma coverage. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InstrumentationTestRunner"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stream"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .line 415
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 416
    invoke-virtual {v0, p1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 418
    :cond_9
    return-void
.end method

.method public getAllTests()Ljunit/framework/TestSuite;
    .registers 2

    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .registers 2

    .line 456
    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 603
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestSuite()Ljunit/framework/TestSuite;
    .registers 2

    .line 589
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAllTests()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 314
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 315
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    .line 318
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 320
    .local v0, "apkPaths":[Ljava/lang/String;
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "testSizePredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v4, 0x0

    .line 324
    .local v4, "testAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v5, 0x0

    .line 325
    .local v5, "testNotAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v6, 0x0

    .line 326
    .local v6, "testClassesArg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 328
    .local v7, "logOnly":Z
    if-eqz p1, :cond_a0

    .line 330
    const-string v8, "class"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    const-string v8, "debug"

    invoke-direct {p0, p1, v8}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    .line 332
    const-string v8, "count"

    invoke-direct {p0, p1, v8}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    .line 333
    const-string v8, "suiteAssignment"

    invoke-direct {p0, p1, v8}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    .line 334
    const-string v8, "package"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    .line 335
    nop

    .line 336
    const-string v8, "size"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 335
    invoke-direct {p0, v8}, Landroid/test/InstrumentationTestRunner;->getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    .line 337
    nop

    .line 338
    const-string v8, "annotation"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 337
    invoke-direct {p0, v8}, Landroid/test/InstrumentationTestRunner;->getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v4

    .line 339
    nop

    .line 340
    const-string v8, "notAnnotation"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 339
    invoke-direct {p0, v8}, Landroid/test/InstrumentationTestRunner;->getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v5

    .line 342
    const-string v8, "log"

    invoke-direct {p0, p1, v8}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v7

    .line 343
    const-string v8, "coverage"

    invoke-direct {p0, p1, v8}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    .line 344
    const-string v8, "coverageFile"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    .line 347
    :try_start_85
    const-string v8, "delay_msec"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 348
    .local v8, "delay":Ljava/lang/Object;
    if-eqz v8, :cond_97

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_97} :catch_98

    .line 351
    .end local v8    # "delay":Ljava/lang/Object;
    :cond_97
    goto :goto_a0

    .line 349
    :catch_98
    move-exception v8

    .line 350
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v9, "InstrumentationTestRunner"

    const-string v10, "Invalid delay_msec parameter"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_a0
    :goto_a0
    new-instance v8, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 355
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 357
    .local v8, "testSuiteBuilder":Landroid/test/suitebuilder/TestSuiteBuilder;
    if-eqz v1, :cond_be

    .line 358
    new-array v9, v3, [Lcom/android/internal/util/Predicate;

    aput-object v1, v9, v2

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 360
    :cond_be
    if-eqz v4, :cond_c7

    .line 361
    new-array v9, v3, [Lcom/android/internal/util/Predicate;

    aput-object v4, v9, v2

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 363
    :cond_c7
    if-eqz v5, :cond_d0

    .line 364
    new-array v9, v3, [Lcom/android/internal/util/Predicate;

    aput-object v5, v9, v2

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 367
    :cond_d0
    if-nez v6, :cond_f2

    .line 368
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    if-eqz v9, :cond_de

    .line 369
    new-array v3, v3, [Ljava/lang/String;

    aput-object v9, v3, v2

    invoke-virtual {v8, v3}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_f5

    .line 371
    :cond_de
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTestSuite()Ljunit/framework/TestSuite;

    move-result-object v3

    .line 372
    .local v3, "testSuite":Ljunit/framework/TestSuite;
    if-eqz v3, :cond_e8

    .line 373
    invoke-virtual {v8, v3}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_f1

    .line 377
    :cond_e8
    const-string v9, ""

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 379
    .end local v3    # "testSuite":Ljunit/framework/TestSuite;
    :goto_f1
    goto :goto_f5

    .line 381
    :cond_f2
    invoke-direct {p0, v6, v8}, Landroid/test/InstrumentationTestRunner;->parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    .line 384
    :goto_f5
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 386
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v3

    iput-object v3, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 387
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    .line 388
    iget-object v3, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v3, p0}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 389
    iget-object v3, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v3, v7}, Landroid/test/AndroidTestRunner;->setSkipExecution(Z)V

    .line 390
    iget-object v3, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/suitebuilder/TestSuiteBuilder;->build()Ljunit/framework/TestSuite;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;)V

    .line 391
    iget-object v3, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v3}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    .line 392
    iget-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    if-eqz v9, :cond_137

    .line 393
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v3, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;

    invoke-direct {v3, p0}, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;-><init>(Landroid/test/InstrumentationTestRunner;)V

    invoke-virtual {v2, v3}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    goto :goto_14e

    .line 395
    :cond_137
    new-instance v9, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;

    invoke-direct {v9, p0, v3}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;I)V

    move-object v3, v9

    .line 396
    .local v3, "resultPrinter":Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v10, Landroid/test/TestPrinter;

    const-string v11, "TestRunner"

    invoke-direct {v10, v11, v2}, Landroid/test/TestPrinter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 397
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v2, v3}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 399
    .end local v3    # "resultPrinter":Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
    :goto_14e
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->start()V

    .line 400
    return-void
.end method

.method public onStart()V
    .registers 15

    .line 544
    const-string v0, "\nTest results for %s=%s"

    const-string v1, "stream"

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->prepareLooper()V

    .line 546
    iget-boolean v2, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_25

    .line 547
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "InstrumentationTestRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    iget v1, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    const-string v2, "numtests"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 549
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v0}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto/16 :goto_b6

    .line 551
    :cond_25
    iget-boolean v2, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    if-eqz v2, :cond_2c

    .line 552
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 555
    :cond_2c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 556
    .local v2, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 558
    .local v4, "writer":Ljava/io/PrintStream;
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_39
    new-instance v8, Landroid/test/InstrumentationTestRunner$StringResultPrinter;

    invoke-direct {v8, p0, v4}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V

    .line 560
    .local v8, "resultPrinter":Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v9, v8}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 563
    .local v9, "startTime":J
    iget-object v11, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v11}, Landroid/test/AndroidTestRunner;->runTest()V

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 566
    .local v11, "runTime":J
    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestResult()Ljunit/framework/TestResult;

    move-result-object v13

    invoke-virtual {v8, v13, v11, v12}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printResult(Ljunit/framework/TestResult;J)V
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_78

    .line 573
    .end local v8    # "resultPrinter":Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    .end local v9    # "startTime":J
    .end local v11    # "runTime":J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 575
    invoke-virtual {v9}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    .line 576
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 574
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-boolean v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v0, :cond_ad

    .line 579
    goto :goto_aa

    .line 567
    :catchall_78
    move-exception v8

    .line 569
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_79
    const-string v9, "Test run aborted due to unexpected exception: %s"

    new-array v10, v7, [Ljava/lang/Object;

    .line 570
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 569
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v8, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_b7

    .line 573
    .end local v8    # "t":Ljava/lang/Throwable;
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 575
    invoke-virtual {v9}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    .line 576
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 574
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-boolean v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v0, :cond_ad

    .line 579
    :goto_aa
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 581
    :cond_ad
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 583
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v0}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    .line 584
    nop

    .line 586
    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "writer":Ljava/io/PrintStream;
    :goto_b6
    return-void

    .line 573
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "writer":Ljava/io/PrintStream;
    :catchall_b7
    move-exception v8

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 575
    invoke-virtual {v10}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    .line 576
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 574
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-boolean v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v0, :cond_d8

    .line 579
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 581
    :cond_d8
    invoke-virtual {v4}, Ljava/io/PrintStream;->close()V

    .line 583
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v0}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    .line 584
    throw v8
.end method

.method prepareLooper()V
    .registers 1

    .line 539
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 540
    return-void
.end method
