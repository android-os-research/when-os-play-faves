.class public abstract Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
.super Ljava/lang/Object;
.source "CoreStateVolatileObserver.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateObserver;


# instance fields
.field public final mBooleanDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field public final mFloatDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLongDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mStringDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mVolatileStatesRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mVolatileStatesToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IyICbpkDJjS7puyx0mqhsSrllNI(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;ILjava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->lambda$setState$0(ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mStringDefaultKeyMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mFloatDefaultKeyMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mLongDefaultKeyMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mBooleanDefaultKeyMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$setState$0(ILjava/lang/Runnable;)V
    .registers 3

    .line 193
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;I)Z"
        }
    .end annotation

    .line 61
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_137

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 64
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_56

    .line 66
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mStringDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    if-eqz v2, :cond_34

    goto :goto_35

    :cond_34
    move-object v2, v4

    .line 68
    :goto_35
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-eqz v6, :cond_45

    .line 70
    invoke-virtual {v6, p3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_45
    if-eqz v4, :cond_a

    .line 74
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 75
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    move v1, v5

    goto :goto_a

    .line 78
    :cond_56
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_8c

    .line 80
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_69

    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6a

    :cond_69
    move v2, v0

    .line 82
    :goto_6a
    iget-object v4, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-eqz v4, :cond_82

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 88
    :cond_82
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v2, v4, :cond_a

    .line 89
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_54

    .line 92
    :cond_8c
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_c5

    .line 94
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mFloatDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    const/4 v4, 0x0

    if-eqz v2, :cond_a0

    .line 95
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_a1

    :cond_a0
    move v2, v4

    .line 96
    :goto_a1
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-eqz v6, :cond_b9

    .line 98
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, p3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 102
    :cond_b9
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_a

    .line 103
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_54

    .line 106
    :cond_c5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_100

    .line 108
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mLongDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_da

    .line 109
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_db

    :cond_da
    move-wide v8, v6

    .line 110
    :goto_db
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_f3

    .line 112
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, p3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 116
    :cond_f3
    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_a

    .line 117
    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_54

    .line 120
    :cond_100
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_a

    .line 122
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mBooleanDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_113

    .line 123
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_114

    :cond_113
    move v2, v0

    .line 124
    :goto_114
    iget-object v4, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-eqz v4, :cond_12b

    .line 126
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, p3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_12c

    :cond_12b
    move v4, v0

    .line 130
    :goto_12c
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v4, v2, :cond_a

    .line 131
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_54

    :cond_137
    return v1
.end method

.method public populateState(Landroid/os/Bundle;I)I
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_b

    const/4 p0, 0x2

    goto :goto_c

    :cond_b
    move p0, p1

    :goto_c
    or-int/2addr p0, p1

    return p0
.end method

.method public removeStatesForUser(I)V
    .registers 3

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    .line 148
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 141
    invoke-interface {p0}, Lcom/samsung/android/server/corestate/CoreStateObserver;->registerObservingItems()V

    return-void
.end method

.method public setState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .registers 9

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_56

    .line 157
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 159
    :cond_19
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_28

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 161
    :cond_28
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_37

    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 163
    :cond_37
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_46

    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 165
    :cond_46
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_55

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_55
    return-void

    .line 172
    :cond_56
    :goto_56
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 173
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 174
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_af

    .line 175
    :cond_68
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_7a

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 177
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_af

    .line 178
    :cond_7a
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8c

    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 180
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_af

    .line 181
    :cond_8c
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_9e

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 183
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_af

    .line 184
    :cond_9e
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_af

    .line 185
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 186
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_af
    :goto_af
    if-eqz p4, :cond_c3

    if-eqz p5, :cond_b9

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    goto :goto_c3

    .line 193
    :cond_b9
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;ILjava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c3
    :goto_c3
    return-void
.end method
