.class Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;
.super Lorg/junit/runners/model/Statement;
.source "ExpectedException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/ExpectedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectedExceptionStatement"
.end annotation


# instance fields
.field private final next:Lorg/junit/runners/model/Statement;

.field final synthetic this$0:Lorg/junit/rules/ExpectedException;


# direct methods
.method public constructor <init>(Lorg/junit/rules/ExpectedException;Lorg/junit/runners/model/Statement;)V
    .registers 3
    .param p2, "base"    # Lorg/junit/runners/model/Statement;

    .line 251
    iput-object p1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 252
    iput-object p2, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->next:Lorg/junit/runners/model/Statement;

    .line 253
    return-void
.end method


# virtual methods
.method public evaluate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 258
    :try_start_0
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_14

    .line 262
    nop

    .line 263
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-virtual {v0}, Lorg/junit/rules/ExpectedException;->isAnyExceptionExpected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 264
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-static {v0}, Lorg/junit/rules/ExpectedException;->-$$Nest$mfailDueToMissingException(Lorg/junit/rules/ExpectedException;)V

    .line 266
    :cond_13
    return-void

    .line 259
    :catchall_14
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;->this$0:Lorg/junit/rules/ExpectedException;

    invoke-static {v1, v0}, Lorg/junit/rules/ExpectedException;->-$$Nest$mhandleException(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;)V

    .line 261
    return-void
.end method
