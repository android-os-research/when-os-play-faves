.class public Lcom/android/server/am/ActivityManagerService$ItemMatcher;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemMatcher"
.end annotation


# instance fields
.field public all:Z

.field public components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12634
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    return-void
.end method


# virtual methods
.method public build([Ljava/lang/String;I)I
    .registers 5

    .line 12667
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_16

    .line 12668
    aget-object v0, p1, p2

    const-string v1, "--"

    .line 12669
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 12672
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_16
    return p2
.end method

.method public build(Ljava/lang/String;)V
    .registers 5

    .line 12638
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 12640
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-nez p1, :cond_12

    .line 12641
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    .line 12643
    :cond_12
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12644
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    goto :goto_49

    :cond_1a
    const/16 v0, 0x10

    .line 12649
    :try_start_1c
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 12650
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-nez v2, :cond_2b

    .line 12651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    .line 12653
    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12654
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_49

    .line 12657
    :catch_37
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-nez v0, :cond_42

    .line 12658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    .line 12660
    :cond_42
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12661
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    :goto_49
    return-void
.end method

.method public match(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .registers 8

    .line 12678
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 12681
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    move v0, v2

    .line 12682
    :goto_c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 12683
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    return v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 12688
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    move v0, v2

    .line 12689
    :goto_2b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_49

    .line 12690
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_46

    return v1

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 12695
    :cond_49
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-eqz p1, :cond_6c

    .line 12696
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    move p2, v2

    .line 12697
    :goto_52
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6c

    .line 12698
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    return v1

    :cond_69
    add-int/lit8 p2, p2, 0x1

    goto :goto_52

    :cond_6c
    return v2
.end method
