.class Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortBySimpleName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Class<",
        "+",
        "Ljunit/framework/TestCase;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$SortBySimpleName-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;)I"
        }
    .end annotation

    .line 166
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    .local p2, "class2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "result":I
    if-eqz v0, :cond_f

    .line 168
    return v0

    .line 170
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 161
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1
.end method
