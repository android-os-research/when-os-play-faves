.class public Lorg/apache/commons/lang3/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/Functions$FailableSupplier;,
        Lorg/apache/commons/lang3/Functions$FailableRunnable;,
        Lorg/apache/commons/lang3/Functions$FailablePredicate;,
        Lorg/apache/commons/lang3/Functions$FailableFunction;,
        Lorg/apache/commons/lang3/Functions$FailableConsumer;,
        Lorg/apache/commons/lang3/Functions$FailableCallable;,
        Lorg/apache/commons/lang3/Functions$FailableBiPredicate;,
        Lorg/apache/commons/lang3/Functions$FailableBiFunction;,
        Lorg/apache/commons/lang3/Functions$FailableBiConsumer;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static synthetic $r8$lambda$28Pb_SeKQ6bTfxeDZAa6fHKd6f0(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->lambda$accept$1(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BlXRpk5pAOB4JLqUwOfjvlhac-A(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->lambda$asCallable$7(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G3ibqmkeXnBLMHtLiC-QSshnZbw(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->lambda$accept$0(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XKu-vXFPAyhtuiEe4zw4jV8UoG0(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->lambda$test$14(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_TZPQ5khvHVQVMn-_PzP9o7UjoY(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->lambda$asRunnable$11(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDaoMAw0Qz5Amiv94hABt3Sgzr4(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->lambda$asConsumer$8(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bIT4wmj8Qqdkg3JbKu1gmaRWeL8(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->lambda$apply$2(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eB_nc-BX1wP4bbKP6ZUzTFuPMew(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->lambda$test$13(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ncls8eHiom-m55zvKlY0xoConkE(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->lambda$asFunction$9(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o5Civ2k1J-_hcuVL0aNgVuZGxME(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->lambda$asBiConsumer$4(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$owRoinx5uA5orC5ykl9_O_ZR8N0(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->lambda$asPredicate$10(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qE8iCs2DsY7xrP1SRZfqWNTBs9s(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->lambda$apply$3(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qLj0VIf3W0cou-CeKOUOg1kIUQg(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->lambda$asBiFunction$5(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rsug3FRM599opUUyjIcyG6nLTxA(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->lambda$asSupplier$12(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xbFYriD-WnR51pXdSCu93aDBVl0(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->lambda$asBiPredicate$6(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<",
            "TO1;TO2;TT;>;TO1;TO2;)V"
        }
    .end annotation

    .line 294
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "TO;TT;>;TO;)V"
        }
    .end annotation

    .line 306
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method

.method public static apply(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiFunction<",
            "TO1;TO2;TO;TT;>;TO1;TO2;)TO;"
        }
    .end annotation

    .line 323
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableFunction<",
            "TI;TO;TT;>;TI;)TO;"
        }
    .end annotation

    .line 337
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static asBiConsumer(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;)Ljava/util/function/BiConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<",
            "TO1;TO2;*>;)",
            "Ljava/util/function/BiConsumer<",
            "TO1;TO2;>;"
        }
    .end annotation

    .line 350
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;)V

    return-object v0
.end method

.method public static asBiFunction(Lorg/apache/commons/lang3/Functions$FailableBiFunction;)Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiFunction<",
            "TO1;TO2;TO;*>;)",
            "Ljava/util/function/BiFunction<",
            "TO1;TO2;TO;>;"
        }
    .end annotation

    .line 364
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiFunction;)V

    return-object v0
.end method

.method public static asBiPredicate(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;)Ljava/util/function/BiPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<",
            "TO1;TO2;*>;)",
            "Ljava/util/function/BiPredicate<",
            "TO1;TO2;>;"
        }
    .end annotation

    .line 377
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda16;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;)V

    return-object v0
.end method

.method public static asCallable(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableCallable<",
            "TO;*>;)",
            "Ljava/util/concurrent/Callable<",
            "TO;>;"
        }
    .end annotation

    .line 389
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/lang3/Functions$FailableCallable;)V

    return-object v0
.end method

.method public static asConsumer(Lorg/apache/commons/lang3/Functions$FailableConsumer;)Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "TI;*>;)",
            "Ljava/util/function/Consumer<",
            "TI;>;"
        }
    .end annotation

    .line 401
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;)V

    return-object v0
.end method

.method public static asFunction(Lorg/apache/commons/lang3/Functions$FailableFunction;)Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableFunction<",
            "TI;TO;*>;)",
            "Ljava/util/function/Function<",
            "TI;TO;>;"
        }
    .end annotation

    .line 414
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;-><init>(Lorg/apache/commons/lang3/Functions$FailableFunction;)V

    return-object v0
.end method

.method public static asPredicate(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TI;*>;)",
            "Ljava/util/function/Predicate<",
            "TI;>;"
        }
    .end annotation

    .line 426
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda12;-><init>(Lorg/apache/commons/lang3/Functions$FailablePredicate;)V

    return-object v0
.end method

.method public static asRunnable(Lorg/apache/commons/lang3/Functions$FailableRunnable;)Ljava/lang/Runnable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "*>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 437
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-object v0
.end method

.method public static asSupplier(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableSupplier<",
            "TO;*>;)",
            "Ljava/util/function/Supplier<",
            "TO;>;"
        }
    .end annotation

    .line 449
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/lang3/Functions$FailableSupplier;)V

    return-object v0
.end method

.method public static call(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableCallable<",
            "TO;TT;>;)TO;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda11;-><init>(Lorg/apache/commons/lang3/Functions$FailableCallable;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableSupplier<",
            "TO;TT;>;)TO;"
        }
    .end annotation

    .line 475
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableSupplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    .line 477
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBooleanSupplier<",
            "TT;>;)Z"
        }
    .end annotation

    .line 490
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableBooleanSupplier;->getAsBoolean()Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    move-exception p0

    .line 492
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static synthetic lambda$accept$0(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 294
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$accept$1(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 306
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$apply$2(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 323
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$apply$3(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 337
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asBiConsumer$4(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 350
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->accept(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$asBiFunction$5(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 364
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->apply(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asBiPredicate$6(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 377
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->test(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$asCallable$7(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->call(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asConsumer$8(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .registers 2

    .line 401
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->accept(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$asFunction$9(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 414
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->apply(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asPredicate$10(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .registers 2

    .line 426
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->test(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$asRunnable$11(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .registers 1

    .line 437
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method

.method private static synthetic lambda$asSupplier$12(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;
    .registers 1

    .line 449
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$test$13(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 593
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$test$14(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 606
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    const-string v0, "throwable"

    .line 523
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 524
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_22

    .line 526
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1f

    .line 528
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_19

    .line 529
    new-instance v0, Ljava/io/UncheckedIOException;

    check-cast p0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 531
    :cond_19
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 527
    :cond_1f
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 525
    :cond_22
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public static run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 543
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    .line 545
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static stream(Ljava/util/Collection;)Lorg/apache/commons/lang3/Streams$FailableStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TO;>;)",
            "Lorg/apache/commons/lang3/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 562
    new-instance v0, Lorg/apache/commons/lang3/Streams$FailableStream;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lorg/apache/commons/lang3/Streams$FailableStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TO;>;)",
            "Lorg/apache/commons/lang3/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 577
    new-instance v0, Lorg/apache/commons/lang3/Streams$FailableStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static test(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<",
            "TO1;TO2;TT;>;TO1;TO2;)Z"
        }
    .end annotation

    .line 593
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda13;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z

    move-result p0

    return p0
.end method

.method public static test(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TO;TT;>;TO;)Z"
        }
    .end annotation

    .line 606
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda14;-><init>(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z

    move-result p0

    return p0
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;Lorg/apache/commons/lang3/Functions$FailableConsumer;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-nez p1, :cond_7

    .line 635
    new-instance p1, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda3;-><init>()V

    :cond_7
    const/4 v0, 0x0

    if-eqz p2, :cond_18

    .line 640
    array-length v1, p2

    move v2, v0

    :goto_c
    if-ge v2, v1, :cond_18

    aget-object v3, p2, v2

    const-string v4, "runnable"

    .line 641
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v1, 0x0

    .line 646
    :try_start_19
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_1e

    :catchall_1d
    move-exception v1

    :goto_1e
    if-eqz p2, :cond_30

    .line 651
    array-length p0, p2

    :goto_21
    if-ge v0, p0, :cond_30

    aget-object v2, p2, v0

    .line 653
    :try_start_25
    invoke-interface {v2}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    if-nez v1, :cond_2d

    move-object v1, v2

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_30
    if-eqz v1, :cond_3c

    .line 663
    :try_start_32
    invoke-interface {p1, v1}, Lorg/apache/commons/lang3/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3c

    :catchall_36
    move-exception p0

    .line 665
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    .line 691
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/Functions;->tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;Lorg/apache/commons/lang3/Functions$FailableConsumer;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method
