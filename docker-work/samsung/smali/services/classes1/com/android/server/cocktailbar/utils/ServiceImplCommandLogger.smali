.class public Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;
.super Ljava/lang/Object;
.source "ServiceImplCommandLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    }
.end annotation


# static fields
.field public static final MAX_LOGGING_CLIENT:I = 0xa

.field public static final MAX_LOGGING_HISTORY:I = 0x28


# instance fields
.field public mHostDumpInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 51
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    if-nez v1, :cond_18

    .line 54
    new-instance v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo-IA;)V

    .line 55
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_18
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_63

    .line 59
    :try_start_1d
    new-instance p1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_31
    .catchall {:try_start_1d .. :try_end_30} :catchall_63

    goto :goto_3c

    :catch_31
    move-exception p1

    .line 62
    :try_start_32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_3c
    const-string p1, ": "

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 66
    iget-object p1, v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_50
    iget-object p0, v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p1, 0x28

    if-le p0, p1, :cond_61

    .line 68
    iget-object p0, v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_50

    .line 70
    :cond_61
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_32 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public recordHostEnd(Ljava/lang/String;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    if-nez v0, :cond_15

    .line 76
    new-instance v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo-IA;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_15
    :try_start_15
    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string p1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mEndTime:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_28

    goto :goto_36

    :catch_28
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mEndTime:Ljava/lang/String;

    :goto_36
    return-void
.end method

.method public recordHostStart(Ljava/lang/String;)V
    .registers 5

    .line 37
    new-instance v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo-IA;)V

    .line 39
    :try_start_6
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mStratTime:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_27

    :catch_19
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mStratTime:Ljava/lang/String;

    .line 45
    :goto_27
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 46
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v1

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    if-eqz v0, :cond_7a

    .line 92
    monitor-enter v0

    .line 93
    :try_start_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    iget-object p0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    const-string v4, "HostDump: "

    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mStratTime:Ljava/lang/String;

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mEndTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\ncmd="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v2, v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "    "

    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_57

    .line 104
    :cond_71
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_77
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_77

    throw p0

    :cond_7a
    const-string p0, ""

    return-object p0
.end method
