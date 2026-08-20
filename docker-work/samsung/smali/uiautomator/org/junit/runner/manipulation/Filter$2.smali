.class Lorg/junit/runner/manipulation/Filter$2;
.super Lorg/junit/runner/manipulation/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runner/manipulation/Filter;->matchMethodDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$desiredDescription:Lorg/junit/runner/Description;


# direct methods
.method constructor <init>(Lorg/junit/runner/Description;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .registers 4

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    invoke-virtual {v1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Method %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 51
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    iget-object v0, p0, Lorg/junit/runner/manipulation/Filter$2;->val$desiredDescription:Lorg/junit/runner/Description;

    invoke-virtual {v0, p1}, Lorg/junit/runner/Description;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 56
    :cond_d
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    .line 57
    .local v1, "each":Lorg/junit/runner/Description;
    invoke-virtual {p0, v1}, Lorg/junit/runner/manipulation/Filter$2;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    .end local v1    # "each":Lorg/junit/runner/Description;
    :cond_29
    goto :goto_15

    .line 61
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method
