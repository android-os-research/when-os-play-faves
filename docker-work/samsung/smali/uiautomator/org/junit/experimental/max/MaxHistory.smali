.class public Lorg/junit/experimental/max/MaxHistory;
.super Ljava/lang/Object;
.source "MaxHistory.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/max/MaxHistory$TestComparator;,
        Lorg/junit/experimental/max/MaxHistory$RememberingListener;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fDurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fFailureTimestamps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fHistoryStore:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$msave(Lorg/junit/experimental/max/MaxHistory;)V
    .registers 1

    invoke-direct {p0}, Lorg/junit/experimental/max/MaxHistory;->save()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "storedResults"    # Ljava/io/File;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fFailureTimestamps:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory;->fHistoryStore:Ljava/io/File;

    .line 75
    return-void
.end method

.method public static forFolder(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 36
    :try_start_6
    invoke-static {p0}, Lorg/junit/experimental/max/MaxHistory;->readHistory(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;

    move-result-object v0
    :try_end_a
    .catch Lorg/junit/experimental/max/CouldNotReadCoreException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 37
    :catch_b
    move-exception v0

    .line 38
    .local v0, "e":Lorg/junit/experimental/max/CouldNotReadCoreException;
    invoke-virtual {v0}, Lorg/junit/experimental/max/CouldNotReadCoreException;->printStackTrace()V

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 42
    .end local v0    # "e":Lorg/junit/experimental/max/CouldNotReadCoreException;
    :cond_12
    new-instance v0, Lorg/junit/experimental/max/MaxHistory;

    invoke-direct {v0, p0}, Lorg/junit/experimental/max/MaxHistory;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static readHistory(Ljava/io/File;)Lorg/junit/experimental/max/MaxHistory;
    .registers 4
    .param p0, "storedResults"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/max/CouldNotReadCoreException;
        }
    .end annotation

    .line 48
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_23

    .line 50
    .local v0, "file":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1d

    .line 52
    .local v1, "stream":Ljava/io/ObjectInputStream;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/experimental/max/MaxHistory;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_17

    .line 54
    :try_start_10
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1d

    .line 57
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_23

    .line 52
    return-object v2

    .line 54
    :catchall_17
    move-exception v2

    :try_start_18
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 55
    nop

    .end local v0    # "file":Ljava/io/FileInputStream;
    .end local p0    # "storedResults":Ljava/io/File;
    throw v2
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1d

    .line 57
    .end local v1    # "stream":Ljava/io/ObjectInputStream;
    .restart local v0    # "file":Ljava/io/FileInputStream;
    .restart local p0    # "storedResults":Ljava/io/File;
    :catchall_1d
    move-exception v1

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 58
    nop

    .end local p0    # "storedResults":Ljava/io/File;
    throw v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_23

    .line 59
    .end local v0    # "file":Ljava/io/FileInputStream;
    .restart local p0    # "storedResults":Ljava/io/File;
    :catch_23
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/junit/experimental/max/CouldNotReadCoreException;

    invoke-direct {v1, v0}, Lorg/junit/experimental/max/CouldNotReadCoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private save()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "stream":Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/junit/experimental/max/MaxHistory;->fHistoryStore:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 81
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 83
    nop

    .line 84
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 87
    return-void

    .line 83
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_1c

    .line 84
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 86
    :cond_1c
    throw v1
.end method


# virtual methods
.method getFailureTimestamp(Lorg/junit/runner/Description;)Ljava/lang/Long;
    .registers 4
    .param p1, "key"    # Lorg/junit/runner/Description;

    .line 90
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fFailureTimestamps:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method getTestDuration(Lorg/junit/runner/Description;)Ljava/lang/Long;
    .registers 4
    .param p1, "key"    # Lorg/junit/runner/Description;

    .line 102
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method isNewTest(Lorg/junit/runner/Description;)Z
    .registers 4
    .param p1, "key"    # Lorg/junit/runner/Description;

    .line 98
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public listener()Lorg/junit/runner/notification/RunListener;
    .registers 3

    .line 168
    new-instance v0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/experimental/max/MaxHistory$RememberingListener;-><init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory$RememberingListener-IA;)V

    return-object v0
.end method

.method putTestDuration(Lorg/junit/runner/Description;J)V
    .registers 7
    .param p1, "description"    # Lorg/junit/runner/Description;
    .param p2, "duration"    # J

    .line 106
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fDurations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method putTestFailureTimestamp(Lorg/junit/runner/Description;J)V
    .registers 7
    .param p1, "key"    # Lorg/junit/runner/Description;
    .param p2, "end"    # J

    .line 94
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory;->fFailureTimestamps:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public testComparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Lorg/junit/experimental/max/MaxHistory$TestComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/experimental/max/MaxHistory$TestComparator;-><init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory$TestComparator-IA;)V

    return-object v0
.end method
