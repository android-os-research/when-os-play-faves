.class public Lcom/android/server/cocktailbar/utils/CocktailBarHistory;
.super Ljava/lang/Object;
.source "CocktailBarHistory.java"


# static fields
.field public static final MAX_LOGGING_HISTORY:I = 0x28

.field public static mInstance:Lcom/android/server/cocktailbar/utils/CocktailBarHistory;


# instance fields
.field public mCocktailBarManagerCommandHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPanelUpdateHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerWhitelistHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSemCocktailProviderBrHistory:Ljava/util/ArrayList;
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mProcessHistory:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mCocktailBarManagerCommandHistory:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mSemCocktailProviderBrHistory:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPanelUpdateHistory:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPowerWhitelistHistory:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;
    .registers 2

    const-class v0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mInstance:Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    if-eqz v1, :cond_8

    goto :goto_f

    :cond_8
    new-instance v1, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    invoke-direct {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;-><init>()V

    sput-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mInstance:Lcom/android/server/cocktailbar/utils/CocktailBarHistory;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public recordCocktailBarManagerCommand(Ljava/lang/String;)V
    .registers 5

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    :try_start_5
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_24
    const-string v1, ": "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 65
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mCocktailBarManagerCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_38
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mCocktailBarManagerCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_49

    .line 67
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mCocktailBarManagerCommandHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_38

    .line 69
    :cond_49
    monitor-exit p1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public recordPanelUpdateHistory(ILjava/lang/String;)V
    .registers 6

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    :try_start_5
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_24
    const-string v1, ": "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    iget-object p2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 103
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPanelUpdateHistory:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPanelUpdateHistory:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_5d

    .line 105
    iget-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPanelUpdateHistory:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    .line 111
    :cond_5d
    monitor-exit p2

    return-void

    :catchall_5f
    move-exception p0

    monitor-exit p2
    :try_end_61
    .catchall {:try_start_2f .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public recordPowerWhitelistHistory(ILjava/lang/String;)V
    .registers 6

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    :try_start_5
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_24
    const-string v1, ": "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-object p2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 126
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPowerWhitelistHistory:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPowerWhitelistHistory:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_5d

    .line 128
    iget-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPowerWhitelistHistory:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    .line 134
    :cond_5d
    monitor-exit p2

    return-void

    :catchall_5f
    move-exception p0

    monitor-exit p2
    :try_end_61
    .catchall {:try_start_2f .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public recordSemCocktailProviderBr(Ljava/lang/String;)V
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    :try_start_5
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_24
    const-string v1, ": "

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    iget-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 84
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mSemCocktailProviderBrHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_38
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mSemCocktailProviderBrHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_49

    .line 86
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mSemCocktailProviderBrHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_38

    .line 88
    :cond_49
    monitor-exit p1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public recordServiceProcess(Ljava/lang/String;)V
    .registers 5

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    :try_start_5
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_24
    const-string v1, ": "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 46
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mProcessHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_38
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mProcessHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_49

    .line 48
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mProcessHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_38

    .line 50
    :cond_49
    monitor-exit p1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    const-string v2, "-CocktailBar History\n"

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  [Process History] :\n"

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mProcessHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :cond_40
    const-string v2, "\n"

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  [CocktailBarManager Command History] :\n"

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mCocktailBarManagerCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_78
    const-string v2, "\n"

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  [SemCocktailProvider BR History] :\n"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mSemCocktailProviderBrHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_88
    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_88

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_88

    :cond_b0
    const-string v2, "\n"

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  [Panel update history] :\n"

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPanelUpdateHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Cocktail id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c4

    :cond_fc
    const-string v2, "\n"

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  [Power whitelist history] :\n"

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->mPowerWhitelistHistory:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_110
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_148

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Cocktail id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_110

    :cond_148
    const-string p0, "\n"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    monitor-exit v1
    :try_end_14e
    .catchall {:try_start_8 .. :try_end_14e} :catchall_153

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_153
    move-exception p0

    .line 175
    :try_start_154
    monitor-exit v1
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    throw p0
.end method
