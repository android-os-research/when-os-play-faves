.class public abstract Landroid/test/SingleLaunchActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "SingleLaunchActivityTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/InstrumentationTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sActivity:Landroid/app/Activity;

.field private static sActivityLaunchedFlag:Z

.field private static sTestCaseCounter:I


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    .line 41
    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    .line 54
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    .line 55
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected setUp()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    .line 70
    sget-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    if-nez v0, :cond_1d

    .line 72
    invoke-virtual {p0}, Landroid/test/SingleLaunchActivityTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 73
    iget-object v0, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/test/SingleLaunchActivityTestCase;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    .line 76
    :cond_1d
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    .line 82
    if-nez v0, :cond_d

    .line 83
    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 85
    :cond_d
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->tearDown()V

    .line 86
    return-void
.end method

.method public testActivityTestCaseSetUpProperly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    const-string v1, "activity should be launched successfully"

    invoke-static {v1, v0}, Landroid/test/SingleLaunchActivityTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
