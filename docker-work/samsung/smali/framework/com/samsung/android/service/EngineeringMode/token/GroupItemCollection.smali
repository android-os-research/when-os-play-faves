.class public Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;
.super Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;
.source "GroupItemCollection.java"


# instance fields
.field private blacklist mGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/GroupItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "magic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/GroupItem;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p2, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/service/EngineeringMode/token/GroupItem;>;"
    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->setMagicString(Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist addAttrToGroupItem(III[B)V
    .registers 8
    .param p1, "groupIndex"    # I
    .param p2, "type"    # I
    .param p3, "len"    # I
    .param p4, "attribute"    # [B

    .line 31
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    .line 32
    .local v1, "item":Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 33
    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->pushAttribute(II[B)V

    .line 35
    .end local v1    # "item":Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    :cond_1b
    goto :goto_6

    .line 36
    :cond_1c
    return-void
.end method

.method public blacklist addGroupItemCollection(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "groupIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public blacklist getGroupItem(I)Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    .registers 3
    .param p1, "index"    # I

    .line 19
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    return-object v0
.end method

.method public blacklist getGroupItemByIndex(I)Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    .registers 5
    .param p1, "index"    # I

    .line 39
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    .line 40
    .local v1, "item":Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 41
    return-object v1

    .line 43
    .end local v1    # "item":Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    :cond_19
    goto :goto_6

    .line 44
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getItemsNum()I
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getMagicString()Ljava/lang/String;
    .registers 2

    .line 9
    invoke-super {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->getMagicString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setMagicString(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-super {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->setMagicString(Ljava/lang/String;)V

    return-void
.end method
