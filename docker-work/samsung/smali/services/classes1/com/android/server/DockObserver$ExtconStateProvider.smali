.class public final Lcom/android/server/DockObserver$ExtconStateProvider;
.super Ljava/lang/Object;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtconStateProvider"
.end annotation


# instance fields
.field public final mState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    return-void
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;
    .registers 7

    const-string v0, "DockObserver"

    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 173
    :try_start_6
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_2b

    const/4 v4, 0x0

    .line 174
    :try_start_c
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 175
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 177
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2b

    return-object v1

    :catchall_21
    move-exception v1

    .line 173
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v2

    :try_start_27
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v1
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    const-string v1, ""

    .line 181
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    new-instance p0, Lcom/android/server/DockObserver$ExtconStateProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 178
    :catch_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No state file found at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p0, Lcom/android/server/DockObserver$ExtconStateProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;
    .registers 9

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\n"

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 160
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_3e

    aget-object v4, p0, v3

    const-string v5, "="

    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 162
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_25

    .line 163
    aget-object v4, v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 165
    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DockObserver"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 168
    :cond_3e
    new-instance p0, Lcom/android/server/DockObserver$ExtconStateProvider;

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
