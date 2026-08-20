.class Landroid/test/InstrumentationTestCase$2;
.super Ljava/lang/Object;
.source "InstrumentationTestCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/InstrumentationTestCase;->runTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/InstrumentationTestCase;

.field final synthetic val$exceptions:[Ljava/lang/Throwable;

.field final synthetic val$repetitive:Z

.field final synthetic val$testMethod:Ljava/lang/reflect/Method;

.field final synthetic val$tolerance:I


# direct methods
.method constructor <init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "this$0"    # Landroid/test/InstrumentationTestCase;

    .line 192
    iput-object p1, p0, Landroid/test/InstrumentationTestCase$2;->this$0:Landroid/test/InstrumentationTestCase;

    iput-object p2, p0, Landroid/test/InstrumentationTestCase$2;->val$testMethod:Ljava/lang/reflect/Method;

    iput p3, p0, Landroid/test/InstrumentationTestCase$2;->val$tolerance:I

    iput-boolean p4, p0, Landroid/test/InstrumentationTestCase$2;->val$repetitive:Z

    iput-object p5, p0, Landroid/test/InstrumentationTestCase$2;->val$exceptions:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/test/InstrumentationTestCase$2;->this$0:Landroid/test/InstrumentationTestCase;

    iget-object v1, p0, Landroid/test/InstrumentationTestCase$2;->val$testMethod:Ljava/lang/reflect/Method;

    iget v2, p0, Landroid/test/InstrumentationTestCase$2;->val$tolerance:I

    iget-boolean v3, p0, Landroid/test/InstrumentationTestCase$2;->val$repetitive:Z

    invoke-static {v0, v1, v2, v3}, Landroid/test/InstrumentationTestCase;->-$$Nest$mrunMethod(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 198
    goto :goto_12

    .line 196
    :catchall_c
    move-exception v0

    .line 197
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/test/InstrumentationTestCase$2;->val$exceptions:[Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 199
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_12
    return-void
.end method
