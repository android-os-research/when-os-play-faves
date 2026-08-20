.class public final Lcom/android/server/am/ProcessProviderRecord;
.super Ljava/lang/Object;
.source "ProcessProviderRecord.java"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mConProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mLastProviderTime:J

.field public final mPubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 103
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 9

    .line 155
    iget-wide v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastProviderTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    iget-wide v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 158
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 160
    :cond_19
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const-string p4, "  - "

    const/4 v0, 0x0

    if-lez p3, :cond_5a

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Published Providers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    move v1, v0

    :goto_33
    if-ge v1, p3, :cond_5a

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 167
    :cond_5a
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_8a

    .line 168
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Connected Providers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_70
    if-ge v0, p3, :cond_8a

    .line 170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_8a
    return-void
.end method

.method public ensureProviderCapacity(I)V
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    return-void
.end method

.method public getLastProviderTime()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    return-wide v0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderConnection;

    return-object p0
.end method

.method public hasProvider(Ljava/lang/String;)Z
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 3

    .line 74
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public numberOfProviderConnections()I
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public numberOfProviders()I
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public onCleanupApplicationRecordLocked(Z)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_47

    .line 114
    iget-object v4, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderRecord;

    .line 115
    iget-object v5, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_1b

    goto :goto_44

    .line 119
    :cond_1b
    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v5

    if-nez v5, :cond_28

    if-nez p1, :cond_26

    goto :goto_28

    :cond_26
    move v5, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v5, v1

    .line 120
    :goto_29
    iget-object v6, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    iget-object v7, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 121
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    move-result v6

    if-nez v5, :cond_3e

    if-eqz v6, :cond_3e

    .line 122
    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v5

    if-eqz v5, :cond_3e

    move v3, v1

    :cond_3e
    const/4 v5, 0x0

    .line 128
    iput-object v5, v4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 129
    invoke-virtual {v4, v5}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    :goto_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 131
    :cond_47
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 134
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v2}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 135
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessList;->noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    move v3, v1

    .line 140
    :cond_62
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a3

    .line 141
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_71
    if-ltz p1, :cond_9e

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 143
    iget-object v1, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget v7, v0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_71

    .line 148
    :cond_9e
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_a3
    return v3
.end method

.method public removeProvider(Ljava/lang/String;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setLastProviderTime(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    return-void
.end method
