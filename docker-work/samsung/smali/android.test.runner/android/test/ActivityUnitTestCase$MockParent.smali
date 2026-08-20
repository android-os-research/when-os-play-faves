.class Landroid/test/ActivityUnitTestCase$MockParent;
.super Landroid/app/Activity;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ActivityUnitTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockParent"
.end annotation


# instance fields
.field public mFinished:Z

.field public mFinishedActivityRequest:I

.field public mRequestedOrientation:I

.field public mStartedActivityIntent:Landroid/content/Intent;

.field public mStartedActivityRequest:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 279
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 283
    const/4 v1, -0x1

    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 284
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 285
    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ActivityUnitTestCase$MockParent-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 345
    iput p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    .line 346
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 3
    .param p1, "child"    # Landroid/app/Activity;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    .line 334
    return-void
.end method

.method public getRequestedOrientation()I
    .registers 2

    .line 300
    iget v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequestedOrientation(I)V
    .registers 2
    .param p1, "requestedOrientation"    # I

    .line 292
    iput p1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    .line 293
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 320
    iput-object p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    .line 321
    iput p3, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    .line 322
    return-void
.end method
