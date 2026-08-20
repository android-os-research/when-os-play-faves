.class Landroid/test/suitebuilder/TestPredicates$HasAnnotation;
.super Ljava/lang/Object;
.source "TestPredicates.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestPredicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HasAnnotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate<",
        "Landroid/test/suitebuilder/TestMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/test/suitebuilder/TestPredicates$HasAnnotation;->annotationClass:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Landroid/test/suitebuilder/TestPredicates$HasAnnotation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/test/suitebuilder/TestPredicates$HasAnnotation;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/test/suitebuilder/TestMethod;)Z
    .registers 4
    .param p1, "testMethod"    # Landroid/test/suitebuilder/TestMethod;

    .line 55
    iget-object v0, p0, Landroid/test/suitebuilder/TestPredicates$HasAnnotation;->annotationClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/test/suitebuilder/TestMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_17

    .line 56
    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroid/test/suitebuilder/TestPredicates$HasAnnotation;->annotationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 55
    :goto_18
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    .line 45
    check-cast p1, Landroid/test/suitebuilder/TestMethod;

    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/TestPredicates$HasAnnotation;->apply(Landroid/test/suitebuilder/TestMethod;)Z

    move-result p1

    return p1
.end method
