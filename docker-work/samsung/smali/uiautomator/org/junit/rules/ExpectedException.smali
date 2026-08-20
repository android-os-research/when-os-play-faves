.class public Lorg/junit/rules/ExpectedException;
.super Ljava/lang/Object;
.source "ExpectedException.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;
    }
.end annotation


# instance fields
.field private final matcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

.field private missingExceptionMessage:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mfailDueToMissingException(Lorg/junit/rules/ExpectedException;)V
    .registers 1

    invoke-direct {p0}, Lorg/junit/rules/ExpectedException;->failDueToMissingException()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleException(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/junit/rules/ExpectedException;->handleException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-direct {v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;-><init>()V

    iput-object v0, p0, Lorg/junit/rules/ExpectedException;->matcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    .line 128
    const-string v0, "Expected test to throw %s"

    iput-object v0, p0, Lorg/junit/rules/ExpectedException;->missingExceptionMessage:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private failDueToMissingException()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lorg/junit/rules/ExpectedException;->missingExceptionMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lorg/junit/rules/ExpectedException;->isAnyExceptionExpected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 271
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->matcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->build()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/junit/Assert;->assertThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 275
    return-void

    .line 273
    :cond_10
    throw p1
.end method

.method private missingExceptionMessage()Ljava/lang/String;
    .registers 5

    .line 282
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->matcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->build()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/StringDescription;->toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "expectation":Ljava/lang/String;
    iget-object v1, p0, Lorg/junit/rules/ExpectedException;->missingExceptionMessage:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static none()Lorg/junit/rules/ExpectedException;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    new-instance v0, Lorg/junit/rules/ExpectedException;

    invoke-direct {v0}, Lorg/junit/rules/ExpectedException;-><init>()V

    return-object v0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .registers 4
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 170
    new-instance v0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;

    invoke-direct {v0, p0, p1}, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;-><init>(Lorg/junit/rules/ExpectedException;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method

.method public expect(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lorg/hamcrest/CoreMatchers;->instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    .line 198
    return-void
.end method

.method public expect(Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 184
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->matcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v0, p1}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->add(Lorg/hamcrest/Matcher;)V

    .line 185
    return-void
.end method

.method public expectCause(Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 237
    .local p1, "expectedCause":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    invoke-static {p1}, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->hasCause(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    .line 238
    return-void
.end method

.method public expectMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "substring"    # Ljava/lang/String;

    .line 210
    invoke-static {p1}, Lorg/hamcrest/CoreMatchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expectMessage(Lorg/hamcrest/Matcher;)V

    .line 211
    return-void
.end method

.method public expectMessage(Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->hasMessage(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    .line 224
    return-void
.end method

.method public handleAssertionErrors()Lorg/junit/rules/ExpectedException;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    return-object p0
.end method

.method public handleAssumptionViolatedExceptions()Lorg/junit/rules/ExpectedException;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    return-object p0
.end method

.method public final isAnyExceptionExpected()Z
    .registers 2

    .line 245
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->matcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->expectsThrowable()Z

    move-result v0

    return v0
.end method

.method public reportMissingExceptionWithMessage(Ljava/lang/String;)Lorg/junit/rules/ExpectedException;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lorg/junit/rules/ExpectedException;->missingExceptionMessage:Ljava/lang/String;

    .line 165
    return-object p0
.end method
