.class public Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;
.super Ljunit/framework/TestCase;
.source "TestSuiteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestSuiteBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedToCreateTests"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 239
    const-string v0, "testSuiteConstructionFailed"

    invoke-direct {p0, v0}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 240
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;->exception:Ljava/lang/Exception;

    .line 241
    return-void
.end method


# virtual methods
.method public testSuiteConstructionFailed()V
    .registers 4

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;->exception:Ljava/lang/Exception;

    const-string v2, "Exception during suite construction"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
