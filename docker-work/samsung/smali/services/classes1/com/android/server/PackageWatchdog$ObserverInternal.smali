.class public Lcom/android/server/PackageWatchdog$ObserverInternal;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObserverInternal"
.end annotation


# instance fields
.field public final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mprunePackagesLocked(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->prunePackagesLocked(J)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 1165
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 1166
    invoke-virtual {p0, p2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    return-void
.end method

.method public static read(Landroid/util/TypedXmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;
    .registers 10

    .line 1294
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "observer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageWatchdog"

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "name"

    .line 1295
    invoke-interface {p0, v2, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string p0, "Unable to read observer name"

    .line 1297
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_23
    move-object v0, v2

    .line 1301
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 1304
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_60

    const-string/jumbo v5, "package"

    .line 1305
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_3e} :catch_6d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3e} :catch_6d

    if-eqz v5, :cond_2d

    .line 1307
    :try_start_40
    invoke-virtual {p1, p0}, Lcom/android/server/PackageWatchdog;->parseMonitoredPackage(Landroid/util/TypedXmlPullParser;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 1309
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_49} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_49} :catch_6d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_49} :catch_6d

    goto :goto_2d

    :catch_4a
    move-exception v5

    .line 1312
    :try_start_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping package for observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_5f} :catch_6d
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_5f} :catch_6d

    goto :goto_2d

    .line 1321
    :cond_60
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_67

    return-object v2

    .line 1324
    :cond_67
    new-instance p0, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-direct {p0, v0, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    :catch_6d
    move-exception p0

    .line 1318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read observer "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 1329
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1330
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1332
    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v2

    .line 1333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Failures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmFailureHistory(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/util/LongArrayQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitoring duration remaining: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Explicit health check duration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmHealthCheckDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Health check state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmHealthCheckState(Lcom/android/server/PackageWatchdog$MonitoredPackage;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mtoString(Lcom/android/server/PackageWatchdog$MonitoredPackage;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto/16 :goto_2b

    :cond_c8
    return-void
.end method

.method public getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1272
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    return-object p0
.end method

.method public getMonitoredPackages()Landroid/util/ArrayMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation

    .line 1258
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public onPackageFailureLocked(Ljava/lang/String;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1239
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 1240
    invoke-interface {v0, p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->mayObservePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1241
    invoke-static {}, Lcom/android/server/PackageWatchdog;->-$$Nest$sfgetsPackageWatchdog()Lcom/android/server/PackageWatchdog;

    move-result-object v0

    sget-wide v2, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->putMonitoredPackage(Lcom/android/server/PackageWatchdog$MonitoredPackage;)V

    .line 1244
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->onFailureLocked()Z

    move-result p0

    return p0

    :cond_2f
    return v1
.end method

.method public final prunePackagesLocked(J)Ljava/util/Set;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;"
        }
    .end annotation

    .line 1215
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1216
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1217
    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1218
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1219
    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v2

    .line 1220
    invoke-virtual {v1, p1, p2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->handleElapsedTimeLocked(J)I

    move-result v3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4a

    if-ne v3, v4, :cond_4a

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed health check"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageWatchdog"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1226
    :cond_4a
    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isExpiredLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1227
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_54
    return-object v0
.end method

.method public putMonitoredPackage(Lcom/android/server/PackageWatchdog$MonitoredPackage;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1282
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updatePackagesLocked(Ljava/util/List;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1192
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1193
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1194
    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1196
    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$fgetmDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckDuration(J)V

    goto :goto_22

    .line 1198
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->putMonitoredPackage(Lcom/android/server/PackageWatchdog$MonitoredPackage;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public writeLocked(Landroid/util/TypedXmlSerializer;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string/jumbo v0, "observer"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1176
    :try_start_5
    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    .line 1177
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v3, v1

    .line 1178
    :goto_11
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 1179
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 1180
    invoke-virtual {v4, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->writeLocked(Landroid/util/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1182
    :cond_27
    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2a} :catch_2c

    const/4 p0, 0x1

    return p0

    :catch_2c
    move-exception p0

    const-string p1, "PackageWatchdog"

    const-string v0, "Cannot save observer"

    .line 1185
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
