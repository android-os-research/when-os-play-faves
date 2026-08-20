.class public Lcom/android/ims/internal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static blacklist DEBUG:Z

.field private static blacklist ERROR:Z

.field private static blacklist INFO:Z

.field private static blacklist TAG:Ljava/lang/String;

.field private static blacklist VERBOSE:Z

.field private static blacklist WARN:Z

.field private static blacklist mRcsTestMode:Z


# instance fields
.field private blacklist mClassName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->VERBOSE:Z

    .line 44
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->DEBUG:Z

    .line 45
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->INFO:Z

    .line 46
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->WARN:Z

    .line 47
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->ERROR:Z

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->mRcsTestMode:Z

    .line 57
    const-string v0, "rcs"

    sput-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "mClassName"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 71
    sput-object p1, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    .line 74
    :cond_b
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 75
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 76
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    goto :goto_1f

    .line 78
    :cond_1d
    iput-object p2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    .line 80
    :goto_1f
    return-void
.end method

.method public static declared-synchronized blacklist getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;
    .registers 4
    .param p0, "classname"    # Ljava/lang/String;

    const-class v0, Lcom/android/ims/internal/Logger;

    monitor-enter v0

    .line 235
    :try_start_3
    new-instance v1, Lcom/android/ims/internal/Logger;

    sget-object v2, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/android/ims/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-object v1

    .line 235
    .end local p0    # "classname":Ljava/lang/String;
    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ims/internal/Logger;
    .registers 4
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "classname"    # Ljava/lang/String;

    const-class v0, Lcom/android/ims/internal/Logger;

    monitor-enter v0

    .line 225
    :try_start_3
    new-instance v1, Lcom/android/ims/internal/Logger;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    .line 225
    .end local p0    # "tagName":Ljava/lang/String;
    .end local p1    # "classname":Ljava/lang/String;
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist hidePhoneNumberPii(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/android/ims/internal/Logger;->mRcsTestMode:Z

    if-nez v0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    goto :goto_35

    .line 205
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "...*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_35
    :goto_35
    return-object p0
.end method

.method private blacklist isActivated()Z
    .registers 2

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isLoggable(I)Z
    .registers 2
    .param p0, "level"    # I

    .line 215
    sget-boolean v0, Lcom/android/ims/internal/Logger;->mRcsTestMode:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist setRcsTestMode(Z)V
    .registers 2
    .param p0, "test"    # Z

    .line 83
    sput-boolean p0, Lcom/android/ims/internal/Logger;->mRcsTestMode:Z

    .line 85
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->DEBUG:Z

    .line 86
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->INFO:Z

    .line 87
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->VERBOSE:Z

    .line 88
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->WARN:Z

    .line 89
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/internal/Logger;->ERROR:Z

    .line 90
    return-void
.end method


# virtual methods
.method public blacklist debug(Ljava/lang/String;)V
    .registers 5
    .param p1, "trace"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/android/ims/internal/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/ims/internal/Logger;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 119
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2e
    return-void
.end method

.method public blacklist debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 130
    invoke-direct {p0}, Lcom/android/ims/internal/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/ims/internal/Logger;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 131
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_2e
    return-void
.end method

.method public blacklist error(Ljava/lang/String;)V
    .registers 5
    .param p1, "trace"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lcom/android/ims/internal/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/ims/internal/Logger;->ERROR:Z

    if-eqz v0, :cond_2e

    .line 164
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2e
    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 175
    invoke-direct {p0}, Lcom/android/ims/internal/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/ims/internal/Logger;->ERROR:Z

    if-eqz v0, :cond_2e

    .line 176
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_2e
    return-void
.end method

.method public blacklist info(Ljava/lang/String;)V
    .registers 5
    .param p1, "trace"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/android/ims/internal/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/ims/internal/Logger;->INFO:Z

    if-eqz v0, :cond_2e

    .line 142
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2e
    return-void
.end method

.method public blacklist print(Ljava/lang/String;)V
    .registers 5
    .param p1, "trace"    # Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public blacklist print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 197
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return-void
.end method

.method public blacklist verbose(Ljava/lang/String;)V
    .registers 5
    .param p1, "trace"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/android/ims/internal/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/ims/internal/Logger;->VERBOSE:Z

    if-eqz v0, :cond_2e

    .line 108
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2e
    return-void
.end method

.method public blacklist warn(Ljava/lang/String;)V
    .registers 5
    .param p1, "trace"    # Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/android/ims/internal/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/ims/internal/Logger;->WARN:Z

    if-eqz v0, :cond_2e

    .line 153
    sget-object v0, Lcom/android/ims/internal/Logger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/internal/Logger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2e
    return-void
.end method
