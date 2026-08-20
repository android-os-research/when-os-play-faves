.class Lorg/junit/experimental/results/ResultMatchers$3;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ResultMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/results/ResultMatchers;->hasSingleFailureMatching(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Lorg/junit/experimental/results/PrintableResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$matcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lorg/junit/experimental/results/ResultMatchers$3;->val$matcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 3
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 77
    const-string v0, "has failure with exception matching "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 78
    iget-object v0, p0, Lorg/junit/experimental/results/ResultMatchers$3;->val$matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 79
    return-void
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2

    .line 70
    check-cast p1, Lorg/junit/experimental/results/PrintableResult;

    invoke-virtual {p0, p1}, Lorg/junit/experimental/results/ResultMatchers$3;->matchesSafely(Lorg/junit/experimental/results/PrintableResult;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Lorg/junit/experimental/results/PrintableResult;)Z
    .registers 6
    .param p1, "item"    # Lorg/junit/experimental/results/PrintableResult;

    .line 73
    invoke-virtual {p1}, Lorg/junit/experimental/results/PrintableResult;->failureCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lorg/junit/experimental/results/ResultMatchers$3;->val$matcher:Lorg/hamcrest/Matcher;

    invoke-virtual {p1}, Lorg/junit/experimental/results/PrintableResult;->failures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runner/notification/Failure;

    invoke-virtual {v3}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v1, v2

    :cond_1f
    return v1
.end method
