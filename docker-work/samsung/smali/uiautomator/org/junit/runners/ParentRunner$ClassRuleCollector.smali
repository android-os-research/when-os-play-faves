.class Lorg/junit/runners/ParentRunner$ClassRuleCollector;
.super Ljava/lang/Object;
.source "ParentRunner.java"

# interfaces
.implements Lorg/junit/runners/model/MemberValueConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/ParentRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassRuleCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/junit/runners/model/MemberValueConsumer<",
        "Lorg/junit/rules/TestRule;",
        ">;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/RuleContainer$RuleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runners/ParentRunner$ClassRuleCollector-IA;)V
    .registers 2

    invoke-direct {p0}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Object;)V
    .registers 3

    .line 564
    check-cast p2, Lorg/junit/rules/TestRule;

    invoke-virtual {p0, p1, p2}, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->accept(Lorg/junit/runners/model/FrameworkMember;Lorg/junit/rules/TestRule;)V

    return-void
.end method

.method public accept(Lorg/junit/runners/model/FrameworkMember;Lorg/junit/rules/TestRule;)V
    .registers 8
    .param p2, "value"    # Lorg/junit/rules/TestRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Lorg/junit/rules/TestRule;",
            ")V"
        }
    .end annotation

    .line 568
    .local p1, "member":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<*>;"
    const-class v0, Lorg/junit/ClassRule;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/ClassRule;

    .line 569
    .local v0, "rule":Lorg/junit/ClassRule;
    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    new-instance v2, Lorg/junit/runners/RuleContainer$RuleEntry;

    .line 570
    if-eqz v0, :cond_17

    invoke-interface {v0}, Lorg/junit/ClassRule;->order()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    const/4 v4, 0x1

    invoke-direct {v2, p2, v4, v3}, Lorg/junit/runners/RuleContainer$RuleEntry;-><init>(Ljava/lang/Object;ILjava/lang/Integer;)V

    .line 569
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method public getOrderedRules()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    sget-object v1, Lorg/junit/runners/RuleContainer;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/junit/rules/TestRule;>;"
    iget-object v1, p0, Lorg/junit/runners/ParentRunner$ClassRuleCollector;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/RuleContainer$RuleEntry;

    .line 577
    .local v2, "entry":Lorg/junit/runners/RuleContainer$RuleEntry;
    iget-object v3, v2, Lorg/junit/runners/RuleContainer$RuleEntry;->rule:Ljava/lang/Object;

    check-cast v3, Lorg/junit/rules/TestRule;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v2    # "entry":Lorg/junit/runners/RuleContainer$RuleEntry;
    goto :goto_18

    .line 579
    :cond_2c
    return-object v0
.end method
