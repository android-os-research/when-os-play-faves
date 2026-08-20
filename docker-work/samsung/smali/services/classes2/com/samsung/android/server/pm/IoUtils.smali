.class public final Lcom/samsung/android/server/pm/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 13
    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    .line 15
    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method
