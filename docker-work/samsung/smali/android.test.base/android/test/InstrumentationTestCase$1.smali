.class Landroid/test/InstrumentationTestCase$1;
.super Ljava/lang/Object;
.source "InstrumentationTestCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/InstrumentationTestCase;->runTestOnUiThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/InstrumentationTestCase;

.field final synthetic val$exceptions:[Ljava/lang/Throwable;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/test/InstrumentationTestCase;

    .line 141
    iput-object p1, p0, Landroid/test/InstrumentationTestCase$1;->this$0:Landroid/test/InstrumentationTestCase;

    iput-object p2, p0, Landroid/test/InstrumentationTestCase$1;->val$r:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/test/InstrumentationTestCase$1;->val$exceptions:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/test/InstrumentationTestCase$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 147
    goto :goto_c

    .line 145
    :catchall_6
    move-exception v0

    .line 146
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/test/InstrumentationTestCase$1;->val$exceptions:[Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 148
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_c
    return-void
.end method
