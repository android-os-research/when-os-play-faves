.class Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;
.super Lorg/junit/internal/builders/SuiteMethodBuilder;
.source "ClassRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/requests/ClassRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSuiteMethodBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/internal/requests/ClassRequest;


# direct methods
.method private constructor <init>(Lorg/junit/internal/requests/ClassRequest;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    invoke-direct {p0}, Lorg/junit/internal/builders/SuiteMethodBuilder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/requests/ClassRequest;Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;-><init>(Lorg/junit/internal/requests/ClassRequest;)V

    return-void
.end method


# virtual methods
.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    invoke-static {v0}, Lorg/junit/internal/requests/ClassRequest;->-$$Nest$fgetfTestClass(Lorg/junit/internal/requests/ClassRequest;)Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lorg/junit/internal/requests/ClassRequest$CustomSuiteMethodBuilder;->this$0:Lorg/junit/internal/requests/ClassRequest;

    invoke-static {v0}, Lorg/junit/internal/requests/ClassRequest;->-$$Nest$fgetcanUseSuiteMethod(Lorg/junit/internal/requests/ClassRequest;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_12
    invoke-super {p0, p1}, Lorg/junit/internal/builders/SuiteMethodBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    return-object v0
.end method
