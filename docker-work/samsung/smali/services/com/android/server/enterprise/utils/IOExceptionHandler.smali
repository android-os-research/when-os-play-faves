.class public Lcom/android/server/enterprise/utils/IOExceptionHandler;
.super Ljava/lang/Object;
.source "IOExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;,
        Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor<",
            "TS;>;>(TT;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->open()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_4b

    .line 146
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->process(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_22
    .catchall {:try_start_9 .. :try_end_c} :catchall_20

    .line 152
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v2

    .line 154
    :try_start_11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_4b

    .line 158
    :goto_14
    :try_start_14
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v2

    .line 160
    :try_start_19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_1c
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_4b

    goto :goto_4f

    :catchall_20
    move-exception v2

    goto :goto_37

    :catch_22
    move-exception v2

    .line 148
    :try_start_23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    .line 152
    :try_start_26
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    .line 154
    :try_start_2b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_4b

    .line 158
    :goto_2e
    :try_start_2e
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_1c

    :catch_32
    move-exception v2

    .line 160
    :try_start_33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_4b

    goto :goto_1c

    .line 152
    :goto_37
    :try_start_37
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v3

    .line 154
    :try_start_3c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4b

    .line 158
    :goto_3f
    :try_start_3f
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v3

    .line 160
    :try_start_44
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_47
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    .line 164
    throw v2
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p0

    .line 166
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_56

    return-void

    .line 170
    :cond_56
    new-instance p0, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;-><init>(Ljava/util/ArrayList;)V

    throw p0
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor<",
            "TS;>;>(TT;Z)V"
        }
    .end annotation

    .line 187
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_3
    .catch Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_a

    :catch_4
    move-exception p0

    if-eqz p1, :cond_b

    .line 190
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_a
    return-void

    .line 192
    :cond_b
    throw p0
.end method
