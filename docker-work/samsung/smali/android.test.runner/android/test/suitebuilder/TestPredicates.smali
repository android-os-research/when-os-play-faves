.class public Landroid/test/suitebuilder/TestPredicates;
.super Ljava/lang/Object;
.source "TestPredicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestPredicates$NotPredicate;,
        Landroid/test/suitebuilder/TestPredicates$HasAnnotation;
    }
.end annotation


# static fields
.field static final REJECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field static final REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field static final SELECT_SMOKE:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Landroid/test/suitebuilder/AssignableFrom;

    const-class v1, Landroid/test/InstrumentationTestCase;

    invoke-direct {v0, v1}, Landroid/test/suitebuilder/AssignableFrom;-><init>(Ljava/lang/Class;)V

    .line 31
    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->REJECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    .line 33
    const-class v0, Landroid/test/suitebuilder/annotation/Smoke;

    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMOKE:Lcom/android/internal/util/Predicate;

    .line 35
    const-class v0, Landroid/test/suitebuilder/annotation/Suppress;

    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    invoke-static {v0}, Landroid/test/suitebuilder/TestPredicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAnnotation(Ljava/lang/Class;)Lcom/android/internal/util/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/android/internal/util/Predicate<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .line 42
    .local p0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Landroid/test/suitebuilder/TestPredicates$HasAnnotation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/test/suitebuilder/TestPredicates$HasAnnotation;-><init>(Ljava/lang/Class;Landroid/test/suitebuilder/TestPredicates$HasAnnotation-IA;)V

    return-object v0
.end method

.method public static not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/Predicate<",
            "-TT;>;)",
            "Lcom/android/internal/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 65
    .local p0, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<-TT;>;"
    new-instance v0, Landroid/test/suitebuilder/TestPredicates$NotPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/test/suitebuilder/TestPredicates$NotPredicate;-><init>(Lcom/android/internal/util/Predicate;Landroid/test/suitebuilder/TestPredicates$NotPredicate-IA;)V

    return-object v0
.end method
