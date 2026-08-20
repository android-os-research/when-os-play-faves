.class public final Lcom/samsung/android/core/pm/containerservice/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .line 14
    if-eqz p0, :cond_a

    .line 16
    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 20
    goto :goto_a

    .line 19
    :catch_6
    move-exception v0

    goto :goto_a

    .line 17
    :catch_8
    move-exception v0

    .line 18
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 22
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method
