.class Lorg/junit/rules/ExternalResource$1;
.super Lorg/junit/runners/model/Statement;
.source "ExternalResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/ExternalResource;->statement(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/rules/ExternalResource;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;


# direct methods
.method constructor <init>(Lorg/junit/rules/ExternalResource;Lorg/junit/runners/model/Statement;)V
    .registers 3
    .param p1, "this$0"    # Lorg/junit/rules/ExternalResource;

    .line 47
    iput-object p1, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    iput-object p2, p0, Lorg/junit/rules/ExternalResource$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    invoke-virtual {v0}, Lorg/junit/rules/ExternalResource;->before()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_a
    iget-object v1, p0, Lorg/junit/rules/ExternalResource$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1a

    .line 59
    :try_start_f
    iget-object v1, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    invoke-virtual {v1}, Lorg/junit/rules/ExternalResource;->after()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    .line 62
    :goto_14
    goto :goto_24

    .line 60
    :catchall_15
    move-exception v1

    .line 61
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_24

    .line 55
    :catchall_1a
    move-exception v1

    .line 56
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_1b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    .line 59
    .end local v1    # "t":Ljava/lang/Throwable;
    :try_start_1e
    iget-object v1, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    invoke-virtual {v1}, Lorg/junit/rules/ExternalResource;->after()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_15

    goto :goto_14

    .line 64
    :goto_24
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 65
    return-void

    .line 58
    :catchall_28
    move-exception v1

    .line 59
    :try_start_29
    iget-object v2, p0, Lorg/junit/rules/ExternalResource$1;->this$0:Lorg/junit/rules/ExternalResource;

    invoke-virtual {v2}, Lorg/junit/rules/ExternalResource;->after()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    .line 62
    goto :goto_33

    .line 60
    :catchall_2f
    move-exception v2

    .line 61
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_33
    throw v1
.end method
